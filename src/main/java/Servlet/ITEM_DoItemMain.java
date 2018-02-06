package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB.DeleteFileUtil;
import service.ItemsService;

public class ITEM_DoItemMain extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ITEM_DoItemMain() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                    String uid=request.getParameter("aid");//获取更新id，
                    String did=request.getParameter("did");//删除id
                    String eid=request.getParameter("eid");//提出人信息
                    
                   
                    if(uid!=null) {
                    	int id=Integer.valueOf(uid);
                    	ItemsService itemsservice=new ItemsService();
                    	request.setAttribute("oneitemlist", itemsservice.selectoneitem(id));
                    	request.getRequestDispatcher("/WEB-INF/back/NPImessageupdate.jsp").forward(request, response);
                    }
                    if(eid!=null) {
                    	int id=Integer.valueOf(eid);
                    	ItemsService itemsservice=new ItemsService();
                    	request.setAttribute("exhitemlist", itemsservice.selectoneitem(id));
                    	request.getRequestDispatcher("/WEB-INF/back/NpiMsgExhupdate.jsp").forward(request, response);
                    }
                    if(did!=null) {
                    	int id= Integer.valueOf(did);
                    	ItemsService itemsservice=new ItemsService();
                    	 String filenamea=itemsservice.selectonefilename(id);
                    	 String filenameb=itemsservice.selectonefilenameb(id);
                    	 if(filenamea!=null||filenameb!=null) {
                    		 String filepath=request.getSession().getServletContext().getRealPath("/")+"images";
                    	System.out.println(filepath);
                    		 StringBuilder filea = new StringBuilder(filepath);
                    	 StringBuilder fileb = new StringBuilder(filepath);
                    	   filea.append(filenamea);
                    	   fileb.append(filenameb);
                    	   String file1=filea.toString();
                    	   String file2=filea.toString();
                    	   System.out.println(file2);
                    	  DeleteFileUtil.deleteFile(file1);
                    	  DeleteFileUtil.deleteFile(file2);
                    	 }
                    	 itemsservice.deleteoneitem(id);
	                    	//  System.out.println();
	                    	// 删除一个目录
							// String dir = "D:/home/web/upload/upload/files";
							//  DeleteFileUtil.deleteDirectory(dir);
	                    	//  System.out.println();
	                    	//删除文件
                    	 request.getRequestDispatcher("/ITEM_ToItemsMain").forward(request, response);
                    }
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
