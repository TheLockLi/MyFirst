package cn.edu.hebiace.lxy.gpcps.teacherA.service;

import java.util.List;

import cn.edu.hebiace.lxy.gpcps.teacherA.pojo.QsInfo;

public interface QsInfoService {

	void saveQsInfo(QsInfo qsInfo);

	List<QsInfo> findQSByNoChose(String tCode);

	List<String> findQSXtbhByNoChose(String tCode);

	void ChoseStudent(String xtbh, String sNo);

	List<QsInfo> findQSByNoChoseSecond(String gettCode);

	List<QsInfo> findAll(String gettCode);

	QsInfo findQsByXtbh(String ktbh);

	void updateQsInfo(QsInfo qsInfo);

	void submitQsInfo(QsInfo qsInfo);

	void tosaveQsInfo(QsInfo qsInfo);

	void saveStudent(String xtbh, String sNo);


}
