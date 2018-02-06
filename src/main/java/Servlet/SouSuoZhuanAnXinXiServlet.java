package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.ItemsService;

public class SouSuoZhuanAnXinXiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SouSuoZhuanAnXinXiServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         String stage0=request.getParameter("province");
         String stage=request.getParameter("stage");
         ItemsService itemsservice=new ItemsService();
		  //根据阶段筛选信息
         try {
         if(stage!=null||stage0!=null){
					        	 //根据用户ID，决定是否显示效果确认；
					    request.setAttribute("allmessageslist",itemsservice.selectallmessages2(stage,stage0));
						request.setAttribute("allmessagescusname",itemsservice.selectallmessages2(stage,stage0).get(0).getCusname()); 
						request.setAttribute("allmessagesproname",itemsservice.selectallmessages2(stage,stage0).get(0).getCusname()); 
						request.getRequestDispatcher("WEB-INF/xiaoguoqueren/chakanjiantaoxinxi.jsp").forward(request, response);
       	  	}
         }catch (Exception e) {
        	 request.getRequestDispatcher("WEB-INF/xiaoguoqueren/zhuananxinxi.jsp").forward(request, response);
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
