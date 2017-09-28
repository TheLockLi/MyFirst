package cn.edu.hebiace.lxy.gpcps.teacherA.service;

import cn.edu.hebiace.lxy.gpcps.teacherA.pojo.OReport;

public interface OReportService {

	OReport findOReportByKtbh(String ktbh);

	void updataOReport(OReport oReport);

	void tosaveOReport(OReport oReport);

}
