package cn.edu.hebiace.lxy.gpcps.teacherA.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.edu.hebiace.lxy.gpcps.teacherA.pojo.StudentInfo;

public interface StudentInfoMapper {

	List<StudentInfo> findByfirst(List<String> qsInfoXtbhList);

	List<StudentInfo> findBySecond(List<String> qsInfoXtbhList);

	List<StudentInfo> findByQsFirst(Integer qsxtbh);

	List<StudentInfo> findByQsSecond(Integer qsxtbh);

	void upDateQS(@Param("xtbh") String xtbh,@Param("sNo") String sNo);
	
	
	List<StudentInfo> findByQsCollect(Integer qsxtbh);

}
