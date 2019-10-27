package application.controller.sourcing;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;

import application.manager.master.StatusInfoManager;
import application.manager.master.UsersManager;
import application.model.ObjFormJSP;
import application.model.master.StatusInfo;
import application.model.master.Users;
import application.model.sourcing.RequestVenderDetail;
import application.model.sourcing.RequestVenderHead;
import application.model.utility.MapObject;
import application.service.utility.MyDate;

@Controller
public class RequestVenderController {
	
	private UsersManager userManager = new UsersManager();
	private StatusInfoManager statusInfoManager = new StatusInfoManager();

	
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
    	requestVenderHead.setVat_registration(true);
    	requestVenderHead.setVat_separately(true);
    	requestVenderHead.setLegal_entity(true);
    	requestVenderHead.setStatus_code("00");
    	
    	HttpSession session = request.getSession(true);
		Users ss_users = (Users)session.getAttribute("users");
    	
    	requestVenderHead.setTimeadd_date(MyDate.GetCurrentDate());
    	requestVenderHead.setTimeadd_time(MyDate.GetCurrentTime());
    	requestVenderHead.setTimeadd_user(ss_users.getName());
    	requestVenderHead.setTimeupd_date(MyDate.GetCurrentDate());
    	requestVenderHead.setTimeupd_time(MyDate.GetCurrentTime());
    	requestVenderHead.setTimeupd_user(ss_users.getName());
    	
    	List<StatusInfo> list_status = this.statusInfoManager.getByMainCode("SC");
    	requestVenderHead.setList_status(list_status);
    	
    	
    	
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
    	
    	List<RequestVenderDetail> list_requestVenderDetail = new ArrayList<RequestVenderDetail>();
    	String str_last_row = request.getParameter("last_row");
    	int last_row = Integer.valueOf(str_last_row);
    	for (int i = 1; i <= last_row; i++) {
			String product_code = request.getParameter("product_code_"+i);
			if(product_code == null || "".equals(product_code)) continue;
			
			MapObject<RequestVenderDetail> mapObject = new MapObject<RequestVenderDetail>();
			RequestVenderDetail requestVenderDetail = mapObject.getDataFormRequest(RequestVenderDetail.class, request, "_"+i);
			list_requestVenderDetail.add(requestVenderDetail);
    	}
    	
    	String str1 = request.getParameter("vat_registration");
    	String str2 = request.getParameter("vat_separately");
    	
    	System.out.println("str1 => " + str1 + " str2 => " + str2);
    }
    
    @RequestMapping(value="/list_approve", method=RequestMethod.POST)
    public void addDetail(HttpServletRequest request, HttpServletResponse response)
    {
				try {
					BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream()));
    			
	    			String json = "";
	    			if(br != null){
	    				json = br.readLine();
	    				//System.out.println(json);
	    			}
	    			
	    			HttpSession session = request.getSession(true);
	    			Users ss_users = (Users)session.getAttribute("users");
	    			String org_code = ss_users.getOrg_code().replace(".00", "");
	    			String[] strs = org_code.split("\\.");
	    			String org = "";
	    			int size = strs.length;
	    			int div = 0;

	    			ObjectMapper mapper = new ObjectMapper();
	    			ObjFormJSP objFormJSP = mapper.readValue(json, ObjFormJSP.class);

	    	    	if("APPROVE".equals(objFormJSP.getAction())) {
	    	    		div = 2;
	    	    	}
	    	    	
	    	    	if("CHECK".equals(objFormJSP.getAction())) {
	    	    		div = 1;
	    	    	}
	    			
	    	    	int i = 0;
	    			for (i = 0; i < size-div; i++) {
	    				org += ("".equals(org) ? "" : ".") + strs[i];
					}
	    			
	    			for(int j = 1; j <= (5-i); j++) {
	    				org += ".00";
	    			}
	
	    			List<Users> list_users = new ArrayList<Users>();
	    			list_users = this.userManager.getByOrgCode(org);
	    			
	    			response.setContentType("application/json");		    
	    			mapper.writeValue(response.getOutputStream(), list_users);
				} catch (IOException e) {
					e.printStackTrace();
				}
    }
}
