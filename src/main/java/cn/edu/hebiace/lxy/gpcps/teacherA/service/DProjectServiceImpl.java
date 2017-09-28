package cn.edu.hebiace.lxy.gpcps.teacherA.service;

import java.util.Random;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.edu.hebiace.lxy.gpcps.teacherA.mapper.DProjectMapper;
import cn.edu.hebiace.lxy.gpcps.teacherA.mapper.QsInfoMapper;
import cn.edu.hebiace.lxy.gpcps.teacherA.pojo.DProject;

@Service
public class DProjectServiceImpl implements DProjectService{
	@Resource
	private DProjectMapper dProjectMapper;
	@Resource
	private QsInfoMapper qsInfoMapper;
	@Override
	public void saveDProject(DProject dProject) {
		dProject.setXtbh(new Random().nextInt(1010));
		
		dProjectMapper.saveDProject(dProject);
		qsInfoMapper.updateSRws(3,dProject.getKtbh());
		
	}
	@Override
	public void submitDProject(DProject dProject) {
		dProject.setXtbh(new Random().nextInt(1010));
		
		dProjectMapper.saveDProject(dProject);
		qsInfoMapper.updateSRws(1,dProject.getKtbh());
		
	}
	@Override
	public DProject findDProjectByKtbh(String ktbh) {
		return dProjectMapper.findDProjectByKtbh(ktbh);
		
	}
	@Override
	public void updateDProject(DProject dProject) {
		dProjectMapper.updateDProject(dProject);
		qsInfoMapper.updateSRws(1,dProject.getKtbh());
	}
	@Override
	public void tosaveDProject(DProject dProject) {
		dProjectMapper.updateDProject(dProject);
		qsInfoMapper.updateSRws(3,dProject.getKtbh());
		
	}
	

}
