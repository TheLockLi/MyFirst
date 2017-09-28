package cn.edu.hebiace.lxy.gpcps.teacherA.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LogoutController {
	@RequestMapping("/logout.action")
	public String logout(HttpServletRequest request,HttpServletResponse response) {
		if (request.getSession(false)!=null) {
			
			Cookie autologinCookie = new Cookie("autologin", "");
			autologinCookie.setMaxAge(0);
			autologinCookie.setPath(request.getContextPath()+"/");
			response.addCookie(autologinCookie);
			
			
			
			
			request.getSession().invalidate();
		}
		return "forward:/index.jsp";
	}
}
