package service;

import java.util.List;

import Dao.ListDao;
import pojo.AllItems;

public class ListService {

	public int countdesignaspect(String cusname, String proname, String modeltype, String stage0, String stage) {
		ListDao listdao=new ListDao();
		return listdao.countdesignaspect(cusname,proname,modeltype,stage0,stage);
	}

	public int softwaredesignaspect(String cusname, String proname, String modeltype, String stage0, String stage) {
		ListDao listdao=new ListDao();
		return listdao.softwaredesignaspect(cusname,proname,modeltype,stage0,stage);
	}

	public int technologicalaspects(String cusname, String proname, String modeltype, String stage0, String stage) {
		ListDao listdao=new ListDao();
		return listdao.technologicalaspects(cusname,proname,modeltype,stage0,stage);
	}

	public int operationaspects(String cusname, String proname, String modeltype, String stage0, String stage) {
		ListDao listdao=new ListDao();
		return listdao.operationaspects(cusname,proname,modeltype,stage0,stage);
	}

	public int incomingmaterialslaspects(String cusname, String proname, String modeltype, String stage0,
			String stage) {
		ListDao listdao=new ListDao();
		return listdao.incomingmaterialslaspects(cusname,proname,modeltype,stage0,stage);
	}

	public int customeraspects(String cusname, String proname, String modeltype, String stage0, String stage) {
		ListDao listdao=new ListDao();
		return listdao.customeraspects(cusname,proname,modeltype,stage0,stage);
	}

	public int otheraspects(String cusname, String proname, String modeltype, String stage0, String stage) {
		ListDao listdao=new ListDao();
		return listdao.otheraspects(cusname,proname,modeltype,stage0,stage);
	}

	public List<AllItems> designinstsoundbar(String cusname, String proname, String modeltype, String stage0, String stage) {
		ListDao listdao=new ListDao();
		return listdao.designinstsoundbar(cusname,proname,modeltype,stage0,stage);
	}

	public List<AllItems> designinstwoofer(String cusname, String proname, String modeltype, String stage0, String stage) {
		// TODO Auto-generated method stub
		ListDao listdao=new ListDao();
		return listdao.designinstwoofer(cusname,proname,modeltype,stage0,stage);
	}

	public List<AllItems> designelecsoundbar(String cusname, String proname, String modeltype, String stage0, String stage) {
		// TODO Auto-generated method stub
		ListDao listdao=new ListDao();
		return listdao.designelecsoundbar(cusname,proname,modeltype,stage0,stage);
	}

	public List<AllItems> designelecwoofer(String cusname, String proname, String modeltype, String stage0, String stage) {
		// TODO Auto-generated method stub
		ListDao listdao=new ListDao();
		return listdao.designelecwoofer(cusname,proname,modeltype,stage0,stage);
	}

	public List<AllItems> designhornsoundbar(String cusname, String proname, String modeltype, String stage0, String stage) {
		// TODO Auto-generated method stub
		ListDao listdao=new ListDao();
		return listdao.designhornsoundbar(cusname,proname,modeltype,stage0,stage);
	}

	public List<AllItems> designhornwoofer(String cusname, String proname, String modeltype, String stage0, String stage) {
		// TODO Auto-generated method stub
		ListDao listdao=new ListDao();
		return listdao.designhornwoofer(cusname,proname,modeltype,stage0,stage);
	}

	public List<AllItems> designpacksoundbar(String cusname, String proname, String modeltype, String stage0, String stage) {
		// TODO Auto-generated method stub
		ListDao listdao=new ListDao();
		return listdao.designpacksoundbar(cusname,proname,modeltype,stage0,stage);
	}

	public List<AllItems> designpackwooferr(String cusname, String proname, String modeltype, String stage0, String stage) {
		// TODO Auto-generated method stub
		ListDao listdao=new ListDao();
		return listdao.designpackwooferr(cusname,proname,modeltype,stage0,stage);
	}

