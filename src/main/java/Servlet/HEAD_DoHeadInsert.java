package Servlet;
/**
 /* 表头信息的插入servlet
 */
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pojo.AllHead;
import service.HeadService;

public class HEAD_DoHeadInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public HEAD_DoHeadInsert() {
        super();
    }
      //添加专案信息
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				try {
				
				String stage0=request.getParameter("province");
				String stage=request.getParameter("stage");
				String cusname=request.getParameter("cusname");
				String proname=request.getParameter("proname");
				String modeltype=request.getParameter("modeltype");
				String trystage=request.getParameter("stage1");
				String trydate=request.getParameter("trydate");
				String trytime=request.getParameter("trytime");
				String team=request.getParameter("team");
				String trialsite=request.getParameter("trialsite");
				Integer number=Integer.valueOf(request.getParameter("number"));
				Integer goodnumber=Integer.valueOf(request.getParameter("goodnumber"));
				    DecimalFormat df = new DecimalFormat("#.0000"); 
				Double a=Double.valueOf(df.format((float)goodnumber/number));
				String goodrate=a*100+"%";
				AllHead allhead=new AllHead();
				allhead.setStage0(stage0);
				allhead.setStage(stage);
				allhead.setCusname(cusname);
				allhead.setProname(proname);
				allhead.setModeltype(modeltype);
				allhead.setTrystage(trystage);
				allhead.setTrydate(trydate);
				allhead.setTrytime(trytime);
				allhead.setTeam(team);
				allhead.setTrialsite(trialsite);
				allhead.setNumber(number);
				allhead.setGoodnumber(goodnumber);
				allhead.setGoodrate(goodrate);
				allhead.setTrystage(trystage);
				List<AllHead> headlist=new ArrayList<AllHead>();
				headlist.add(allhead);
				HeadService headservice=new HeadService();
				headservice.insertheaditems(headlist);
				} finally {
					// TODO: handle finally clause
					request.getRequestDispatcher("/HEAD_ToHeadMain").forward(request, response);	
				}
				
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
