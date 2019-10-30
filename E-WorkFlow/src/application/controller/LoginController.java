package application.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import application.manager.master.MapMenuManager;
import application.manager.master.StatusMovementManager;
import application.manager.master.UsersManager;
import application.model.master.Menu;
import application.model.master.StatusMovement;
import application.model.master.Users;

@Controller
public class LoginController {
	
	private MapMenuManager mapMenuManager = new MapMenuManager();
	private StatusMovementManager statusMovementManager = new StatusMovementManager();
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView login_post(HttpServletRequest request, HttpServletResponse response) {
		return this.init(request, response);
    }
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login_get(HttpServletRequest request, HttpServletResponse response) {
		return this.init(request, response);
    }
	
	@SuppressWarnings("unchecked")
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
				List<Menu> list_menu = (List<Menu>)(Object)mapMenuManager.getByGroupMenuCode(users.getGroup_menu_code());
				
				HttpSession session = request.getSession();
				session.setAttribute("users", users);
				session.setAttribute("list_menu", list_menu);
				
				ModelAndView model = new ModelAndView("forward:/home.htm");
				
				if(users.getLevel() > 1) {
					List<StatusMovement> list_movement = this.statusMovementManager.getDataApproveAtDayWait(users.getId());
					session.setAttribute("approve_count", list_movement.size());
					model = new ModelAndView("forward:/approve_list.htm");
				}
				
				return model;
			}
		}
	}
}
