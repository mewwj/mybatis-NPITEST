package Dao;
/**
 * 所有方法对应Dolistservlet
 */
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import DB.DBAccess;
import pojo.AllItems;

public class ListDao {

	public int countdesignaspect(String cusname, String proname, String modeltype, String stage0, String stage) {
		// TODO Auto-generated method stub
		DBAccess dbAccess=new DBAccess();
       	SqlSession sqlSession=null;
       	int a=0;
    	try {
			sqlSession=dbAccess.getSqlSession();
			Ilist ilist=sqlSession.getMapper(Ilist.class);
			a=ilist.countdesignaspect(cusname,proname,modeltype,stage0,stage);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}	
		return a;
	}

	public int softwaredesignaspect(String cusname, String proname, String modeltype, String stage0, String stage) {
		DBAccess dbAccess=new DBAccess();
       	SqlSession sqlSession=null;
       	int a=0;
    	try {
			sqlSession=dbAccess.getSqlSession();
			Ilist ilist=sqlSession.getMapper(Ilist.class);
			a=ilist.softwaredesignaspect(cusname,proname,modeltype,stage0,stage);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}	
		return a;
	}

	public int technologicalaspects(String cusname, String proname, String modeltype, String stage0, String stage) {
		DBAccess dbAccess=new DBAccess();
       	SqlSession sqlSession=null;
       	int a=0;
    	try {
			sqlSession=dbAccess.getSqlSession();
			Ilist ilist=sqlSession.getMapper(Ilist.class);
			a=ilist.technologicalaspects(cusname,proname,modeltype,stage0,stage);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}	
		return a;
	}

	public int operationaspects(String cusname, String proname, String modeltype, String stage0, String stage) {
		DBAccess dbAccess=new DBAccess();
       	SqlSession sqlSession=null;
       	int a=0;
    	try {
			sqlSession=dbAccess.getSqlSession();
			Ilist ilist=sqlSession.getMapper(Ilist.class);
			a=ilist.operationaspects(cusname,proname,modeltype,stage0,stage);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}	
		return a;
	}

	public int incomingmaterialslaspects(String cusname, String proname, String modeltype, String stage0,
			String stage) {
		DBAccess dbAccess=new DBAccess();
       	SqlSession sqlSession=null;
       	int a=0;
    	try {
			sqlSession=dbAccess.getSqlSession();
			Ilist ilist=sqlSession.getMapper(Ilist.class);
			a=ilist.incomingmaterialslaspects(cusname,proname,modeltype,stage0,stage);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}	
		return a;
	}

	public int customeraspects(String cusname, String proname, String modeltype, String stage0, String stage) {
		DBAccess dbAccess=new DBAccess();
       	SqlSession sqlSession=null;
       	int a=0;
    	try {
			sqlSession=dbAccess.getSqlSession();
			Ilist ilist=sqlSession.getMapper(Ilist.class);
			a=ilist.customeraspects(cusname,proname,modeltype,stage0,stage);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}	
		return a;
	}

	public int otheraspects(String cusname, String proname, String modeltype, String stage0, String stage) {
		DBAccess dbAccess=new DBAccess();
       	SqlSession sqlSession=null;
       	int a=0;
    	try {
			sqlSession=dbAccess.getSqlSession();
			Ilist ilist=sqlSession.getMapper(Ilist.class);
			a=ilist.otheraspects(cusname,proname,modeltype,stage0,stage);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}	
		return a;
	}

	public List<AllItems> designinstsoundbar(String cusname, String proname, String modeltype, String stage0,
			String stage) {
		DBAccess dbAccess=new DBAccess();
       	SqlSession sqlSession=null;
       	List<AllItems> designinstsoundbarlist=new ArrayList<AllItems>();
    	try {
			sqlSession=dbAccess.getSqlSession();
			Ilist ilist=sqlSession.getMapper(Ilist.class);
			designinstsoundbarlist=ilist.designinstsoundbar(cusname,proname,modeltype,stage0,stage);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}	
		return designinstsoundbarlist;
	}

