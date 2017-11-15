package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * 去往所有展示界面
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
		//软件方面
		request.setAttribute("softwaredesignaspectlist", 2);
		//工艺方面
		request.setAttribute("technologicalaspects",2 );
		//作业方面
		request.setAttribute("operationlaspects" , 2);
		//来料方面
		request.setAttribute("incomingmaterialslaspects", 2);
		//客户方面
		request.setAttribute("customeraspects", 2);
		//其他方面
		request.setAttribute("otheraspects", 2);
		request.getRequestDispatcher("WEB-INF/front/HeadList.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
