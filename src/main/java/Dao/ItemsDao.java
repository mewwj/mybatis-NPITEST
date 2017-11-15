package Dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import DB.DBAccess;
import pojo.AllItems;

public class ItemsDao {

	public void insertitemsa(List<AllItems> itemsinsertalist) {
		DBAccess dbAccess=new DBAccess();
       	SqlSession sqlSession=null;
    	try {
			sqlSession=dbAccess.getSqlSession();
			Iitems iitems=sqlSession.getMapper(Iitems.class);
			iitems.insertitemsa(itemsinsertalist);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}	
	}

	public List<AllItems> selectallmessages(int id) {
		DBAccess dbAccess=new DBAccess();
       	SqlSession sqlSession=null;
       	List<AllItems> allmessageslist=new ArrayList<AllItems>();
    	try {
			sqlSession=dbAccess.getSqlSession();
			Iitems iitems=sqlSession.getMapper(Iitems.class);
			allmessageslist=iitems.selectallmessages(id);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}	
    	return allmessageslist;
	}

	public List<AllItems> selectoneitem(int id) {
		DBAccess dbAccess=new DBAccess();
       	SqlSession sqlSession=null;
       	List<AllItems> onemessageslist=new ArrayList<AllItems>();
    	try {
			sqlSession=dbAccess.getSqlSession();
			Iitems iitems=sqlSession.getMapper(Iitems.class);
			onemessageslist=iitems.selectoneitem(id);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}	
    	return onemessageslist;
	}

	public String selectonefilename(int id) {
		DBAccess dbAccess=new DBAccess();
       	SqlSession sqlSession=null;
       	String filename = null;
    	try {
			sqlSession=dbAccess.getSqlSession();
			Iitems iitems=sqlSession.getMapper(Iitems.class);
			 filename=iitems.selectonefilename(id);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}	
    	return filename;
	}

	public void deleteoneitem(int id) {
		DBAccess dbAccess=new DBAccess();
       	SqlSession sqlSession=null;
    	try {
			sqlSession=dbAccess.getSqlSession();
			Iitems iitems=sqlSession.getMapper(Iitems.class);
			iitems.deleteoneitem(id);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}	
	}

	public String selectonefilenameb(int id) {
		DBAccess dbAccess=new DBAccess();
       	SqlSession sqlSession=null;
       	String filenameb = null;
    	try {
			sqlSession=dbAccess.getSqlSession();
			Iitems iitems=sqlSession.getMapper(Iitems.class);
			 filenameb=iitems.selectonefilenameb(id);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}	
    	return filenameb;
	}

	public void updateoneitem(List<AllItems> itemupdatelist) {
		DBAccess dbAccess=new DBAccess();
       	SqlSession sqlSession=null;
    	try {
			sqlSession=dbAccess.getSqlSession();
			Iitems iitems=sqlSession.getMapper(Iitems.class);
			iitems.updateoneitem(itemupdatelist);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}	
		
	}

	public 	List<AllItems> selectnoconfirmmsg(String cusname, String proname, String stage0, String stage) {
		DBAccess dbAccess=new DBAccess();
       	SqlSession sqlSession=null;
       	List<AllItems> noconfirmmsglist=new ArrayList<AllItems>();
    	try {
			sqlSession=dbAccess.getSqlSession();
			Iitems iitems=sqlSession.getMapper(Iitems.class);
			noconfirmmsglist=iitems.selectnoconfirmmsg(cusname,proname,stage0,stage);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}	
    	return noconfirmmsglist;
		
	}

	public void updateexhitemslist(List<AllItems> exhitemslist) {
		DBAccess dbAccess=new DBAccess();
       	SqlSession sqlSession=null;
    	try {
			sqlSession=dbAccess.getSqlSession();
			Iitems iitems=sqlSession.getMapper(Iitems.class);
			iitems.updateexhitemslist(exhitemslist);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}	
		
	}

	public List<AllItems> selectnoconfirmmsg2(String stage0, String stage) {
		DBAccess dbAccess=new DBAccess();
       	SqlSession sqlSession=null;
       	List<AllItems> noconfirmmsglist=new ArrayList<AllItems>();
    	try {
			sqlSession=dbAccess.getSqlSession();
			Iitems iitems=sqlSession.getMapper(Iitems.class);
			noconfirmmsglist=iitems.selectnoconfirmmsg2(stage0,stage);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}	
    	return noconfirmmsglist;
	}

	public List<AllItems> amessageslist(String cusname, String proname, String stage0, String stage) {
		DBAccess dbAccess=new DBAccess();
       	SqlSession sqlSession=null;
       	List<AllItems> noconfirmmsglist=new ArrayList<AllItems>();
    	try {
			sqlSession=dbAccess.getSqlSession();
			Iitems iitems=sqlSession.getMapper(Iitems.class);
			noconfirmmsglist=iitems.amessageslist(cusname,proname,stage0,stage);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}	
    	return noconfirmmsglist;
	}

	public List<AllItems> selectallmsg(String cusname, String proname, String stage0, String stage) {
		DBAccess dbAccess=new DBAccess();
       	SqlSession sqlSession=null;
       	List<AllItems> allmsglist=new ArrayList<AllItems>();
    	try {
			sqlSession=dbAccess.getSqlSession();
			Iitems iitems=sqlSession.getMapper(Iitems.class);
			allmsglist=iitems.selectallmsg(cusname,proname,stage0,stage);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}	
    	return allmsglist;
	}

	public void deletebatchitems(List<Integer> dellist) {
		DBAccess dbAccess=new DBAccess();
       	SqlSession sqlSession=null;
    	try {
			sqlSession=dbAccess.getSqlSession();
			Iitems iitems=sqlSession.getMapper(Iitems.class);
			iitems.deletebatchitems(dellist);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}	
	}

	public void insertitemcomm(String pmcomm, int id) {
		DBAccess dbAccess=new DBAccess();
       	SqlSession sqlSession=null;
    	try {
			sqlSession=dbAccess.getSqlSession();
			Iitems iitems=sqlSession.getMapper(Iitems.class);
			iitems.insertitemcomm(pmcomm,id);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}	
		
	}
	



}
