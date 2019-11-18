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
import application.manager.master.StatusMovementManager;
import application.manager.master.UsersManager;
import application.manager.sourcing.RequestVenderDetailManager;
import application.manager.sourcing.RequestVenderHeadManager;
import application.model.ObjFormJSP;
import application.model.master.StatusInfo;
import application.model.master.StatusMovement;
import application.model.master.Users;
import application.model.sourcing.CompanyContact;
import application.model.sourcing.CompanyProduct;
import application.model.sourcing.RequestVenderDetail;
import application.model.sourcing.RequestVenderHead;
import application.model.utility.MapObject;
import application.service.utility.MyDate;

@Controller
public class RequestVenderController {
	
	private RequestVenderHeadManager requestVenderHeadManager = new RequestVenderHeadManager();
	private RequestVenderDetailManager requestVenderDetailManager = new RequestVenderDetailManager();
	private UsersManager usersManager = new UsersManager();
	private StatusInfoManager statusInfoManager = new StatusInfoManager();
	private StatusMovementManager statusMovementManager = new StatusMovementManager();
	
	@RequestMapping(value = "/list_request_vender", method = RequestMethod.POST)
    public ModelAndView request_vender_post(HttpServletRequest request, HttpServletResponse response, Model model) {
		return this.init(request, response, model);
    }
	
	@RequestMapping(value = "/list_request_vender", method = RequestMethod.GET)
    public ModelAndView request_vender_get(HttpServletRequest request, HttpServletResponse response, Model model) {
		return this.init(request, response, model);
    }
	
	public ModelAndView init(HttpServletRequest request, HttpServletResponse response, Model model) {
		
		HttpSession session = request.getSession(true);
		Users ss_users = (Users)session.getAttribute("users");
		
		List<RequestVenderHead> list_requestVenderHead = requestVenderHeadManager.getAllByUserCreate(ss_users.getUsername());
		
		model.addAttribute("command", list_requestVenderHead);
		
		List<CompanyContact> list_company_contact = new ArrayList<CompanyContact>();
		session.setAttribute("list_company_contact", list_company_contact);
		
		return new ModelAndView("sourcing/request_vender/list_request_vender");
	}
	
