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
		//上传位置
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
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
		//设置禁止上传的文件类型
		try {
			su.setDeniedFilesList("rar,jsp,js");
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
		    String finishtime =formatter.format(date.getTime());//时间戳
		    System.out.println(finishtime);
		  //责任人修改信息
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
		  //根据客户名称 专案名称 stage查找信息
		  //提出人修改信息
		  ItemsService itemsservice=new ItemsService();
		   request.setAttribute("allmessageslist",itemsservice.amessageslist(cusname,proname,stage0,stage)); 
		   request.getRequestDispatcher("WEB-INF/back/NPImessagesmain.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
