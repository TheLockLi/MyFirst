package cn.edu.hebiace.lxy.gpcps.teacherA.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.hebiace.lxy.gpcps.teacherA.pojo.OReport;
import cn.edu.hebiace.lxy.gpcps.teacherA.pojo.QsInfo;
import cn.edu.hebiace.lxy.gpcps.teacherA.service.OReportService;
import cn.edu.hebiace.lxy.gpcps.teacherA.service.QsInfoService;

@Controller
public class OReportController {
	@Resource
	private OReportService oReportService;
	@Resource
	private QsInfoService qsInfoService;
	@RequestMapping("toKtbg.action")
	public String saveOReport(String ktbh,Model model) {
		OReport oReport = oReportService.findOReportByKtbh(ktbh);
		model.addAttribute("oReport", oReport);
		QsInfo qsInfo = qsInfoService.findQsByXtbh(ktbh);
		model.addAttribute("qsInfo", qsInfo);
		return "OReportTeacher";
	}
	@RequestMapping("/updateOReport.action")
	public String updateOReport(OReport oReport) {
		oReportService.updataOReport(oReport);
		return "redirect:/taskList.action";
	}
	@RequestMapping("/tosaveOReport.action")
	public String tosaveOReport(OReport oReport) {
		oReportService.tosaveOReport(oReport);
		return "redirect:/taskList.action";
	}
	@RequestMapping("updateKtbg.action")
	public String updateOReport(String ktbh,Model model) {
		OReport oReport = oReportService.findOReportByKtbh(ktbh);
		model.addAttribute("oReport", oReport);
		QsInfo qsInfo = qsInfoService.findQsByXtbh(ktbh);
		model.addAttribute("qsInfo", qsInfo);
		return "OReportUpdate";
	}
	@RequestMapping("seeKtbg.action")
	public String seeOReport(String ktbh,Model model) {
		OReport oReport = oReportService.findOReportByKtbh(ktbh);
		model.addAttribute("oReport", oReport);
		QsInfo qsInfo = qsInfoService.findQsByXtbh(ktbh);
		model.addAttribute("qsInfo", qsInfo);
		return "OReportSee";
	}

}
