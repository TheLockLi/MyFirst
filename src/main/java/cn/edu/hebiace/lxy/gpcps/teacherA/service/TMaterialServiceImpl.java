package cn.edu.hebiace.lxy.gpcps.teacherA.service;

import java.util.Random;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.edu.hebiace.lxy.gpcps.teacherA.mapper.QsInfoMapper;
import cn.edu.hebiace.lxy.gpcps.teacherA.mapper.TMaterialMapper;
import cn.edu.hebiace.lxy.gpcps.teacherA.pojo.TMaterial;

@Service
public class TMaterialServiceImpl implements TMaterialService{
	@Resource
	private TMaterialMapper tMaterialMapper;
	@Resource
	private QsInfoMapper qsInfoMapper;
	@Override
	public void saveTMaterial(TMaterial tMaterial) {
		tMaterial.setXtbh(new Random().nextInt(1000));
		tMaterialMapper.saveTMaterial(tMaterial);
		qsInfoMapper.updateSZqjc(2, tMaterial.getKtbh());
	}
	@Override
	public TMaterial findTMaterialByKtbh(String ktbh) {
		
		return tMaterialMapper.findTMaterialByKtbh(ktbh);
	}
	@Override
	public void submitTMaterial(TMaterial tMaterial) {
		tMaterial.setXtbh(new Random().nextInt(1000));
		tMaterialMapper.saveTMaterial(tMaterial);
		qsInfoMapper.updateSZqjc(1, tMaterial.getKtbh());
		
	}
	@Override
	public void updateTMaterial(TMaterial tMaterial) {
		tMaterialMapper.deleteTMaterial(tMaterial.getKtbh());
		qsInfoMapper.updateSZqjc(1, tMaterial.getKtbh());
		tMaterialMapper.saveTMaterial(tMaterial);
	}
	@Override
	public void tosaveTMaterial(TMaterial tMaterial) {
		System.out.println(tMaterial.getKtbh());
		tMaterialMapper.deleteTMaterial(tMaterial.getKtbh());
		qsInfoMapper.updateSZqjc(2, tMaterial.getKtbh());
		tMaterialMapper.saveTMaterial(tMaterial);
		
	}

}