	@RequestMapping(value = "/add_edit_request_vender", method = RequestMethod.GET)
    public ModelAndView setData(HttpServletRequest request, HttpServletResponse response, Model model) {
		
		String str_id = request.getParameter("id");
		int id = str_id == null ? 0 : Integer.valueOf(str_id);
		
		HttpSession session = request.getSession(true);
		Users ss_users = (Users)session.getAttribute("users");
		
		RequestVenderHead requestVenderHead = new RequestVenderHead();
		
		if(id > 0) {
			requestVenderHead = this.requestVenderHeadManager.getById(id);
		}else {
			requestVenderHead.setRequest_vender_date(MyDate.STOD(MyDate.GetCurrentDate()) + " " + MyDate.GetCurrentTime());
	    	requestVenderHead.setVat_registration(true);
	    	requestVenderHead.setVat_separately(true);
	    	requestVenderHead.setLegal_entity(true);
	    	requestVenderHead.setTimeadd_date(MyDate.GetCurrentDate());
	    	requestVenderHead.setTimeadd_time(MyDate.GetCurrentTime());
	    	requestVenderHead.setTimeadd_user(ss_users.getUsername());
		}
		
    	requestVenderHead.setTimeupd_date(MyDate.GetCurrentDate());
    	requestVenderHead.setTimeupd_time(MyDate.GetCurrentTime());
    	requestVenderHead.setTimeupd_user(ss_users.getUsername());
    	
    	/*
    	List<CompanyContact> list_company_contact = new ArrayList<CompanyContact>();
    	CompanyContact companyContact = new CompanyContact();
    	companyContact.setName("Jack");
    	List<CompanyContactDetail> list_company_contact_detail = new ArrayList<CompanyContactDetail>();
    	CompanyContactDetail companyContactDetail = new CompanyContactDetail();
    	companyContactDetail.setName("JACK_DETAIL");
    	list_company_contact_detail.add(companyContactDetail);
    	companyContact.setList_company_contact_detail(list_company_contact_detail);
    	list_company_contact.add(companyContact);
    	
    	companyContact = new CompanyContact();
    	companyContact.setName("Jack2");
    	list_company_contact_detail = new ArrayList<CompanyContactDetail>();
    	companyContactDetail = new CompanyContactDetail();
    	companyContactDetail.setName("JACK_DETAIL2");
    	list_company_contact_detail.add(companyContactDetail);
    	companyContact.setList_company_contact_detail(list_company_contact_detail);
    	list_company_contact.add(companyContact);
    	
    	String json = "";
		try {
			ObjectMapper mapper = new ObjectMapper();
			json = mapper.writeValueAsString(list_company_contact);
		} catch (Exception e) {
			e.printStackTrace();
		}
    	model.addAttribute("list_company_contact", json);
    	*/
    	ObjFormJSP objFormJSP = new ObjFormJSP();
    	String json = "";
		try {
			ObjectMapper mapper = new ObjectMapper();
			json = mapper.writeValueAsString(objFormJSP);
		} catch (Exception e) {
			e.printStackTrace();
		}
    	model.addAttribute("objFormJSP", json);
    	 
    	json = "";
    	List<CompanyProduct> list_product_expense = new ArrayList<CompanyProduct>();
    	//code, type, group, kind, price, barcode, name
    	list_product_expense.add(new CompanyProduct("5140013", "11-ค่าใช้จ่ายการดำเนินงาน", "group", "ค่าต่อสัญญาบริการ (สุราษฎร์ธานี)", 0.00, "", ""));
    	list_product_expense.add(new CompanyProduct("5140014", "11-ค่าใช้จ่ายการดำเนินงาน", "group", "ค่าต่อสัญญาบริการ (หาดใหญ่)", 0.00, "", ""));
    	list_product_expense.add(new CompanyProduct("5150001", "11-ค่าใช้จ่ายการดำเนินงาน", "group", "ค่าเบี้ยประกัน+พรบ.+ต่อภาษีรถบรรทุก (สำนักงานใหญ่)", 0.00, "", ""));

		try {
			ObjectMapper mapper = new ObjectMapper();
			json = mapper.writeValueAsString(list_product_expense);
		} catch (Exception e) {
			e.printStackTrace();
		}
    	model.addAttribute("list_product_expense", json);
    	
    	List<CompanyProduct> list_product_asset = new ArrayList<CompanyProduct>();
    	//code, type, group, kind, price, barcode, name
    	list_product_asset.add(new CompanyProduct("6140013", "Computer", "notebook", "dell", 0.00, "", ""));
    	list_product_asset.add(new CompanyProduct("6140014", "Computer", "notebook", "acer", 0.00, "", ""));
    	list_product_asset.add(new CompanyProduct("6150001", "Computer", "notebook", "apple", 0.00, "", ""));

		try {
			ObjectMapper mapper = new ObjectMapper();
			json = mapper.writeValueAsString(list_product_asset);
		} catch (Exception e) {
			e.printStackTrace();
		}
    	model.addAttribute("list_product_asset", json);
    	
    	List<CompanyProduct> list_product_stock = new ArrayList<CompanyProduct>();
    	//code, type, group, kind, price, barcode, name
    	list_product_stock.add(new CompanyProduct("7140013", "อุปกรณ์ในการทำงาน", "สินค้าสิ้นเปลือง", "เทปกาว", 0.00, "", ""));
    	list_product_stock.add(new CompanyProduct("7140014", "อุปกรณ์ในการทำงาน", "สินค้าสิ้นเปลือง", "บับเบิ้ล", 0.00, "", ""));
    	list_product_stock.add(new CompanyProduct("7150001", "อุปกรณ์ในการทำงาน", "สินค้าสิ้นเปลือง", "ฟิมแร็ป", 0.00, "", ""));

		try {
			ObjectMapper mapper = new ObjectMapper();
			json = mapper.writeValueAsString(list_product_stock);
		} catch (Exception e) {
			e.printStackTrace();
		}
    	model.addAttribute("list_product_stock", json);
    	
    	model.addAttribute("command", requestVenderHead);
    	
    	String view = request.getParameter("view");
    	model.addAttribute("view", view);
    	
		return new ModelAndView("sourcing/request_vender/add_edit_request_vender");
    }
    
