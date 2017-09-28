package cn.edu.hebiace.lxy.gpcps.teacherA.service;

import java.util.List;

import cn.edu.hebiace.lxy.gpcps.teacherA.pojo.TeacherInfo;

public interface TeacherInfoService {

	TeacherInfo login(int tCode, String pWord);

	void updateTeacherInfo(TeacherInfo teacherInfo);

	List<TeacherInfo> findAll();

	String queryNameById(String id);

}
