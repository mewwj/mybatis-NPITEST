package Servlet;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspsmart.upload.SmartUpload;

import pojo.AllItems;
import service.ItemsService;

public class ITEM_DoItemsUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ITEM_DoItemsUpdate() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//�ϴ�λ��
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String filePath = "D:/workspace/workspace/npi.test/WebContent/images";
		File file = new File(filePath);
		if(!file.exists()){
			file.mkdir();
		}
		SmartUpload su = new SmartUpload();
		//��ʼ������
		su.initialize(getServletConfig(), request, response);
		//�����ϴ��ļ���С
		su.setMaxFileSize(1024*1024*10);
		//���������ļ��Ĵ�С
		su.setTotalMaxFileSize(1024*1024*100);
		//���������ϴ��ļ�����
		su.setAllowedFilesList("jpg,jpeg,gif,png,bmp");
		//���ý�ֹ�ϴ����ļ�����
		try {
			su.setDeniedFilesList("rar,jsp,js");
			//�ϴ��ļ�
			su.upload();
			int count = su.save(filePath);
			System.out.println("�ϴ��ɹ�" +  count + "���ļ���");
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(su.getFiles().getCount());
		for(int i =0; i < su.getFiles().getCount(); i++){
			com.jspsmart.upload.File tempFile = su.getFiles().getFile(i);
			System.out.println("---------------------------");
			System.out.println("������name����ֵ��" + tempFile.getFieldName());
			System.out.println("�ϴ��ļ�����" + tempFile.getFieldName());
			System.out.println("�ϴ��ļ�����:" + tempFile.getSize());
			System.out.println("�ϴ��ļ�����չ����" + tempFile.getFileExt());
			System.out.println("�ϴ��ļ���ȫ����" + tempFile.getFilePathName());
			System.out.println("---------------------------");
		}
		String stage0=su.getRequest().getParameter("province");
		String stage=su.getRequest().getParameter("stage");
		String reasons=su.getRequest().getParameter("reasons");
		String measures=su.getRequest().getParameter("measures");
		String head=su.getRequest().getParameter("head");
		String confirm=su.getRequest().getParameter("confirm");
		String affect=su.getRequest().getParameter("affect");
		String comment=su.getRequest().getParameter("comment");
		String id1=su.getRequest().getParameter("id");
		int id=Integer.valueOf(id1);
		 Date date = new Date();
		    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		    String finishtime =formatter.format(date.getTime());//ʱ���
		    System.out.println(finishtime);
		  //�������޸���Ϣ
		  if(reasons!=null||measures!=null) {
				String filenameb=su.getFiles().getFile(0).getFileName();
			  List<AllItems> itemupdatelist=new ArrayList<AllItems>();
			  AllItems allitems=new AllItems();
			  allitems.setId(id);
			  allitems.setReasons(reasons);
			  allitems.setMeasures(measures);
			  allitems.setFilenameb(filenameb);
			  allitems.setHead(head);
			  allitems.setFinishtime(finishtime);
			  itemupdatelist.add(allitems);
			  ItemsService itemsservice=new ItemsService();
			  itemsservice.updateoneitem(itemupdatelist);
			  
		  }
		  if(confirm!=null||comment!=null) {
			  List<AllItems> exhitemslist =new ArrayList<AllItems>();
			  AllItems exhitems=new AllItems();
			  exhitems.setId(id);
			  exhitems.setConfirm(confirm);
			  exhitems.setAffect(affect);
			  exhitems.setComment(comment);
			  exhitemslist.add(exhitems);
			  ItemsService itemsservice=new ItemsService();
			  itemsservice.updateexhitemslist(exhitemslist);
		  }
		  
		  
		  String cusname=su.getRequest().getParameter("cusname");
		  String proname=su.getRequest().getParameter("proname");
		  //���ݿͻ����� ר������ stage������Ϣ
		  //������޸���Ϣ
		  ItemsService itemsservice=new ItemsService();
		   request.setAttribute("allmessageslist",itemsservice.amessageslist(cusname,proname,stage0,stage)); 
		   request.getRequestDispatcher("WEB-INF/back/NPImessagesmain.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
