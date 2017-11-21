package Servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB.DeleteFileUtil;
import service.ItemsService;

public class ITEM_DoItemMain2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ITEM_DoItemMain2() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String uid=request.getParameter("aid");
         String did=request.getParameter("did");
         String[] deleteid=request.getParameterValues("checkbox"); 
         try {
         if(deleteid.length>0) {
        	  List<Integer> dellist =new ArrayList<Integer>();
        	  for (String a : deleteid) {
				   int b=Integer.valueOf(a);
				   dellist.add(b);
			  }
        	  System.out.println(dellist.size());
        	  ItemsService itemsservice=new ItemsService();
          	 itemsservice.deletebatchitems(dellist);
          	request.getRequestDispatcher("/ITEM_ToItemsMain2").forward(request, response);
         }else {
        	 request.getRequestDispatcher("/ITEM_ToItemsMain2").forward(request, response);
         }
         } catch (Exception e) {
        	 request.getRequestDispatcher("/ITEM_ToItemsMain2").forward(request, response);
 		}
         
         
         if(uid!=null) {
         	int id=Integer.valueOf(uid);
         	ItemsService itemsservice=new ItemsService();
         	request.setAttribute("oneitemlist", itemsservice.selectoneitem(id));
         	request.getRequestDispatcher("WEB-INF/back/NPImessageupdate.jsp").forward(request, response);
         }
         if(did!=null) {
         	int id= Integer.valueOf(did);
         	ItemsService itemsservice=new ItemsService();
         	 String filenamea=itemsservice.selectonefilename(id);
         	 String filenameb=itemsservice.selectonefilenameb(id);
         	 if(filenamea!=null||filenameb!=null) {
         	 StringBuilder filea = new StringBuilder("D:/workspace/workspace/npi.test/WebContent/images/");
         	 StringBuilder fileb = new StringBuilder("D:/workspace/workspace/npi.test/WebContent/images/");
         	   filea.append(filenamea);
         	   fileb.append(filenameb);
         	   String file1=filea.toString();
         	   String file2=filea.toString();
         	   System.out.println(file2);
         	  DeleteFileUtil.deleteFile(file1);
         	  DeleteFileUtil.deleteFile(file2);
         	 }
         	 itemsservice.deleteoneitem(id);
         	 request.getRequestDispatcher("/ITEM_ToItemsMain2").forward(request, response);
         }
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
