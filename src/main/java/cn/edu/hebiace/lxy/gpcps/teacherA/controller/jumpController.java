package cn.edu.hebiace.lxy.gpcps.teacherA.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class jumpController {
	@RequestMapping("head.action")
	public String tohead() {
		return "head";
	}
	@RequestMapping("left.action")
	public String toLeft() {
		return "left";
	}
	@RequestMapping("right.action")
	public String toRight() {
		return "right";
	}
	
}
