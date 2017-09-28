package cn.edu.hebiace.lxy.gpcps.teacherA.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.hebiace.lxy.gpcps.teacherA.pojo.HTprof;
import cn.edu.hebiace.lxy.gpcps.teacherA.pojo.TeacherInfo;
import cn.edu.hebiace.lxy.gpcps.teacherA.service.HTprofService;
import cn.edu.hebiace.lxy.gpcps.teacherA.service.TeacherInfoService;

@Controller
public class LoginController extends BaseController{
	@Resource
	private TeacherInfoService teacherInfoService;
	@Resource
	private HTprofService hTprofService;
	@RequestMapping("toLogin.action")
	public String toLogin() {
		return "login";
	}
	@RequestMapping("/login.action")
	public String login(Model model,HttpServletRequest request,HttpServletResponse response,int tCode,String pWord,
			String remname,String autologin) {
		
		
		if("true".equals(remname)){
			Cookie cookie = new Cookie("remname",tCode+"");
			cookie.setPath(request.getContextPath()+"/");
			cookie.setMaxAge(30*24*3600);
			response.addCookie(cookie);
		
		
		}else {
			Cookie cookie = new Cookie("remname", "");
			cookie.setPath(request.getContextPath()+"/");
			cookie.setMaxAge(0);
			response.addCookie(cookie);
		}
		TeacherInfo teacherInfo = teacherInfoService.login(tCode,pWord);
		HTprof hTprof;
		if (teacherInfo==null) {
			
			model.addAttribute("msg", "账号或密码不正确");
			return "login";
		}else {
			hTprof = hTprofService.findOne(tCode);
			if ("true".equals(autologin)) {
				Cookie autologinCookie = null;
				try {
					autologinCookie = new Cookie("autologin", URLEncoder.encode(tCode+":"+pWord,"utf-8"));
					autologinCookie.setMaxAge(60*60*24*30);
					autologinCookie.setPath(request.getContextPath()+"/");
					response.addCookie(autologinCookie);
				} catch (UnsupportedEncodingException e) {
					e.printStackTrace();
				}
			}else {
				Cookie autologinCookie = new Cookie("autologin", "");
				autologinCookie.setMaxAge(0);
				autologinCookie.setPath(request.getContextPath()+"/");
				response.addCookie(autologinCookie);
			}
			
			request.getSession().setAttribute("teacherInfo", teacherInfo);
			request.getSession().setAttribute("hTprof", hTprof);
			return "manage";
		
		
	}
	}
}
