package Servlet;
/*
 * 表头信息的删除与新增跳转
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
		  //获取删除id
		String did1=request.getParameter("did");
		  //获取修改id
		String uid1=request.getParameter("aid");
		String iid1=request.getParameter("iid");//获取添加id
		HeadService headservice=new HeadService();
		  //如果did为空，跳转到新增页面
		if (did1 != null) {
			int did=Integer.valueOf(did1);
			headservice.deletehead(did);
			request.getRequestDispatcher("/HEAD_ToHeadMainDelete").forward(request, response);
		 }
		if (uid1 != null ) {
			 //若果uid为空，执行删除动作，删除一条数据，然后跳转到展示界面
			 int uid=Integer.valueOf(uid1);
			 request.setAttribute("updateheadlist",headservice.updatehead(uid));
			 request.getRequestDispatcher("/WEB-INF/back/Npiheadupdate.jsp").forward(request, response);
		 }
		if (iid1 != null ) {
			 //若果uid为空，执行删除动作，删除一条数据，然后跳转到展示界面
			 int iid=Integer.valueOf(iid1);
			 request.setAttribute("insertheadlist",headservice.updatehead(iid));
			 request.getRequestDispatcher("/WEB-INF/back/NpiMisInsert.jsp").forward(request, response);
		 }
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
