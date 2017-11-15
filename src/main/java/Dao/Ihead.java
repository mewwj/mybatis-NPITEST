package Dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pojo.AllHead;

public interface Ihead {

	void insertheaditems(List<AllHead> headlist);

	List<AllHead> selectheaditems(@Param("cusname")String cusname, @Param("proname")String proname, @Param("modeltype")String modeltype, @Param("stage0")String stage0, @Param("stage")String stage);

	List<AllHead> mainheaditems(@Param("cusname")String cusname, @Param("proname")String proname, @Param("stage0")String stage0, @Param("stage")String stage);

	List<AllHead> updatehead(int uid);

	void deletehead(int did);

	void updateheaditem(List<AllHead> updatelist);


}
