package cn.edu.hebiace.lxy.gpcps.teacherA.service;

import cn.edu.hebiace.lxy.gpcps.teacherA.pojo.TMaterial;

public interface TMaterialService {

	void saveTMaterial(TMaterial tMaterial);

	TMaterial findTMaterialByKtbh(String ktbh);

	void submitTMaterial(TMaterial tMaterial);

	void updateTMaterial(TMaterial tMaterial);

	void tosaveTMaterial(TMaterial tMaterial);

}
