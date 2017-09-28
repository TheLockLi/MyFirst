package cn.edu.hebiace.lxy.gpcps.teacherA.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.hebiace.lxy.gpcps.teacherA.pojo.HTprof;
import cn.edu.hebiace.lxy.gpcps.teacherA.pojo.QsInfo;
import cn.edu.hebiace.lxy.gpcps.teacherA.pojo.TeacherInfo;
import cn.edu.hebiace.lxy.gpcps.teacherA.service.QsInfoService;
import cn.edu.hebiace.lxy.gpcps.teacherA.service.TeacherInfoService;

@Controller
public class QsInfoController extends BaseController{
	@Resource
	private QsInfoService qsInfoService;
	@Resource
	private TeacherInfoService teacherInfoService;
	@RequestMapping("applyTasks.action")
	public String applyTasks(Model model,HttpSession session) {
		TeacherInfo teacherInfo = (TeacherInfo) session.getAttribute("teacherInfo");
		HTprof hTprof = (HTprof) session.getAttribute("hTprof");
		model.addAttribute("teacherInfo", teacherInfo);
		model.addAttribute("hTprof", hTprof);
		List<TeacherInfo> teacherInfoList =  teacherInfoService.findAll();
		model.addAttribute("teacherInfoList", teacherInfoList);
		return "applyTask";
	}
	@RequestMapping("saveApplyTask.action")
	public String saveApplyTask(QsInfo qsInfo) {
		qsInfoService.saveQsInfo(qsInfo);
		
		return "saveOK";
	}
	@RequestMapping("submitApplyTask.action")
	public String submitApplyTask(QsInfo qsInfo) {
		qsInfoService.submitQsInfo(qsInfo);
		
		return "submitOK";
	}
	@RequestMapping("/taskList.action")
	public String taskList(Model model,HttpSession session) {
		TeacherInfo teacherInfo = (TeacherInfo) session.getAttribute("teacherInfo");
		HTprof hTprof = (HTprof) session.getAttribute("hTprof");
		model.addAttribute("teacherInfo", teacherInfo);
		model.addAttribute("hTprof", hTprof);
		List<QsInfo>qsInfoList = qsInfoService.findAll(teacherInfo.gettCode());
		model.addAttribute("qsInfoList", qsInfoList);
		return "QsList";
	}
	@RequestMapping("updateQsInfo.action")
	public String updateQsInfo(String ktbh,Model model) {
		QsInfo qsInfo = qsInfoService.findQsByXtbh(ktbh);
		List<TeacherInfo> teacherList = teacherInfoService.findAll();
		model.addAttribute("qsInfo", qsInfo);
		model.addAttribute("teacherList", teacherList);
		return "QsInfoUpdate";
	}
	@RequestMapping("seeQsInfo.action")
	public String seeQsInfo(String ktbh,Model model, HttpServletResponse response) {
		QsInfo qsInfo = qsInfoService.findQsByXtbh(ktbh);
		String fdjs = teacherInfoService.queryNameById(qsInfo.getFdjs().toString());
		model.addAttribute("qsInfo", qsInfo);
		model.addAttribute("fdjs", fdjs);
		return "QsInfoSee";
	}
	@RequestMapping("toupdateQsInfo.action")
	public String toupdateQsInfo(QsInfo qsInfo) {
		
		qsInfoService.updateQsInfo(qsInfo);
		return "redirect:/taskList.action";
	}
	@RequestMapping("tosaveQsInfo.action")
	public String tosaveQsInfo(QsInfo qsInfo) {
		
		qsInfoService.tosaveQsInfo(qsInfo);
		return "redirect:/taskList.action";
	}
	
}