	public List<AllItems> designothsoundbar(String cusname, String proname, String modeltype, String stage0, String stage) {
		// TODO Auto-generated method stub
		ListDao listdao=new ListDao();
		return listdao.designothsoundbar(cusname,proname,modeltype,stage0,stage);
	}

	public List<AllItems> designothwoofer(String cusname, String proname, String modeltype, String stage0, String stage) {
		// TODO Auto-generated method stub
		ListDao listdao=new ListDao();
		return listdao.designothwoofer(cusname,proname,modeltype,stage0,stage);
	}

	public List<AllItems> softwaresoundbar(String cusname, String proname, String modeltype, String stage0, String stage) {
		// TODO Auto-generated method stub
		ListDao listdao=new ListDao();
		return listdao.softwaresoundbar(cusname,proname,modeltype,stage0,stage);
	}

	public List<AllItems> softwarewoofer(String cusname, String proname, String modeltype, String stage0, String stage) {
		// TODO Auto-generated method stub
		ListDao listdao=new ListDao();
		return listdao.softwarewoofer(cusname,proname,modeltype,stage0,stage);
	}

	public List<AllItems> techsoundbar(String cusname, String proname, String modeltype, String stage0, String stage) {
		// TODO Auto-generated method stub
		ListDao listdao=new ListDao();
		return listdao.techsoundbar(cusname,proname,modeltype,stage0,stage);
	}

	public List<AllItems> techwoofer(String cusname, String proname, String modeltype, String stage0, String stage) {
		// TODO Auto-generated method stub
		ListDao listdao=new ListDao();
		return listdao.techwoofer(cusname,proname,modeltype,stage0,stage);
	}

	public List<AllItems> operasoundbar(String cusname, String proname, String modeltype, String stage0, String stage) {
		// TODO Auto-generated method stub
		ListDao listdao=new ListDao();
		return listdao.operasoundbar(cusname,proname,modeltype,stage0,stage);
	}

	public List<AllItems> operawoofer(String cusname, String proname, String modeltype, String stage0, String stage) {
		// TODO Auto-generated method stub
		ListDao listdao=new ListDao();
		return listdao.operawoofer(cusname,proname,modeltype,stage0,stage);
	}

	public List<AllItems> incomsoundbar(String cusname, String proname, String modeltype, String stage0, String stage) {
		// TODO Auto-generated method stub
		ListDao listdao=new ListDao();
		return listdao.incomsoundbar(cusname,proname,modeltype,stage0,stage);
	}

	public List<AllItems> incomwoofer(String cusname, String proname, String modeltype, String stage0, String stage) {
		// TODO Auto-generated method stub
		ListDao listdao=new ListDao();
		return listdao.incomwoofer(cusname,proname,modeltype,stage0,stage);
	}

	public List<AllItems> cusmsoundbar(String cusname, String proname, String modeltype, String stage0, String stage) {
		// TODO Auto-generated method stub
		ListDao listdao=new ListDao();
		return listdao.cusmsoundbar(cusname,proname,modeltype,stage0,stage);
	}

	public List<AllItems> cusmwooferlist(String cusname, String proname, String modeltype, String stage0, String stage) {
		// TODO Auto-generated method stub
		ListDao listdao=new ListDao();
		return listdao.cusmwooferlist(cusname,proname,modeltype,stage0,stage);
	}

	public List<AllItems> othsoundbar(String cusname, String proname, String modeltype, String stage0, String stage) {
		// TODO Auto-generated method stub
		ListDao listdao=new ListDao();
		return listdao.othsoundbar(cusname,proname,modeltype,stage0,stage);
	}

	public List<AllItems> othwoofer(String cusname, String proname, String modeltype, String stage0, String stage) {
		// TODO Auto-generated method stub
		ListDao listdao=new ListDao();
		return listdao.othwoofer(cusname,proname,modeltype,stage0,stage);
	}

}
