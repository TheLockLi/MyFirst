package cn.edu.hebiace.lxy.gpcps.teacherA.mapper;

import cn.edu.hebiace.lxy.gpcps.teacherA.pojo.TMaterial;

public interface TMaterialMapper {

	void saveTMaterial(TMaterial tMaterial);

	TMaterial findTMaterialByKtbh(String ktbh);

	void deleteTMaterial(Integer ktbh);


}
