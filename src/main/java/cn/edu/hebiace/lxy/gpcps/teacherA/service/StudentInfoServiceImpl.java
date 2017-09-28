package cn.edu.hebiace.lxy.gpcps.teacherA.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.edu.hebiace.lxy.gpcps.teacherA.mapper.StudentInfoMapper;
import cn.edu.hebiace.lxy.gpcps.teacherA.pojo.StudentInfo;
@Service
public class StudentInfoServiceImpl implements StudentInfoService {
	@Resource
	private StudentInfoMapper studentInfoMapper;
	
	@Override
	public List<StudentInfo> findByfirst(List<String> qsInfoXtbhList) {
		
		return studentInfoMapper.findByfirst(qsInfoXtbhList);
	}
	@Override
	public List<StudentInfo> findBySecond(List<String> qsInfoXtbhList) {
		
		return studentInfoMapper.findBySecond(qsInfoXtbhList);
	}
	@Override
	public void UpdateQS(String xtbh, String sNo) {
		studentInfoMapper.upDateQS(xtbh,sNo);		
	}
	

}
