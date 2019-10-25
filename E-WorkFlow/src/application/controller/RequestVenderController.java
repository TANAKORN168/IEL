package application.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import application.model.sourcing.RequestVenderHead;
import application.model.utility.MapObject;
import application.service.utility.MyTimestamp;

@Controller
public class RequestVenderController {

	
	@RequestMapping(value = "/list_request_vender", method = RequestMethod.POST)
    public ModelAndView request_vender_post(HttpServletRequest request, HttpServletResponse response) {
		return this.init(request, response);
    }
	
	@RequestMapping(value = "/list_request_vender", method = RequestMethod.GET)
    public ModelAndView request_vender_get(HttpServletRequest request, HttpServletResponse response) {
		return this.init(request, response);
    }
	
	public ModelAndView init(HttpServletRequest request, HttpServletResponse response) {
		return new ModelAndView("sourcing/request_vender/list_request_vender");
	}
	
	@RequestMapping(value = "/add_edit_request_vender", method = RequestMethod.GET)
    public ModelAndView bindData(HttpServletRequest request, HttpServletResponse response, Model model) {
    	RequestVenderHead requestVenderHead = new RequestVenderHead();
    	requestVenderHead.setId(1);
    	requestVenderHead.setTrade_contact("XXXXXXXX");
    	requestVenderHead.setVat_registration(true);
    	requestVenderHead.setVat_separately(true);
    	
    	MyTimestamp mt = new MyTimestamp("20191024", "09:02:00", "tnk");
    	requestVenderHead.setTimeadd(mt);
    	mt = new MyTimestamp("20191024", "09:02:00", "tnk1");
    	requestVenderHead.setTimeupd(mt);
    	
    	model.addAttribute("command", requestVenderHead);
    	
         return new ModelAndView("sourcing/request_vender/add_edit_request_vender");
    }
    
    @RequestMapping(value="/add_edit_request_vender", method=RequestMethod.POST)
    public void save(HttpServletRequest request, HttpServletResponse response)
    {
    	String str1 = request.getParameter("vat_registration");
    	String str2 = request.getParameter("vat_separately");
    	
    	System.out.println("str1 => " + str1 + " str2 => " + str2);
    	
    	MapObject<Object> obj = new MapObject<Object>();
    	RequestVenderHead requestVenderHead = (RequestVenderHead) obj.getDataFormRequest(RequestVenderHead.class, request);
        int i = 0;
    }
}
