package Servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pojo.AllHead;
import service.HeadService;

public class HEAD_ToHeadMain extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public HEAD_ToHeadMain() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				             	String cusname=null;
				             	String proname=null;
				             	String stage0=null;
				             	String stage=null;
					  cusname=request.getParameter("zcusname");
					 proname=request.getParameter("zproname");
					 stage0=request.getParameter("zprovince");
					 stage=request.getParameter("zstage");
					AllHead allhead=new AllHead();
					allhead.setCusname(cusname);
					allhead.setProname(proname);
					allhead.setStage0(stage0);
					allhead.setStage(stage);
					List<AllHead> allheadlist=new ArrayList<AllHead>();
					allheadlist.add(allhead);
				  HeadService headservice=new HeadService();
		    request.setAttribute("mainheadlist",headservice.mainheaditems(cusname,proname,stage0,stage));
            request.getRequestDispatcher("/WEB-INF/back/Npiheadmain.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
