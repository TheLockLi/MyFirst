package cn.edu.hebiace.lxy.gpcps.teacherA.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.edu.hebiace.lxy.gpcps.teacherA.mapper.TeacherInfoMapper;
import cn.edu.hebiace.lxy.gpcps.teacherA.pojo.TeacherInfo;
@Service
public class TeacherInfoServiceImpl implements TeacherInfoService {
	@Resource
	private TeacherInfoMapper teacherInfoMapper;
	@Override
	public TeacherInfo login(int tCode, String pWord) {
	
		return teacherInfoMapper.findOne(tCode,pWord);
	}
	@Override
	public void updateTeacherInfo(TeacherInfo teacherInfo) {
		teacherInfoMapper. updateTeacherInfo(teacherInfo);
		
	}
	@Override
	public List<TeacherInfo> findAll() {
		return teacherInfoMapper.findAll();
	}
	@Override
	public String queryNameById(String id) {
		
		return teacherInfoMapper.queryNameById(id);
	}

}