    @RequestMapping(value="/add_edit_request_vender", method=RequestMethod.POST)
    public ModelAndView save(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("command") RequestVenderHead requestVenderHead)
    {
    	HttpSession session = request.getSession(true);
		Users ss_users = (Users)session.getAttribute("users");
		
    	List<RequestVenderDetail> list_requestVenderDetail = new ArrayList<RequestVenderDetail>();
    	String str_last_row = request.getParameter("last_row");
    	int last_row = Integer.valueOf(str_last_row);
    	for (int i = 1; i <= last_row; i++) {
			String product_code = request.getParameter("product_code_"+i);
			if(product_code == null || "".equals(product_code)) continue;
			
			MapObject<RequestVenderDetail> mapObject = new MapObject<RequestVenderDetail>();
			RequestVenderDetail requestVenderDetail = mapObject.getDataFormRequest(RequestVenderDetail.class, request, "_"+i);
			requestVenderDetail.setTimeadd_date(MyDate.GetCurrentDate());
			requestVenderDetail.setTimeadd_time(MyDate.GetCurrentTime());
			requestVenderDetail.setTimeadd_user(ss_users.getUsername());
			requestVenderDetail.setTimeupd_date(MyDate.GetCurrentDate());
			requestVenderDetail.setTimeupd_time(MyDate.GetCurrentTime());
			requestVenderDetail.setTimeupd_user(ss_users.getUsername());
			list_requestVenderDetail.add(requestVenderDetail);
    	}
    	requestVenderHead.setDetails(list_requestVenderDetail);
    	
    	String head_class = requestVenderHead.getClass().getSimpleName();
    	List<StatusMovement> list_statusMovement = new ArrayList<StatusMovement>();
    	String str_last_approve = request.getParameter("last_approve");
    	int last_approve = Integer.valueOf(str_last_approve);
    	if(requestVenderHead.getId() > 0) {
    		list_statusMovement = this.statusMovementManager.getByHeadId(requestVenderHead.getId(), head_class);
    	}
    	
    	boolean is_new = (list_statusMovement.size() == 0);
    	
    	for (int i = 1; i <= last_approve; i++) {
			String users_id_approve = request.getParameter("users_id_approve_"+i);
			String status_code_approve = request.getParameter("status_code_approve_"+i);
			
			if(users_id_approve == null || "".equals(users_id_approve)) continue;
			
			int users_id = Integer.valueOf(users_id_approve);
			
			StatusInfo statusInfo = this.statusInfoManager.getByStatusCode(requestVenderHead.getMain_code(), status_code_approve);
			Users users = this.usersManager.getById(users_id);
	    	
	    	if(!is_new) {
	    		
	    	}else {
	    		StatusMovement statusMovement = new StatusMovement();
	    		statusMovement.setUsers_id(users_id);
	    		statusMovement.setHead_class(head_class);
	    		statusMovement.setStatus_code(statusInfo.getStatus_code());
	    		statusMovement.setStatus_name(statusInfo.getStatus_name());
	    		statusMovement.setLevel(statusInfo.getLevel());
	    		statusMovement.setMust_approve(statusInfo.isMust_approve());
	    		statusMovement.setUsers_name(users.getName());
	    		statusMovement.setUsers_position(users.getPosition());
	    		statusMovement.setUsers_url_pic(users.getUrl_img());
	    		statusMovement.setUsers_url_sig(users.getUrl_signature());
	    		statusMovement.setTimeadd_date(MyDate.GetCurrentDate());
	    		statusMovement.setTimeadd_time(MyDate.GetCurrentTime());
	    		statusMovement.setTimeadd_user(ss_users.getUsername());
	    		statusMovement.setTimeupd_date(MyDate.GetCurrentDate());
	    		statusMovement.setTimeupd_time(MyDate.GetCurrentTime());
	    		statusMovement.setTimeupd_user(ss_users.getUsername());
	    		
	    		if("00".equals(status_code_approve)) {
		    		statusMovement.setDate_time(MyDate.STOD(MyDate.GetCurrentDate()) + " " + MyDate.GetCurrentTime());
		    		statusMovement.setStamp(true);
					statusMovement.setApprove(false);
	    		}
	    		
	    		list_statusMovement.add(statusMovement);
	    	}
		}
    	requestVenderHead.setList_status_movement(list_statusMovement);

    	requestVenderHeadManager.save(requestVenderHead);
    	
    	 return new ModelAndView("forward:/list_request_vender.htm");
    }
    
    @RequestMapping(value="/send_approve", method=RequestMethod.POST)
    public void sendApprove(HttpServletRequest request, HttpServletResponse response)
    {
    	try {
			BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream()));
		
			String json = "";
			if(br != null){
				json = br.readLine();
				//System.out.println(json);
			}
			
			ObjectMapper mapper = new ObjectMapper();
			ObjFormJSP objFormJSP = mapper.readValue(json, ObjFormJSP.class);
			
			RequestVenderHead requestVenderHead = this.requestVenderHeadManager.getById(objFormJSP.getId());
			requestVenderHead.setSend_approve(true);
			
			List<StatusMovement> list_statusMovement = new ArrayList<StatusMovement>();
			StatusMovement statusMovement = this.statusMovementManager.getByStatusCode(requestVenderHead.getId(), requestVenderHead.getClass().getSimpleName(), "00");
			statusMovement.setSend_approve(true);
			list_statusMovement.add(statusMovement);
			
			statusMovement = this.statusMovementManager.getByStatusCode(requestVenderHead.getId(), requestVenderHead.getClass().getSimpleName(), "01");
			statusMovement.setSend_approve(true);
			list_statusMovement.add(statusMovement);
			
