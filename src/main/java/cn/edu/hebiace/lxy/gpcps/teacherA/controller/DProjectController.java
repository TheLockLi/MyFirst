package cn.edu.hebiace.lxy.gpcps.teacherA.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.hebiace.lxy.gpcps.teacherA.pojo.DProject;
import cn.edu.hebiace.lxy.gpcps.teacherA.pojo.HTprof;
import cn.edu.hebiace.lxy.gpcps.teacherA.pojo.QsInfo;
import cn.edu.hebiace.lxy.gpcps.teacherA.pojo.TeacherInfo;
import cn.edu.hebiace.lxy.gpcps.teacherA.service.DProjectService;
import cn.edu.hebiace.lxy.gpcps.teacherA.service.QsInfoService;
import cn.edu.hebiace.lxy.gpcps.teacherA.service.TeacherInfoService;

@Controller
public class DProjectController extends BaseController{
	@Resource
	private TeacherInfoService teacherInfoService;
	@Resource
	private DProjectService dProjectService;
	@Resource
	private QsInfoService qsInfoService;
	@RequestMapping("/toRws.action")
	public String toRws(Model model,String ktbh) {
	
		model.addAttribute("ktbh", ktbh);
		
		QsInfo qsInfo = qsInfoService.findQsByXtbh(ktbh);
		model.addAttribute("qsInfo", qsInfo);
		return "DProjectCreate";
	}
	@RequestMapping("/saveDProject.action")
	public String saveDProject(DProject dProject) {
		dProjectService.saveDProject(dProject);
		
		return "redirect:/taskList.action";
	}
	@RequestMapping("/submitDProject.action")
	public String submitDProject(DProject dProject) {
		dProjectService.submitDProject(dProject);
		
		return "redirect:/taskList.action";
	}
	@RequestMapping("/updateRws.action")
	public String updateRws(Model model,String ktbh) {
		DProject dProject = dProjectService.findDProjectByKtbh(ktbh);
		model.addAttribute("dProject", dProject);
		QsInfo qsInfo = qsInfoService.findQsByXtbh(ktbh);
		model.addAttribute("qsInfo", qsInfo);
		System.out.println(dProject);
		return "DProjectUpdate";
	}
	@RequestMapping("/updateDProject.action")
	public String updateDProject(DProject dProject) {
		dProjectService.updateDProject(dProject);
		
		return "redirect:/taskList.action";
	}
	@RequestMapping("/tosaveDProject.action")
	public String tosaveDProject(DProject dProject) {
		dProjectService.tosaveDProject(dProject);
		
		return "redirect:/taskList.action";
	}
	@RequestMapping("/seeRws.action")
	public String seeRws(Model model,String ktbh) {
		DProject dProject = dProjectService.findDProjectByKtbh(ktbh);
		model.addAttribute("dProject", dProject);
		QsInfo qsInfo = qsInfoService.findQsByXtbh(ktbh);
		model.addAttribute("qsInfo", qsInfo);
		return "DProjectSee";
	}
	
}