	public List<AllItems> designinstwoofer(String cusname, String proname, String modeltype, String stage0,
			String stage) {
		DBAccess dbAccess=new DBAccess();
		SqlSession sqlSession=null;
		List<AllItems> designinstwooferlist=new ArrayList<AllItems>();
		try {
			sqlSession=dbAccess.getSqlSession();
			Ilist ilist=sqlSession.getMapper(Ilist.class);
			designinstwooferlist=ilist.designinstwoofer(cusname,proname,modeltype,stage0,stage);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}	
		return designinstwooferlist;
	}

	public List<AllItems> designelecsoundbar(String cusname, String proname, String modeltype, String stage0,
			String stage) {
		DBAccess dbAccess=new DBAccess();
		SqlSession sqlSession=null;
		List<AllItems> designelecsoundbarlist=new ArrayList<AllItems>();
		try {
			sqlSession=dbAccess.getSqlSession();
			Ilist ilist=sqlSession.getMapper(Ilist.class);
			designelecsoundbarlist=ilist.designelecsoundbar(cusname,proname,modeltype,stage0,stage);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}	
		return designelecsoundbarlist;
	}

	public List<AllItems> designelecwoofer(String cusname, String proname, String modeltype, String stage0,
			String stage) {
		DBAccess dbAccess=new DBAccess();
		SqlSession sqlSession=null;
		List<AllItems> designelecwooferlist=new ArrayList<AllItems>();
		try {
			sqlSession=dbAccess.getSqlSession();
			Ilist ilist=sqlSession.getMapper(Ilist.class);
			designelecwooferlist=ilist.designelecwoofer(cusname,proname,modeltype,stage0,stage);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}	
		return designelecwooferlist;
	}

	public List<AllItems> designhornsoundbar(String cusname, String proname, String modeltype, String stage0,
			String stage) {
		DBAccess dbAccess=new DBAccess();
		SqlSession sqlSession=null;
		List<AllItems> designhornsoundbarlist=new ArrayList<AllItems>();
		try {
			sqlSession=dbAccess.getSqlSession();
			Ilist ilist=sqlSession.getMapper(Ilist.class);
			designhornsoundbarlist=ilist.designhornsoundbar(cusname,proname,modeltype,stage0,stage);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}	
		return designhornsoundbarlist;
	}

	public List<AllItems> designhornwoofer(String cusname, String proname, String modeltype, String stage0,
			String stage) {
		DBAccess dbAccess=new DBAccess();
		SqlSession sqlSession=null;
		List<AllItems> designhornwooferlist=new ArrayList<AllItems>();
		try {
			sqlSession=dbAccess.getSqlSession();
			Ilist ilist=sqlSession.getMapper(Ilist.class);
			designhornwooferlist=ilist.designhornwoofer(cusname,proname,modeltype,stage0,stage);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}	
		return designhornwooferlist;
	}

	public List<AllItems> designpacksoundbar(String cusname, String proname, String modeltype, String stage0,
			String stage) {
		DBAccess dbAccess=new DBAccess();
		SqlSession sqlSession=null;
		List<AllItems> designpacksoundbarrlist=new ArrayList<AllItems>();
		try {
			sqlSession=dbAccess.getSqlSession();
			Ilist ilist=sqlSession.getMapper(Ilist.class);
			designpacksoundbarrlist=ilist.designpacksoundbar(cusname,proname,modeltype,stage0,stage);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}	
		return designpacksoundbarrlist;
	}

	public List<AllItems> designpackwooferr(String cusname, String proname, String modeltype, String stage0,
			String stage) {
		DBAccess dbAccess=new DBAccess();
		SqlSession sqlSession=null;
		List<AllItems> designpackwooferrlist=new ArrayList<AllItems>();
		try {
			sqlSession=dbAccess.getSqlSession();
			Ilist ilist=sqlSession.getMapper(Ilist.class);
			designpackwooferrlist=ilist.designpackwooferr(cusname,proname,modeltype,stage0,stage);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}	
		return designpackwooferrlist;
	}

