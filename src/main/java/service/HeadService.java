package service;

import java.util.List;


import Dao.HeadDao;
import pojo.AllHead;

public class HeadService {

	public void insertheaditems(List<AllHead> headlist) {
		  HeadDao headdao=new HeadDao();
		  headdao.insertheaditems(headlist);
		
	}

	public List<AllHead> selectheaditems(String cusname, String proname, String modeltype, String stage0, String stage) {
		HeadDao headdao=new HeadDao();
		 return headdao.selectheaditems(cusname,proname,modeltype,stage0,stage);
	}

	public List<AllHead> mainheaditems(String cusname, String proname, String stage0, String stage) {
		  HeadDao headdao=new HeadDao();
		 return headdao.mainheaditems(cusname,proname,stage0,stage);
	}

	public List<AllHead> updatehead(int uid) {
		HeadDao headdao=new HeadDao();
		 return headdao.updatehead(uid);
	}

	public void deletehead(int did) {
		HeadDao headdao=new HeadDao();
		 headdao.deletehead(did);
		
	}

	public void updateheaditem(List<AllHead> updatelist) {
		HeadDao headdao=new HeadDao();
		 headdao.updateheaditem(updatelist);
		
	}



}
