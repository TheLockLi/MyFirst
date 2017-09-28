package cn.edu.hebiace.lxy.gpcps.teacherA.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.edu.hebiace.lxy.gpcps.teacherA.pojo.TeacherInfo;

public interface TeacherInfoMapper {

	TeacherInfo findOne(@Param("tCode") int tCode,@Param("pWord") String pWord);

	void updateTeacherInfo(TeacherInfo teacherInfo);

	List<TeacherInfo> findAll();

	String queryNameById(String id);

}
