package Dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pojo.AllItems;

public interface Ilist {

	int countdesignaspect(@Param("cusname") String cusname, @Param("proname")String proname, @Param("modeltype")String modeltype, @Param("stage0")String stage0, @Param("stage")String stage);

	int softwaredesignaspect(@Param("cusname") String cusname, @Param("proname")String proname, @Param("modeltype")String modeltype, @Param("stage0")String stage0, @Param("stage")String stage);

	int technologicalaspects(@Param("cusname") String cusname, @Param("proname")String proname, @Param("modeltype")String modeltype, @Param("stage0")String stage0, @Param("stage")String stage);

	int operationaspects(@Param("cusname") String cusname, @Param("proname")String proname, @Param("modeltype")String modeltype, @Param("stage0")String stage0, @Param("stage")String stage);

	int incomingmaterialslaspects(@Param("cusname") String cusname, @Param("proname")String proname, @Param("modeltype")String modeltype, @Param("stage0")String stage0, @Param("stage")String stage);

	int customeraspects(@Param("cusname") String cusname, @Param("proname")String proname, @Param("modeltype")String modeltype, @Param("stage0")String stage0, @Param("stage")String stage);

	int otheraspects(@Param("cusname") String cusname, @Param("proname")String proname, @Param("modeltype")String modeltype, @Param("stage0")String stage0, @Param("stage")String stage);
     //��� ���� SOUNDBAR
	List<AllItems> designinstsoundbar(@Param("cusname") String cusname, @Param("proname")String proname, @Param("modeltype")String modeltype, @Param("stage0")String stage0, @Param("stage")String stage);
     //��� ����  WOOFER
	List<AllItems> designinstwoofer( @Param("cusname") String cusname, @Param("proname")String proname, @Param("modeltype")String modeltype, @Param("stage0")String stage0, @Param("stage")String stage);
	//��� ����  WOOFER
	List<AllItems> designelecsoundbar(@Param("cusname") String cusname, @Param("proname")String proname, @Param("modeltype")String modeltype, @Param("stage0")String stage0, @Param("stage")String stage);

	List<AllItems> designelecwoofer(@Param("cusname") String cusname, @Param("proname")String proname, @Param("modeltype")String modeltype, @Param("stage0")String stage0, @Param("stage")String stage);
	//��� ����  WOOFER
	List<AllItems> designhornsoundbar(@Param("cusname") String cusname, @Param("proname")String proname, @Param("modeltype")String modeltype, @Param("stage0")String stage0, @Param("stage")String stage);

	List<AllItems> designhornwoofer(@Param("cusname") String cusname, @Param("proname")String proname, @Param("modeltype")String modeltype, @Param("stage0")String stage0, @Param("stage")String stage);
     //��װ
	List<AllItems> designpacksoundbar(@Param("cusname") String cusname, @Param("proname")String proname, @Param("modeltype")String modeltype, @Param("stage0")String stage0, @Param("stage")String stage);
    
	List<AllItems> designpackwooferr(@Param("cusname") String cusname, @Param("proname")String proname, @Param("modeltype")String modeltype, @Param("stage0")String stage0, @Param("stage")String stage);
    //����
	List<AllItems> designothsoundbar(@Param("cusname") String cusname, @Param("proname")String proname, @Param("modeltype")String modeltype, @Param("stage0")String stage0, @Param("stage")String stage);

	List<AllItems> designothwoofer(@Param("cusname") String cusname, @Param("proname")String proname, @Param("modeltype")String modeltype, @Param("stage0")String stage0, @Param("stage")String stage);
    //�������
	List<AllItems> softwaresoundbar(@Param("cusname") String cusname, @Param("proname")String proname, @Param("modeltype")String modeltype, @Param("stage0")String stage0, @Param("stage")String stage);

	List<AllItems> softwarewoofer(@Param("cusname") String cusname, @Param("proname")String proname, @Param("modeltype")String modeltype, @Param("stage0")String stage0, @Param("stage")String stage);
    //���շ���
	List<AllItems> techsoundbar(@Param("cusname") String cusname, @Param("proname")String proname, @Param("modeltype")String modeltype, @Param("stage0")String stage0, @Param("stage")String stage);

	List<AllItems> techwoofer(@Param("cusname") String cusname, @Param("proname")String proname, @Param("modeltype")String modeltype, @Param("stage0")String stage0, @Param("stage")String stage);
    //��ҵ����
	List<AllItems> operasoundbar(@Param("cusname") String cusname, @Param("proname")String proname, @Param("modeltype")String modeltype, @Param("stage0")String stage0, @Param("stage")String stage);

	List<AllItems> operawoofer(@Param("cusname") String cusname, @Param("proname")String proname, @Param("modeltype")String modeltype, @Param("stage0")String stage0, @Param("stage")String stage);
    //���Ϸ���
	List<AllItems> incomsoundbar(@Param("cusname") String cusname, @Param("proname")String proname, @Param("modeltype")String modeltype, @Param("stage0")String stage0, @Param("stage")String stage);

	List<AllItems> incomwoofer(@Param("cusname") String cusname, @Param("proname")String proname, @Param("modeltype")String modeltype, @Param("stage0")String stage0, @Param("stage")String stage);
    //�ͻ�����
	List<AllItems> cusmsoundbar(@Param("cusname") String cusname, @Param("proname")String proname, @Param("modeltype")String modeltype, @Param("stage0")String stage0, @Param("stage")String stage);

	List<AllItems> cusmwooferlist(@Param("cusname") String cusname, @Param("proname")String proname, @Param("modeltype")String modeltype, @Param("stage0")String stage0, @Param("stage")String stage);
    //��������
	List<AllItems> othsoundbar(@Param("cusname") String cusname, @Param("proname")String proname, @Param("modeltype")String modeltype, @Param("stage0")String stage0, @Param("stage")String stage);

	List<AllItems> othwoofer(@Param("cusname") String cusname, @Param("proname")String proname, @Param("modeltype")String modeltype, @Param("stage0")String stage0, @Param("stage")String stage);

}
