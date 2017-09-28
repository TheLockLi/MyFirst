package cn.edu.hebiace.lxy.gpcps.teacherA.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.hebiace.lxy.gpcps.teacherA.pojo.QsInfo;
import cn.edu.hebiace.lxy.gpcps.teacherA.pojo.StudentInfo;
import cn.edu.hebiace.lxy.gpcps.teacherA.pojo.TeacherInfo;
import cn.edu.hebiace.lxy.gpcps.teacherA.service.QsInfoService;
import cn.edu.hebiace.lxy.gpcps.teacherA.service.StudentInfoService;

@Controller
public class ChoseStudentController extends BaseController{
	@Resource
	private QsInfoService qsInfoService;
	@Resource
	private StudentInfoService studentService;
	@RequestMapping("/firstChose.action")
	public String firstChose(HttpSession session,Model model) {
		TeacherInfo teacherInfo = (TeacherInfo) session.getAttribute("teacherInfo");
		List<QsInfo> qsInfoList = qsInfoService.findQSByNoChose(teacherInfo.gettCode());
		model.addAttribute("qsInfoList", qsInfoList);
		return "firstChose";
	}
	@RequestMapping("/ChoseStudent.action")
	public String ChoseStudent(String sNo,String xtbh) {
		
		qsInfoService.ChoseStudent(xtbh,sNo);
		studentService.UpdateQS(xtbh,sNo);
		return "ChoseOK";
	}
	@RequestMapping("/saveStudent.action")
	public String saveStudent(String sNo,String xtbh) {
		System.out.println(sNo+":"+xtbh);
		String[] data = sNo.split("/");
		sNo = data[0];
		xtbh = data[1];
		qsInfoService.saveStudent(xtbh,sNo);
		
		return "redirect:/firstChose.action";
	}
	@RequestMapping("/secondChose.action")
	public String SecondChose(HttpSession session,Model model) {
		TeacherInfo teacherInfo = (TeacherInfo) session.getAttribute("teacherInfo");
		List<QsInfo> qsInfoList = qsInfoService.findQSByNoChoseSecond(teacherInfo.gettCode());
		model.addAttribute("qsInfoList", qsInfoList);
		return "secondChose";
	}
}
