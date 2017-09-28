package cn.edu.hebiace.lxy.gpcps.teacherA.service;

import cn.edu.hebiace.lxy.gpcps.teacherA.pojo.DProject;

public interface DProjectService {

	void saveDProject(DProject dProject);

	DProject findDProjectByKtbh(String ktbh);

	void updateDProject(DProject dProject);

	void submitDProject(DProject dProject);

	void tosaveDProject(DProject dProject);

}