	public List<AllItems> designothsoundbar(String cusname, String proname, String modeltype, String stage0,
			String stage) {
		DBAccess dbAccess=new DBAccess();
		SqlSession sqlSession=null;
		List<AllItems> designothsoundbarlist=new ArrayList<AllItems>();
		try {
			sqlSession=dbAccess.getSqlSession();
			Ilist ilist=sqlSession.getMapper(Ilist.class);
			designothsoundbarlist=ilist.designothsoundbar(cusname,proname,modeltype,stage0,stage);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}	
		return designothsoundbarlist;
	}

	public List<AllItems> designothwoofer(String cusname, String proname, String modeltype, String stage0,
			String stage) {
		DBAccess dbAccess=new DBAccess();
		SqlSession sqlSession=null;
		List<AllItems> designothwooferlist=new ArrayList<AllItems>();
		try {
			sqlSession=dbAccess.getSqlSession();
			Ilist ilist=sqlSession.getMapper(Ilist.class);
			designothwooferlist=ilist.designothwoofer(cusname,proname,modeltype,stage0,stage);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}	
		return designothwooferlist;
	}

	public List<AllItems> softwaresoundbar(String cusname, String proname, String modeltype, String stage0,
			String stage) {
		DBAccess dbAccess=new DBAccess();
		SqlSession sqlSession=null;
		List<AllItems> softwaresoundbarlist=new ArrayList<AllItems>();
		try {
			sqlSession=dbAccess.getSqlSession();
			Ilist ilist=sqlSession.getMapper(Ilist.class);
			softwaresoundbarlist=ilist.softwaresoundbar(cusname,proname,modeltype,stage0,stage);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}	
		return softwaresoundbarlist;
	}

	public List<AllItems> softwarewoofer(String cusname, String proname, String modeltype, String stage0,
			String stage) {
		DBAccess dbAccess=new DBAccess();
		SqlSession sqlSession=null;
		List<AllItems> softwarewooferlist=new ArrayList<AllItems>();
		try {
			sqlSession=dbAccess.getSqlSession();
			Ilist ilist=sqlSession.getMapper(Ilist.class);
			softwarewooferlist=ilist.softwarewoofer(cusname,proname,modeltype,stage0,stage);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}	
		return softwarewooferlist;
	}

	public List<AllItems> techsoundbar(String cusname, String proname, String modeltype, String stage0, String stage) {
		DBAccess dbAccess=new DBAccess();
		SqlSession sqlSession=null;
		List<AllItems> techsoundbarlist=new ArrayList<AllItems>();
		try {
			sqlSession=dbAccess.getSqlSession();
			Ilist ilist=sqlSession.getMapper(Ilist.class);
			techsoundbarlist=ilist.techsoundbar(cusname,proname,modeltype,stage0,stage);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}	
		return techsoundbarlist;
	}

	public List<AllItems> techwoofer(String cusname, String proname, String modeltype, String stage0, String stage) {
		DBAccess dbAccess=new DBAccess();
		SqlSession sqlSession=null;
		List<AllItems> techwooferlist=new ArrayList<AllItems>();
		try {
			sqlSession=dbAccess.getSqlSession();
			Ilist ilist=sqlSession.getMapper(Ilist.class);
			techwooferlist=ilist.techwoofer(cusname,proname,modeltype,stage0,stage);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}	
		return techwooferlist;
	}

	public List<AllItems> operasoundbar(String cusname, String proname, String modeltype, String stage0, String stage) {
		DBAccess dbAccess=new DBAccess();
		SqlSession sqlSession=null;
		List<AllItems> operasoundbarlist=new ArrayList<AllItems>();
		try {
			sqlSession=dbAccess.getSqlSession();
			Ilist ilist=sqlSession.getMapper(Ilist.class);
			operasoundbarlist=ilist.operasoundbar(cusname,proname,modeltype,stage0,stage);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}	
		return operasoundbarlist;
	}