			this.requestVenderHeadManager.update_send_approve(requestVenderHead, list_statusMovement);
			
			List<ObjFormJSP> list = new ArrayList<ObjFormJSP>();
			objFormJSP.setStatus("SUCCESS");
			list.add(objFormJSP);
			
			response.setContentType("application/json");		    
			mapper.writeValue(response.getOutputStream(), list);
		} catch (IOException e) {
			e.printStackTrace();
		}
    }
    
    @RequestMapping(value="/list_approve", method=RequestMethod.POST)
    public void addApprove(HttpServletRequest request, HttpServletResponse response)
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

	    			ObjectMapper mapper = new ObjectMapper();
	    			ObjFormJSP objFormJSP = mapper.readValue(json, ObjFormJSP.class);
	    			int size = strs.length;
	    			int div = Integer.valueOf(objFormJSP.getLevel());
	    			
	    	    	int i = 0;
	    			for (i = 0; i < size-div; i++) {
	    				org += ("".equals(org) ? "" : ".") + strs[i];
					}
	    			
	    			for(int j = 1; j <= (size-i); j++) {
	    				org += ".00";
	    			}
	
	    			List<Users> list_users = new ArrayList<Users>();
	    			list_users = this.usersManager.getByOrgCode(org);
	    			
	    			response.setContentType("application/json");		    
	    			mapper.writeValue(response.getOutputStream(), list_users);
				} catch (IOException e) {
					e.printStackTrace();
				}
    }
    
    @SuppressWarnings("unchecked")
	@RequestMapping(value="/add_company_contact", method=RequestMethod.POST)
    public void addCompanyContact(HttpServletRequest request, HttpServletResponse response)
    {
				try {
					BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream()));
    			
	    			String json = "";
	    			if(br != null){
	    				json = br.readLine();
	    				System.out.println(json);
	    			}
	    			
	    			HttpSession session = request.getSession(true);
	    			List<CompanyContact> list_company_contact = (List<CompanyContact>)session.getAttribute("list_company_contact");

	    			ObjectMapper mapper = new ObjectMapper();
	    			CompanyContact companyContact = mapper.readValue(json, CompanyContact.class);
	    			if(companyContact.getName() != null && !"".equals(companyContact.getName())) {
	    				if(!"".equals(companyContact.getRow_id_del())) {
	    					for (CompanyContact obj : list_company_contact) {
	    						if(companyContact.getRow_id_del().equals(obj.getRow_id_del())) {
	    							list_company_contact.remove(obj);
	    							list_company_contact.add(companyContact);
	    							break;
	    						}
	    					}
	    				}else {
			    			companyContact.setRow_id_del("'company_contact_row_" + list_company_contact.size()+"'");
			    			list_company_contact.add(companyContact);
	    				}
	    			}
	    			
	    			response.setContentType("application/json");		    
	    			mapper.writeValue(response.getOutputStream(), list_company_contact);
				} catch (IOException e) {
					e.printStackTrace();
				}
    }
    
    @SuppressWarnings("unchecked")
	@RequestMapping(value="/edit_del_company_contact", method=RequestMethod.POST)
    public void delCompanyContact(HttpServletRequest request, HttpServletResponse response)
    {
    	try {
    		BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream()));
			
			String json = "";
			if(br != null){
				json = br.readLine();
				System.out.println(json);
			}

			HttpSession session = request.getSession(true);
			List<CompanyContact> list_company_contact = (List<CompanyContact>)session.getAttribute("list_company_contact");
			
			ObjectMapper mapper = new ObjectMapper();
	    	ObjFormJSP obj  = mapper.readValue(json, ObjFormJSP.class);
	    	
	    	if("DELETE".equals(obj.getAction())) {
		    	for (CompanyContact companyContact : list_company_contact) {
					if(obj.getStr1().equals(companyContact.getRow_id_del())) {
						list_company_contact.remove(companyContact);
						break;
					}
				}
		    	
		    	response.setContentType("application/json");		    
				mapper.writeValue(response.getOutputStream(), list_company_contact);
	    	}
	    	
	    	if("EDIT".equals(obj.getAction())) {
	    		CompanyContact companyContact = null;
	    		for (CompanyContact cc : list_company_contact) {
					if(obj.getStr1().equals(cc.getRow_id_del())) {
						companyContact = cc;
						break;
					}
				}
		    	
		    	response.setContentType("application/json");		    
				mapper.writeValue(response.getOutputStream(), companyContact);
	    	}
    	}catch (Exception e) {
    		System.out.println("delCompanyContact[RequestVenderController] ERROR : " + e.getMessage());
		}
    }
}
