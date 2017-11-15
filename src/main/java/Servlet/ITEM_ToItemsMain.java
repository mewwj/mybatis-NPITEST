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
		          String uid=request.getParameter("uid");
		          request.setAttribute("zid", zid);
				  //���ݽ׶�ɸѡ��Ϣ
		          if(stage!=null||stage0!=null){
		        	  try {
		        	         ItemsService itemsservice=new ItemsService();
					         String uid2=itemsservice.selectallmessages2(stage,stage0).get(0).getExhibitor();
					       if(uid==null || uid.equals("")) {
					    	   System.out.println("uid==null");
							         if(uid==uid2) {
							        	 //�����û�ID�������Ƿ���ʾЧ��ȷ�ϣ�
							        	 request.setAttribute("exhibitor", "Ч��ȷ��");
							        	 request.setAttribute("allmessageslist",itemsservice.selectallmessages2(stage,stage0));
										   request.setAttribute("allmessagescusname",itemsservice.selectallmessages2(stage,stage0).get(0).getCusname()); 
										   request.setAttribute("allmessagesproname",itemsservice.selectallmessages2(stage,stage0).get(0).getCusname()); 
										   request.getRequestDispatcher("WEB-INF/back/NPImessagesmain.jsp").forward(request, response);
							         }else {
							        	 request.setAttribute("allmessageslist",itemsservice.selectallmessages2(stage,stage0));
										   request.setAttribute("allmessagescusname",itemsservice.selectallmessages2(stage,stage0).get(0).getCusname()); 
										   request.setAttribute("allmessagesproname",itemsservice.selectallmessages2(stage,stage0).get(0).getCusname()); 
										   request.getRequestDispatcher("WEB-INF/back/NPImessagesmain.jsp").forward(request, response);
							         }
							       }else {
							    	   request.setAttribute("allmessageslist",itemsservice.selectallmessages2(stage,stage0));
									   request.setAttribute("allmessagescusname",itemsservice.selectallmessages2(stage,stage0).get(0).getCusname()); 
									   request.setAttribute("allmessagesproname",itemsservice.selectallmessages2(stage,stage0).get(0).getCusname()); 
									   request.getRequestDispatcher("WEB-INF/back/NPImessagesmain.jsp").forward(request, response);
					       }
		        	    } catch (Exception e) {
		        		    request.setAttribute("msg","����Ϣ��");
		        		    request.getRequestDispatcher("WEB-INF/back/NPImessagesmain.jsp").forward(request, response);
						}
		        	  }
					
				//�����ѯ��ID����ѯ����ID�¶�Ӧ�����д�����Ϣ
					try {
		 	       if(zid!=null) {
				         int id=Integer.valueOf(zid);
					    ItemsService itemsservice=new ItemsService();
					    String uid2=itemsservice.selectallmessages(id).get(0).getExhibitor();
					     request.setAttribute("zid", zid);
					      //�ж�uid�Ƿ�Ϊ�գ�
					      // 
					    	if(uid==null || uid.equals("")) {
									    request.setAttribute("allmessageslist",itemsservice.selectallmessages(id));
									    request.setAttribute("allmessagescusname",itemsservice.selectallmessages(id).get(0).getCusname()); 
									    request.setAttribute("allmessagesproname",itemsservice.selectallmessages(id).get(0).getCusname()); 
									    request.getRequestDispatcher("WEB-INF/back/NPImessagesmain.jsp").forward(request, response);
					    	}else if(uid==uid2 ||uid.equals(uid2)) {
								    	request.setAttribute("exhibitor", "Ч��ȷ��");
								    	request.setAttribute("allmessageslist",itemsservice.selectallmessages(id));
								    	request.setAttribute("allmessagescusname",itemsservice.selectallmessages(id).get(0).getCusname()); 
								    	request.setAttribute("allmessagesproname",itemsservice.selectallmessages(id).get(0).getCusname()); 
								    	request.getRequestDispatcher("WEB-INF/back/NPImessagesmain.jsp").forward(request, response);
						    }else {
								    	request.setAttribute("allmessageslist",itemsservice.selectallmessages(id));
								    	request.setAttribute("allmessagescusname",itemsservice.selectallmessages(id).get(0).getCusname()); 
								    	request.setAttribute("allmessagesproname",itemsservice.selectallmessages(id).get(0).getCusname()); 
								    	request.getRequestDispatcher("WEB-INF/back/NPImessagesmain.jsp").forward(request, response);
						    }
		 	     
					}  
					} catch (Exception e) {
						request.getRequestDispatcher("WEB-INF/back/NPImessagesmain.jsp").forward(request, response);
					}
			}
		          
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
