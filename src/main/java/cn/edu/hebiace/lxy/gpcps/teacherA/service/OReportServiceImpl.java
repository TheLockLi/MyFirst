package cn.edu.hebiace.lxy.gpcps.teacherA.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.edu.hebiace.lxy.gpcps.teacherA.mapper.OReportMapper;
import cn.edu.hebiace.lxy.gpcps.teacherA.mapper.QsInfoMapper;
import cn.edu.hebiace.lxy.gpcps.teacherA.pojo.OReport;

@Service
public class OReportServiceImpl implements OReportService {
	@Resource
	private OReportMapper oReportMapper;
	@Resource
	private QsInfoMapper qsInfoMapper;

	@Override
	public OReport findOReportByKtbh(String ktbh) {
		
		return oReportMapper.findOReportByKtbh(ktbh);
	}

	@Override
	public void updataOReport(OReport oReport) {
		oReportMapper.updataOReport(oReport);
		qsInfoMapper.updataKtbg(1,oReport.getKtbh());
	}

	@Override
	public void tosaveOReport(OReport oReport) {
		oReportMapper.updataOReport(oReport);
		qsInfoMapper.updataKtbg(3,oReport.getKtbh());
	}
}
