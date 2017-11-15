package Servlet;
/*
 * ��ͷ��Ϣ��ɾ����������ת
 */
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.HeadService;

public class HEAD_DoHeadMain extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public HEAD_DoHeadMain() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		  //��ȡɾ��id
		String did1=request.getParameter("did");
		  //��ȡ�޸�id
		String uid1=request.getParameter("aid");
		String iid1=request.getParameter("iid");//��ȡ���id
		HeadService headservice=new HeadService();
		  //���didΪ�գ���ת������ҳ��
		if (did1 != null) {
			int did=Integer.valueOf(did1);
			headservice.deletehead(did);
			request.getRequestDispatcher("/HEAD_ToHeadMainDelete").forward(request, response);
		 }
		if (uid1 != null ) {
			 //����uidΪ�գ�ִ��ɾ��������ɾ��һ�����ݣ�Ȼ����ת��չʾ����
			 int uid=Integer.valueOf(uid1);
			 request.setAttribute("updateheadlist",headservice.updatehead(uid));
			 request.getRequestDispatcher("/WEB-INF/back/Npiheadupdate.jsp").forward(request, response);
		 }
		if (iid1 != null ) {
			 //����uidΪ�գ�ִ��ɾ��������ɾ��һ�����ݣ�Ȼ����ת��չʾ����
			 int iid=Integer.valueOf(iid1);
			 request.setAttribute("insertheadlist",headservice.updatehead(iid));
			 request.getRequestDispatcher("/WEB-INF/back/NpiMisInsert.jsp").forward(request, response);
		 }
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
