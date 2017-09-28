package cn.edu.hebiace.lxy.gpcps.teacherA.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class MyUrlListener implements ServletContextListener{

	public void contextInitialized(ServletContextEvent sce) {
		sce.getServletContext().setAttribute("app", sce.getServletContext().getContextPath());
	}

	public void contextDestroyed(ServletContextEvent sce) {
		sce.getServletContext().removeAttribute("app");
		
	}

}
