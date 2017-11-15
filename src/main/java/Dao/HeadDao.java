package Dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import DB.DBAccess;
import pojo.AllHead;

public class HeadDao {

	public void insertheaditems(List<AllHead> headlist) {
		 DBAccess dbAccess=new DBAccess();
	       	SqlSession sqlSession=null;
	    	try {
				sqlSession=dbAccess.getSqlSession();
				Ihead ihead=sqlSession.getMapper(Ihead.class);
				ihead.insertheaditems(headlist);
				sqlSession.commit();
			} catch (Exception e) {
				e.printStackTrace();
			}finally{
				if(sqlSession!=null){
					sqlSession.close();
				}
			}
	}
     
	public List<AllHead> selectheaditems(String cusname, String proname, String modeltype, String stage0, String stage) {
		DBAccess dbAccess=new DBAccess();
       	SqlSession sqlSession=null;
       	List<AllHead> headlist=new ArrayList<AllHead>();
    	try {
			sqlSession=dbAccess.getSqlSession();
			Ihead ihead=sqlSession.getMapper(Ihead.class);
			headlist = ihead.selectheaditems(cusname,proname,modeltype,stage0,stage);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}
    	return headlist;
	}

	public List<AllHead> updatehead(int uid) {
		DBAccess dbAccess=new DBAccess();
       	SqlSession sqlSession=null;
       	List<AllHead> updateheadlist=new ArrayList<AllHead>();
    	try {
			sqlSession=dbAccess.getSqlSession();
			Ihead ihead=sqlSession.getMapper(Ihead.class);
			updateheadlist = ihead.updatehead(uid);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}
    	return updateheadlist;
	}

	public void deletehead(int did) {
		DBAccess dbAccess=new DBAccess();
       	SqlSession sqlSession=null;
    	try {
			sqlSession=dbAccess.getSqlSession();
			Ihead ihead=sqlSession.getMapper(Ihead.class);
			 ihead.deletehead(did);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}
	}

	public void updateheaditem(List<AllHead> updatelist) {
		DBAccess dbAccess=new DBAccess();
       	SqlSession sqlSession=null;
    	try {
			sqlSession=dbAccess.getSqlSession();
			Ihead ihead=sqlSession.getMapper(Ihead.class);
			 ihead.updateheaditem(updatelist);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}
		
	}

	public List<AllHead> mainheaditems(String cusname, String proname, String stage0, String stage) {
		DBAccess dbAccess=new DBAccess();
       	SqlSession sqlSession=null;
       	List<AllHead> mainheadlist=new ArrayList<AllHead>();
    	try {
			sqlSession=dbAccess.getSqlSession();
			Ihead ihead=sqlSession.getMapper(Ihead.class);
			System.out.println(Ihead.class);
			mainheadlist = ihead.mainheaditems(cusname,proname,stage0,stage);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}
    	return mainheadlist;
	}


}
