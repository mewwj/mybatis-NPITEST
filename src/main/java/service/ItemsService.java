package service;

import java.util.List;

import Dao.ItemsDao;
import pojo.AllItems;

public class ItemsService {

	public void insertitemsa(List<AllItems> itemsinsertalist) {
		 ItemsDao itemsdao=new ItemsDao();
		 itemsdao.insertitemsa(itemsinsertalist);
	}

	public List<AllItems> selectallmessages(int id) {
		   ItemsDao itemsdao=new ItemsDao();
		  return itemsdao.selectallmessages(id);
	}

	public List<AllItems> selectoneitem(int id) {
		ItemsDao itemsdao=new ItemsDao();
		  return itemsdao.selectoneitem(id);
	}

	public String selectonefilename(int id) {
		ItemsDao itemsdao=new ItemsDao();
		  return itemsdao.selectonefilename(id);
	}

	public void deleteoneitem(int id) {
		ItemsDao itemsdao=new ItemsDao();
		   itemsdao.deleteoneitem(id);
	}

	public String selectonefilenameb(int id) {
		ItemsDao itemsdao=new ItemsDao();
		  return itemsdao.selectonefilenameb(id);
	}

	public void updateoneitem(List<AllItems> itemupdatelist) {
		ItemsDao itemsdao=new ItemsDao();
		   itemsdao.updateoneitem(itemupdatelist);
		
	}

	public List<AllItems> selectnoconfirmmsg(String cusname, String proname, String stage0, String stage) {
		ItemsDao itemsdao=new ItemsDao();
		  return itemsdao.selectnoconfirmmsg(cusname,proname,stage0,stage);
	}

	public void updateexhitemslist(List<AllItems> exhitemslist) {
		ItemsDao itemsdao=new ItemsDao();
		   itemsdao.updateexhitemslist(exhitemslist);
		
	}

	public List<AllItems> selectallmessages2(String stage, String stage0) {
		ItemsDao itemsdao=new ItemsDao();
		  return itemsdao.selectnoconfirmmsg2(stage0,stage);
	}

	public List<AllItems> amessageslist(String cusname, String proname, String stage0, String stage) {
		ItemsDao itemsdao=new ItemsDao();
		  return itemsdao.amessageslist(cusname,proname,stage0,stage);
	}

	public List<AllItems> selectallmsg(String cusname, String proname, String stage0, String stage) {
		ItemsDao itemsdao=new ItemsDao();
		  return itemsdao.selectallmsg(cusname,proname,stage0,stage);
	}

	public void deletebatchitems(List<Integer> dellist) {
		ItemsDao itemsdao=new ItemsDao();
		itemsdao.deletebatchitems(dellist);
	}

	public void insertitemcomm(String pmcomm, int id) {
		ItemsDao itemsdao=new ItemsDao();
		itemsdao.insertitemcomm(pmcomm,id);
	}

}
