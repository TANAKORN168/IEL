package application.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;

import application.model.sourcing.RequestVenderDetail;
import application.model.sourcing.RequestVenderHead;

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
    public ModelAndView setData(HttpServletRequest request, HttpServletResponse response, Model model) {
    	RequestVenderHead requestVenderHead = new RequestVenderHead();
    	requestVenderHead.setId(1);
    	requestVenderHead.setTrade_contact("XXXXXXฟหกฟหกฟหกฟกXX");
    	requestVenderHead.setVat_registration(true);
    	requestVenderHead.setVat_separately(true);
    	requestVenderHead.setLegal_entity(true);
    	
    	requestVenderHead.setTimeadd_date("20191024");
    	requestVenderHead.setTimeadd_time("09:02:00");
    	requestVenderHead.setTimeadd_user("tnk");
    	requestVenderHead.setTimeupd_date("20191024");
    	requestVenderHead.setTimeupd_time("09:02:00");
    	requestVenderHead.setTimeupd_user("tnk");
    	
    	List<RequestVenderDetail> list = new ArrayList<RequestVenderDetail>();
    	RequestVenderDetail obj = new RequestVenderDetail();
    	obj.setId(1);
    	obj.setTimeupd_user("Jack");
    	list.add(obj);
    	
    	obj = new RequestVenderDetail();
    	obj.setId(2);
    	obj.setTimeupd_user("Jack2");
    	list.add(obj);
    	
    	requestVenderHead.setDetails(list);
    	
    	model.addAttribute("command", requestVenderHead);
    	
         return new ModelAndView("sourcing/request_vender/add_edit_request_vender");
    }
    
    @RequestMapping(value="/add_edit_request_vender", method=RequestMethod.POST)
    public void save(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("command") RequestVenderHead requestVenderHead)
    {
    	System.out.println("isCopy_company_registration = >" + requestVenderHead.isCopy_company_registration());
    	System.out.println("iscopy_company_registration = >" + requestVenderHead.isCopy_company_registration());
    	System.out.println("iscopy_company_certificate = >" + requestVenderHead.isCopy_company_registration());
    	System.out.println("iscopy_vat_certificate = >" + requestVenderHead.isCopy_company_registration());
    	System.out.println("ispower_of_attorney = >" + requestVenderHead.isCopy_company_registration());
    	System.out.println("ishouse_registration_authorized = >" + requestVenderHead.isCopy_company_registration());
    	System.out.println("iscopy_bank_statement = >" + requestVenderHead.isCopy_company_registration());
    	System.out.println("iscopy_identification_authorized = >" + requestVenderHead.isCopy_company_registration());
    	System.out.println("isother_specify = >" + requestVenderHead.isCopy_company_registration());
    	
    	String str_last_row = request.getParameter("last_row");
    	int last_row = Integer.valueOf(str_last_row);
    	for (int i = 1; i <= last_row; i++) {
			String product_code = request.getParameter("product_code_"+i);
			if(product_code == null || "".equals(product_code)) continue;
			
			System.out.println(product_code);
		}
    	
    	String str1 = request.getParameter("vat_registration");
    	String str2 = request.getParameter("vat_separately");
    	
    	System.out.println("str1 => " + str1 + " str2 => " + str2);
    }
    
    @RequestMapping(value="/add_detail_request_vender", method=RequestMethod.POST)
    public void addDetail(HttpServletRequest request, HttpServletResponse response)
    {
    	
    	String str = request.getParameter("action");
    	String str2 = request.getParameter("id");
    	String str3 = request.getParameter("details");
    	
    	System.out.println(str + " " + str2);
    	
    	try {
			Class c2 = Class.forName(str3);
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
    	
    	List<RequestVenderDetail> list =  (List<RequestVenderDetail>) (Object)str3;
    	RequestVenderDetail obj = new RequestVenderDetail();
    	obj.setId(1);
    	list.add(obj);
    	
    	response.setContentType("application/json");
    	try {
			new Gson().toJson(list, response.getWriter());
		} catch (JsonIOException | IOException e) {
			e.printStackTrace();
		}
    }
}
