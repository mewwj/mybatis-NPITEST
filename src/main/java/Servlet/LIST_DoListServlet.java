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
import service.ListService;

public class LIST_DoListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LIST_DoListServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   List<AllHead> allheadlist=new ArrayList<AllHead>();  
		      String cusname=request.getParameter("cusname");
		      String proname=request.getParameter("proname");
		      String modeltype=request.getParameter("modeltype");
		      String stage0=request.getParameter("province");
		      String stage=request.getParameter("stage");
		      AllHead allhead=new AllHead();
		      allhead.setCusname(cusname);
		      allhead.setProname(proname);
		      allhead.setModeltype(modeltype);
		      allhead.setStage0(stage0);
		      allhead.setStage(stage);
		      allheadlist.add(allhead);
		      System.out.println(stage0);
		      System.out.println(stage);
		    HeadService headservice=new HeadService();
		    ListService listservice=new ListService();
		    //ͳ�Ƹ����������Ŀ
		    //��ͷ��Ϣͳ�ƣ�չʾlist
		    List<AllHead> headlist0=new ArrayList<AllHead>();
		     headlist0=headservice.selectheaditems(cusname,proname,modeltype,stage0,stage);
		     System.out.println(headlist0.size());
		    if(headlist0.size()==1) {
			request.setAttribute("headlist", headservice.selectheaditems(cusname,proname,modeltype,stage0,stage));
		    }else {
		    	request.setAttribute("messageheadlist", "��Ϣ��Ψһ������������!!");
		    }
			//��Ʒ�����Ŀ
		    int countdesignaspectlist=0;
		    countdesignaspectlist=listservice.countdesignaspect(cusname,proname,modeltype,stage0,stage);
		    	request.setAttribute("countdesignaspectlist", countdesignaspectlist+15);
			//�������
			int softwaredesignaspectlist=0;
			softwaredesignaspectlist=listservice.softwaredesignaspect(cusname,proname,modeltype,stage0,stage);
			request.setAttribute("softwaredesignaspectlist", softwaredesignaspectlist+2);
			//���շ���
			int technologicalaspects=0;
			technologicalaspects=listservice.technologicalaspects(cusname,proname,modeltype,stage0,stage);
			request.setAttribute("technologicalaspects",technologicalaspects+2 );
			//��ҵ����
			int operationlaspects=0;
			operationlaspects=listservice.operationaspects(cusname,proname,modeltype,stage0,stage);
			request.setAttribute("operationlaspects" , operationlaspects+2);
			//���Ϸ���
			int incomingmaterialslaspects=0;
			incomingmaterialslaspects=listservice.incomingmaterialslaspects(cusname,proname,modeltype,stage0,stage);
			request.setAttribute("incomingmaterialslaspects", incomingmaterialslaspects+2);
			//�ͻ�����
			int customeraspects=0;
			customeraspects=listservice.customeraspects(cusname,proname,modeltype,stage0,stage);
			request.setAttribute("customeraspects", customeraspects+2);
			//��������
			int otheraspects=0;
			otheraspects=listservice.otheraspects(cusname,proname,modeltype,stage0,stage);
			request.setAttribute("otheraspects", otheraspects+2);
			//��Ʒ��棬�������֣�soundbar
			request.setAttribute("designinstsoundbarlist", listservice.designinstsoundbar(cusname,proname,modeltype,stage0,stage));
			//��Ʒ��棬�������֣�woofer
			request.setAttribute("designinstwooferlist", listservice.designinstwoofer(cusname,proname,modeltype,stage0,stage));
			//��Ʒ��棬���Ӳ��֣�soundbar
			request.setAttribute("designelecsoundbarlist", listservice.designelecsoundbar(cusname,proname,modeltype,stage0,stage));
			//��Ʒ��棬���Ӳ��֣�woofer
			request.setAttribute("designelecwooferlist", listservice.designelecwoofer(cusname,proname,modeltype,stage0,stage));
			//��Ʒ��棬���Ȳ��֣�soundbar
			request.setAttribute("designhornsoundbarlist", listservice.designhornsoundbar(cusname,proname,modeltype,stage0,stage));
			//��Ʒ��棬���Ȳ��֣�woofer
			request.setAttribute("designhornwooferlist", listservice.designhornwoofer(cusname,proname,modeltype,stage0,stage));
			//��Ʒ��棬��װ���֣�soundbar
			request.setAttribute("designpacksoundbarlist", listservice.designpacksoundbar(cusname,proname,modeltype,stage0,stage));
			//��Ʒ��棬��װ���֣�woofer
			request.setAttribute("designpackwooferlist", listservice.designpackwooferr(cusname,proname,modeltype,stage0,stage));
			//��Ʒ��棬�������֣�soundbar
			request.setAttribute("designothsoundbarlist", listservice.designothsoundbar(cusname,proname,modeltype,stage0,stage));
			//��Ʒ��棬�������֣�woofer
			request.setAttribute("designothwooferlist", listservice.designothwoofer(cusname,proname,modeltype,stage0,stage));
			//������棬soundbar
			request.setAttribute("softwaresoundbarlist", listservice.softwaresoundbar(cusname,proname,modeltype,stage0,stage));
			//������棬woofer
			request.setAttribute("softwarewooferlist", listservice.softwarewoofer(cusname,proname,modeltype,stage0,stage));
			//���շ��棬soundbar
			request.setAttribute("techsoundbarlist", listservice.techsoundbar(cusname,proname,modeltype,stage0,stage));
			//���շ��棬woofer
			request.setAttribute("techwooferlist", listservice.techwoofer(cusname,proname,modeltype,stage0,stage));
			//��ҵ���棬soundbar
			request.setAttribute("operasoundbarlist", listservice.operasoundbar(cusname,proname,modeltype,stage0,stage));
			//��ҵ���棬woofer
			request.setAttribute("operawooferlist", listservice.operawoofer(cusname,proname,modeltype,stage0,stage));
			//���Ϸ��棬soundbar
			request.setAttribute("incomsoundbarlist", listservice.incomsoundbar(cusname,proname,modeltype,stage0,stage));
			//���Ϸ��棬woofer
			request.setAttribute("incomwooferlist", listservice.incomwoofer(cusname,proname,modeltype,stage0,stage));
			//�ͻ����棬soundbar
			request.setAttribute("cusmsoundbarlist", listservice.cusmsoundbar(cusname,proname,modeltype,stage0,stage));
			//�ͻ����棬woofer
			request.setAttribute("cusmwooferlist", listservice.cusmwooferlist(cusname,proname,modeltype,stage0,stage));
			//�������棬soundbar
			request.setAttribute("othsoundbarlist", listservice.othsoundbar(cusname,proname,modeltype,stage0,stage));
			//�������棬woofer
			request.setAttribute("othwooferlist", listservice.othwoofer(cusname,proname,modeltype,stage0,stage));
			
		request.getRequestDispatcher("/LIST_ToListServlet").forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
