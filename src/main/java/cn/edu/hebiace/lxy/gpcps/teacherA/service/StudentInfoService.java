package cn.edu.hebiace.lxy.gpcps.teacherA.service;

import java.util.List;

import cn.edu.hebiace.lxy.gpcps.teacherA.pojo.StudentInfo;

public interface StudentInfoService {

	List<StudentInfo> findByfirst(List<String> qsInfoXtbhList);

	List<StudentInfo> findBySecond(List<String> qsInfoXtbhList);

	void UpdateQS(String xtbh, String sNo);
	
	

}
