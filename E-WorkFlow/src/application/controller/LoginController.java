package application.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import application.manager.UsersManager;
import application.model.master.Users;

@Controller
public class LoginController {
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView login_post(HttpServletRequest request, HttpServletResponse response) {
		return this.init(request, response);
    }
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login_get(HttpServletRequest request, HttpServletResponse response) {
		return this.init(request, response);
    }
	
	public ModelAndView init(HttpServletRequest request, HttpServletResponse response) {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		String error = "";
		
		if(username == null || "".equals(username)) {
			return new ModelAndView("login");
		}else {
			UsersManager usersManager = new UsersManager();
			Users users = usersManager.getByUsernamePassword(username, password);
			if(users == null) {
				error = "Email หรือ Password ไม่ถูกต้องกรุณาตรวจสอบ !!!";
				return new ModelAndView("login", "error", error);
			}else {
				HttpSession session = request.getSession();
				session.setAttribute("users", users);
				return new ModelAndView("home");
			}
		}
	}
}