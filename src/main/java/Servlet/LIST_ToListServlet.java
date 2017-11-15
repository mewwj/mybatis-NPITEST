package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * ȥ������չʾ����
 * @author wenjiewang
 *
 */
public class LIST_ToListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LIST_ToListServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    	request.setAttribute("countdesignaspectlist", 15);
		//�������
		request.setAttribute("softwaredesignaspectlist", 2);
		//���շ���
		request.setAttribute("technologicalaspects",2 );
		//��ҵ����
		request.setAttribute("operationlaspects" , 2);
		//���Ϸ���
		request.setAttribute("incomingmaterialslaspects", 2);
		//�ͻ�����
		request.setAttribute("customeraspects", 2);
		//��������
		request.setAttribute("otheraspects", 2);
		request.getRequestDispatcher("WEB-INF/front/HeadList.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
