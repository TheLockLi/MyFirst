package cn.edu.hebiace.lxy.gpcps.teacherA.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.hebiace.lxy.gpcps.teacherA.pojo.HTprof;
import cn.edu.hebiace.lxy.gpcps.teacherA.pojo.TeacherInfo;
import cn.edu.hebiace.lxy.gpcps.teacherA.service.TeacherInfoService;

@Controller
public class TeacherInfoController extends BaseController{
	@Resource
	private TeacherInfoService teacherInfoService;
	@RequestMapping("toUpdateTeacherInfo.action")
	public String toUpdateTeacherInfo(Model model,HttpSession session) {
		TeacherInfo teacherInfo = (TeacherInfo) session.getAttribute("teacherInfo");
		HTprof hTprof = (HTprof) session.getAttribute("hTprof");
		model.addAttribute("teacherInfo", teacherInfo);
		model.addAttribute("hTprof", hTprof);
		return "teacherInfo";
	}
	
	@RequestMapping("updateTeacherInfo.action")
	public String updateTeacherInfo(TeacherInfo teacherInfo,Model model,HttpSession session){
		teacherInfoService.updateTeacherInfo(teacherInfo);
		
		return "updateOK";
	}
	
}
