package cn.edu.hebiace.lxy.gpcps.teacherA.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.hebiace.lxy.gpcps.teacherA.pojo.QsInfo;
import cn.edu.hebiace.lxy.gpcps.teacherA.pojo.TMaterial;
import cn.edu.hebiace.lxy.gpcps.teacherA.service.QsInfoService;
import cn.edu.hebiace.lxy.gpcps.teacherA.service.TMaterialService;

@Controller
public class TMaterialController extends BaseController{
	@Resource
	private QsInfoService qsInfoService;
	@Resource
	private TMaterialService tMaterialService;
	
	@RequestMapping("toZqjc.action")
	public String toTMaterial(String ktbh,Model model,HttpSession httpSession) {
		model.addAttribute("ktbh", ktbh);
		QsInfo qsInfo = qsInfoService.findQsByXtbh(ktbh);
		model.addAttribute("qsInfo", qsInfo);
		return "TMaterialCreate";
	}
	@RequestMapping("saveTMaterial.action")
	public String saveTMaterial(TMaterial tMaterial) {
		tMaterialService.saveTMaterial(tMaterial);
		return "redirect:/taskList.action";
	}
	@RequestMapping("submitTMaterial.action")
	public String submitTMaterial(TMaterial tMaterial) {
		tMaterialService.submitTMaterial(tMaterial);
		return "redirect:/taskList.action";
	}
	@RequestMapping("seeZqjc.action")
	public String seeTMaterial(String ktbh,Model model) {
		TMaterial tMaterial = tMaterialService.findTMaterialByKtbh(ktbh);
		model.addAttribute("tMaterial", tMaterial);
		return "TMaterialSee";
	}
	@RequestMapping("updateZqjc.action")
	public String updateZqjc(String ktbh,Model model) {
		TMaterial tMaterial = tMaterialService.findTMaterialByKtbh(ktbh);
		model.addAttribute("tMaterial", tMaterial);
		System.out.println(tMaterial);
		QsInfo qsInfo = qsInfoService.findQsByXtbh(ktbh);
		model.addAttribute("qsInfo", qsInfo);
		return "TMaterialUpdate";
	}
	@RequestMapping("updateTMaterial.action")
	public String updateTMaterial(TMaterial tMaterial) {
		tMaterialService.updateTMaterial(tMaterial);
		return "redirect:/taskList.action";
	}
	@RequestMapping("tosaveTMaterial.action")
	public String tosaveTMaterial(TMaterial tMaterial) {
		System.out.println(tMaterial.getXtbh());
		tMaterialService.tosaveTMaterial(tMaterial);
		return "redirect:/taskList.action";
	}
}
