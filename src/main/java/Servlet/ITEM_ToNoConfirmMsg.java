package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pojo.AllHead;
import service.ItemsService;

public class ITEM_ToNoConfirmMsg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ITEM_ToNoConfirmMsg() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
				    String cusname=request.getParameter("cusname");
					String proname=request.getParameter("proname");
					String stage0=request.getParameter("province");
					String stage=request.getParameter("stage");
					AllHead allhead=new AllHead();
					allhead.setCusname(cusname);
					allhead.setProname(proname);
					allhead.setStage0(stage0);
					allhead.setStage(stage);
					if(cusname!=null||proname!=null||stage0!=null||stage!=null) {
					ItemsService  itemservice =new ItemsService();
					request.setAttribute("exhibitor","效果确认");
					request.setAttribute("noconfirmmsg",itemservice.selectnoconfirmmsg(cusname,proname,stage0,stage));  
					request.getRequestDispatcher("/WEB-INF/back/NoConfirmmeg.jsp").forward(request, response);
					}else {
					request.getRequestDispatcher("/WEB-INF/back/NoConfirmmeg.jsp").forward(request, response);
	}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
