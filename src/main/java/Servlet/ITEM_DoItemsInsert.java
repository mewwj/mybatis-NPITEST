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
		//初始化对象
		su.initialize(getServletConfig(), request, response);
		//设置上传文件大小
		su.setMaxFileSize(1024*1024*10);
		//设置所有文件的大小
		su.setTotalMaxFileSize(1024*1024*100);
		//设置允许上传文件类型
		su.setAllowedFilesList("jpg,jpeg,gif,png,bmp");
		try {
			//设置禁止上传的文件类型
			su.setDeniedFilesList("rar,jsp,js,text");
			//上传文件
			su.upload();
			
			int count = su.save(filePath);
			System.out.println("上传成功" +  count + "个文件！");
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(su.getFiles().getCount());
		for(int i =0; i < su.getFiles().getCount(); i++){
			com.jspsmart.upload.File tempFile = su.getFiles().getFile(i);
			System.out.println("---------------------------");
			System.out.println("表单当中name属性值：" + tempFile.getFieldName());
			System.out.println("上传文件名：" + tempFile.getFieldName());
			System.out.println("上传文件长度:" + tempFile.getSize());
			System.out.println("上传文件的拓展名：" + tempFile.getFileExt());
			System.out.println("上传文件的全名：" + tempFile.getFilePathName());
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
				System.out.println("添加成功");
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
