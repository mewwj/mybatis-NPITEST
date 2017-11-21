package Dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pojo.AllItems;

public interface Iitems {

	void insertitemsa(List<AllItems> itemsinsertalist);

	List<AllItems> selectallmessages(int id);

	String selectonefilename(int id);
	
	String selectonefilenameb(int id);

	void deleteoneitem(int id);

	List<AllItems> selectoneitem(int id);

	void updateoneitem(List<AllItems> itemupdatelist);

	List<AllItems> selectnoconfirmmsg(@Param("cusname")String cusname, @Param("proname")String proname, @Param("stage0")String stage0, @Param("stage")String stage);

	void updateexhitemslist(List<AllItems> exhitemslist);

	List<AllItems> selectnoconfirmmsg2(@Param("stage0")String stage0, @Param("stage")String stage);

	List<AllItems> amessageslist(@Param("cusname")String cusname, @Param("proname")String proname, @Param("stage0")String stage0, @Param("stage")String stage);

	List<AllItems> selectallmsg(@Param("cusname")String cusname, @Param("proname")String proname, @Param("stage0")String stage0, @Param("stage")String stage);

	void deletebatchitems(List<Integer> dellist);

	void insertitemcomm(@Param("pmcomm")String pmcomm,@Param("id")Integer id);

	List<AllItems> selectexportmessages(List<Integer> idslist);


}
