package application.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DashboardController {
	
    @RequestMapping("/dashboard")
    public ModelAndView dashboard() {
         String message = "Hello World, Spring 3.0!";
         return new ModelAndView("dashboard", "message", message);
    }
}
