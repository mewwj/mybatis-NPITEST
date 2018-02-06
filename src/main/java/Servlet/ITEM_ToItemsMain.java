package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import service.ItemsService;

public class ITEM_ToItemsMain extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ITEM_ToItemsMain() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String zid=request.getParameter("zid");
         String stage0=request.getParameter("province");
         String stage=request.getParameter("stage");
         String chakanjiantaoxinxiid=request.getParameter("chakanjiantaoxinxiid");
         request.setAttribute("zid", zid);
		  //根据阶段筛选信息
       	  try {
       		  if(stage!=null||stage0!=null){
       	         ItemsService itemsservice=new ItemsService();
						    	   request.setAttribute("allmessageslist",itemsservice.selectallmessages2(stage,stage0));
								   request.setAttribute("allmessagescusname",itemsservice.selectallmessages2(stage,stage0).get(0).getCusname()); 
								   request.setAttribute("allmessagesproname",itemsservice.selectallmessages2(stage,stage0).get(0).getCusname()); 
								   request.getRequestDispatcher("WEB-INF/back/NPImessagesmain.jsp").forward(request, response);
       	    }
       	  }catch (Exception e) {
       		    request.setAttribute("msg","无信息！");
       		    request.getRequestDispatcher("WEB-INF/back/NPImessagesmain.jsp").forward(request, response);
				}
       	  
			
			try {
					if(zid!=null) {
		         int id=Integer.valueOf(zid);
			    ItemsService itemsservice=new ItemsService();
			     request.setAttribute("zid", zid);
						    	request.setAttribute("allmessageslist",itemsservice.selectallmessages(id));
						    	request.setAttribute("allmessagescusname",itemsservice.selectallmessages(id).get(0).getCusname()); 
						    	request.setAttribute("allmessagesproname",itemsservice.selectallmessages(id).get(0).getCusname()); 
						    	request.getRequestDispatcher("WEB-INF/back/NPImessagesmain.jsp").forward(request, response);
			}  
			} catch (Exception e) {
				request.getRequestDispatcher("WEB-INF/back/NPImessagesmain.jsp").forward(request, response);
			}
			
			try {
			       if(chakanjiantaoxinxiid!=null) {
				         int id=Integer.valueOf(chakanjiantaoxinxiid);
					    ItemsService itemsservice=new ItemsService();
								request.setAttribute("allmessageslist",itemsservice.selectallmessages(id));
								request.setAttribute("allmessagescusname",itemsservice.selectallmessages(id).get(0).getCusname()); 
								request.setAttribute("allmessagesproname",itemsservice.selectallmessages(id).get(0).getCusname()); 
								request.getRequestDispatcher("WEB-INF/xiaoguoqueren/chakanjiantaoxinxi.jsp").forward(request, response);
					}  
				} catch (Exception e) {
						request.getRequestDispatcher("WEB-INF/xiaoguoqueren/zhuananxinxi.jsp").forward(request, response);
					}
	}    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
