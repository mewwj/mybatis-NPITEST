package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.ItemsService;

public class ITEM_DoItemComm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ITEM_DoItemComm() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String cid=request.getParameter("cid");
			String zid=request.getParameter("zid");
			request.setAttribute("zid", zid);
			 if(cid!=null) {
             	int id=Integer.valueOf(cid);
             	ItemsService itemsservice=new ItemsService();
             	request.setAttribute("oneitemlist", itemsservice.selectoneitem(id));
             	request.getRequestDispatcher("/WEB-INF/back/NpiMsgCom.jsp").forward(request, response);
             }
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
