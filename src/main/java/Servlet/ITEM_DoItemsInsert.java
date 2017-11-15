package Servlet;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspsmart.upload.SmartUpload;

import pojo.AllItems;
import service.ItemsService;

public class ITEM_DoItemsInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ITEM_DoItemsInsert() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 request.setCharacterEncoding("UTF-8");
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
		try {
			//���ý�ֹ�ϴ����ļ�����
			su.setDeniedFilesList("rar,jsp,js,text");
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
		
		try {
			
			for(int i=0;i<100;i++){
				String filenamea=su.getFiles().getFile(i).getFileName();
				String cusname=su.getRequest().getParameter("cusname");
				String proname=su.getRequest().getParameter("proname");
				String stage0=su.getRequest().getParameter("stage0");
				String stage=su.getRequest().getParameter("stage");
				String insproject=su.getRequest().getParameter("insproject"+i);
				String item=su.getRequest().getParameter("item"+i);
				String items=su.getRequest().getParameter("items"+i);
				String problems=su.getRequest().getParameter("problems"+i);
				String ng=su.getRequest().getParameter("ng"+i);
				String defectlevels=su.getRequest().getParameter("defectlevels"+i);
				String exhibitor=su.getRequest().getParameter("exhibitor"+i);
				String plantime=su.getRequest().getParameter("plantime"+i);
				List<AllItems> itemsinsertalist=new ArrayList<AllItems>();
				AllItems allitems=new AllItems();
				allitems.setFilenamea(filenamea);
				allitems.setCusname(cusname);
				allitems.setProname(proname);
				allitems.setInsproject(insproject);
				allitems.setItem(item);
				allitems.setItems(items);
				allitems.setProblems(problems);
				allitems.setNg(ng);
				allitems.setDefectlevels(defectlevels);
				allitems.setExhibitor(exhibitor);
				allitems.setPlantime(plantime);
				allitems.setStage0(stage0);
				allitems.setStage(stage);
				itemsinsertalist.add(allitems);
				ItemsService itemsservice=new ItemsService();
				itemsservice.insertitemsa(itemsinsertalist);
				System.out.println("��ӳɹ�");
			}
			
		}  catch (Exception e) {
			e.printStackTrace();
		} finally {
			request.getRequestDispatcher("/HEAD_ToHeadMain").forward(request, response);
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
