package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.ItemsService;

public class ITEM_DoItemCommInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ITEM_DoItemCommInsert() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				request.setCharacterEncoding("utf-8");
           String pmcomm=request.getParameter("pmcomm");	
           String aid=request.getParameter("id");   //message的id，根据id 插入PM备注
           String zid=request.getParameter("zid");
           System.out.println("pmcomm"+pmcomm);
           if(pmcomm!=null){
        	   int id=Integer.valueOf(aid);
        	   ItemsService itemsservice=new ItemsService();
        	   itemsservice.insertitemcomm(pmcomm,id);
              request.getRequestDispatcher("ITEM_ToItemsMain?zid="+zid).forward(request, response);
           }
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
