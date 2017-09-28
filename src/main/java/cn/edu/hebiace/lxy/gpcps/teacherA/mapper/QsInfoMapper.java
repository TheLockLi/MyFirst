package cn.edu.hebiace.lxy.gpcps.teacherA.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.edu.hebiace.lxy.gpcps.teacherA.pojo.QsInfo;

public interface QsInfoMapper {

	void saveQsInfo(QsInfo qsInfo);

	List<QsInfo> findQSByNoChose(String tCode);

	List<String> findQSXtbhByNoChose(String tCode);

	void updateChoseStudent(@Param(value = "xtbh") String xtbh,@Param(value="sNo") String sNo,@Param("flag") Integer flag);

	List<QsInfo> findAll(String tCode);

	void updateSRws(@Param("sRws") Integer sRws,@Param("ktbh") Integer ktbh);

	QsInfo findQsByXtbh(String ktbh);

	void updateSZqjc(@Param("sZqjc") Integer sZqjc,@Param("ktbh") Integer ktbh);
	
	void updateQsInfo(QsInfo qsInfo);

	void updataKtbg(@Param("sKtbg") int i,@Param("ktbh") Integer ktbh);

	void saveChoseStudent(@Param(value = "xtbh") String xtbh,@Param(value="sNo")  String sNo);

}
