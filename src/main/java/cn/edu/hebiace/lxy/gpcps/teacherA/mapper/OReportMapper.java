package cn.edu.hebiace.lxy.gpcps.teacherA.mapper;

import cn.edu.hebiace.lxy.gpcps.teacherA.pojo.OReport;

public interface OReportMapper {

	OReport findOReportByKtbh(String ktbh);

	void updataOReport(OReport oReport);

}
