package cn.edu.hebiace.lxy.gpcps.teacherA.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.edu.hebiace.lxy.gpcps.teacherA.mapper.HTprofMapper;
import cn.edu.hebiace.lxy.gpcps.teacherA.pojo.HTprof;

@Service
public class HTprofServiceImpl implements HTprofService {
	@Resource
	private HTprofMapper hTprofMapper;
	@Override
	public HTprof findOne(int tCode) {
		
		return hTprofMapper.findOne(tCode);
	}

}
