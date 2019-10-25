package application.controller;

import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@RequestMapping(value = "/home", method = RequestMethod.POST)
    public ModelAndView home_post(HttpServletRequest request, HttpServletResponse response) {
         return new ModelAndView("home");
    }
    
	@SuppressWarnings("rawtypes")
	@RequestMapping(value = "/home", method = RequestMethod.GET)
    public ModelAndView home_get(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Enumeration enumeration = request.getParameterNames();
		Map<String, Object> map = new HashMap<String, Object>();
		while (enumeration.hasMoreElements()) {
			String parameterName = (String) enumeration.nextElement();
			String xx = request.getParameter(parameterName);
			map.put(parameterName, xx);
		}
		
		for (Entry<String, Object> entry : map.entrySet()) {
			System.out.println("Key : " + entry.getKey() + " Value : " + entry.getValue());
		}
		
		return new ModelAndView("home");
    }

}
