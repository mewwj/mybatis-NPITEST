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

public class HEAD_DoHeadUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public HEAD_DoHeadUpdate() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		        int id=Integer.valueOf(request.getParameter("id"));
				String stage0=request.getParameter("stage0");
				String stage=request.getParameter("stage");
				String cusname=request.getParameter("cusname");
				String proname=request.getParameter("proname");
				String modeltype=request.getParameter("modeltype");
				String trydate=request.getParameter("trydate");
				String trytime=request.getParameter("trytime");
				String team=request.getParameter("team");
				String trialsite=request.getParameter("trialsite");
				Integer number=Integer.valueOf(request.getParameter("number"));
				Integer goodnumber=Integer.valueOf(request.getParameter("goodnumber"));
				String goodrate=request.getParameter("goodrate");
				AllHead allhead=new AllHead();
				allhead.setId(id);
				allhead.setStage0(stage0);
				allhead.setStage(stage);
				allhead.setCusname(cusname);
				allhead.setProname(proname);
				allhead.setModeltype(modeltype);
				allhead.setTrydate(trydate);
				allhead.setTrytime(trytime);
				allhead.setTeam(team);
				allhead.setTrialsite(trialsite);
				allhead.setNumber(number);
				allhead.setGoodnumber(goodnumber);
				allhead.setGoodrate(goodrate);
				List<AllHead> updatelist= new ArrayList<AllHead>();
				updatelist.add(allhead);
				HeadService headservice= new HeadService();
				   headservice.updateheaditem(updatelist);
 	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
