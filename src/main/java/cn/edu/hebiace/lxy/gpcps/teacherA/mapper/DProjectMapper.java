package cn.edu.hebiace.lxy.gpcps.teacherA.mapper;

import cn.edu.hebiace.lxy.gpcps.teacherA.pojo.DProject;

public interface DProjectMapper {

	void saveDProject(DProject dProject);

	DProject findDProjectByKtbh(String ktbh);

	void updateDProject(DProject dProject);

}
