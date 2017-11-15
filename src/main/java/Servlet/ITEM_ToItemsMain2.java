package Servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pojo.AllItems;
import service.ItemsService;

public class ITEM_ToItemsMain2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ITEM_ToItemsMain2() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   String cusname=request.getParameter("cusname");
		   String proname=request.getParameter("proname");
		   String stage0=request.getParameter("province");
		   String stage=request.getParameter("stage");
		   List<AllItems> lista=new ArrayList<AllItems>();
		   AllItems aallitems=new AllItems();
		   aallitems.setCusname(cusname);
		   aallitems.setProname(proname);
		   aallitems.setStage0(stage0);
		   aallitems.setStage(stage);
		   lista.add(aallitems);
	       ItemsService itemsservice=new ItemsService();
	     request.setAttribute("allmessageslist",itemsservice.selectallmsg(cusname,proname,stage0,stage));
	    request.getRequestDispatcher("WEB-INF/back/NpiMsgMain.jsp").forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