	public List<AllItems> operawoofer(String cusname, String proname, String modeltype, String stage0, String stage) {
		DBAccess dbAccess=new DBAccess();
		SqlSession sqlSession=null;
		List<AllItems> operawooferlist=new ArrayList<AllItems>();
		try {
			sqlSession=dbAccess.getSqlSession();
			Ilist ilist=sqlSession.getMapper(Ilist.class);
			operawooferlist=ilist.operawoofer(cusname,proname,modeltype,stage0,stage);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}	
		return operawooferlist;
	}

	public List<AllItems> incomsoundbar(String cusname, String proname, String modeltype, String stage0, String stage) {
		DBAccess dbAccess=new DBAccess();
		SqlSession sqlSession=null;
		List<AllItems> incomsoundbarlist=new ArrayList<AllItems>();
		try {
			sqlSession=dbAccess.getSqlSession();
			Ilist ilist=sqlSession.getMapper(Ilist.class);
			incomsoundbarlist=ilist.incomsoundbar(cusname,proname,modeltype,stage0,stage);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}	
		return incomsoundbarlist;
	}

	public List<AllItems> incomwoofer(String cusname, String proname, String modeltype, String stage0, String stage) {
		DBAccess dbAccess=new DBAccess();
		SqlSession sqlSession=null;
		List<AllItems> incomwooferlist=new ArrayList<AllItems>();
		try {
			sqlSession=dbAccess.getSqlSession();
			Ilist ilist=sqlSession.getMapper(Ilist.class);
			incomwooferlist=ilist.incomwoofer(cusname,proname,modeltype,stage0,stage);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}	
		return incomwooferlist;
	}

	public List<AllItems> cusmsoundbar(String cusname, String proname, String modeltype, String stage0, String stage) {
		DBAccess dbAccess=new DBAccess();
		SqlSession sqlSession=null;
		List<AllItems> cusmsoundbarlist=new ArrayList<AllItems>();
		try {
			sqlSession=dbAccess.getSqlSession();
			Ilist ilist=sqlSession.getMapper(Ilist.class);
			cusmsoundbarlist=ilist.cusmsoundbar(cusname,proname,modeltype,stage0,stage);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}	
		return cusmsoundbarlist;
	}

	public List<AllItems> cusmwooferlist(String cusname, String proname, String modeltype, String stage0,
			String stage) {
		DBAccess dbAccess=new DBAccess();
		SqlSession sqlSession=null;
		List<AllItems> cusmwooferlists=new ArrayList<AllItems>();
		try {
			sqlSession=dbAccess.getSqlSession();
			Ilist ilist=sqlSession.getMapper(Ilist.class);
			cusmwooferlists=ilist.cusmwooferlist(cusname,proname,modeltype,stage0,stage);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}	
		return cusmwooferlists;
	}

	public List<AllItems> othsoundbar(String cusname, String proname, String modeltype, String stage0, String stage) {
		DBAccess dbAccess=new DBAccess();
		SqlSession sqlSession=null;
		List<AllItems> othsoundbarlist=new ArrayList<AllItems>();
		try {
			sqlSession=dbAccess.getSqlSession();
			Ilist ilist=sqlSession.getMapper(Ilist.class);
			othsoundbarlist=ilist.othsoundbar(cusname,proname,modeltype,stage0,stage);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}	
		return othsoundbarlist;
	}

	public List<AllItems> othwoofer(String cusname, String proname, String modeltype, String stage0, String stage) {
		DBAccess dbAccess=new DBAccess();
		SqlSession sqlSession=null;
		List<AllItems> othwooferlist=new ArrayList<AllItems>();
		try {
			sqlSession=dbAccess.getSqlSession();
			Ilist ilist=sqlSession.getMapper(Ilist.class);
			othwooferlist=ilist.othwoofer(cusname,proname,modeltype,stage0,stage);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}	
		return othwooferlist;
	}

}
