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
	
	private String main_code = "SC";

	
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
		
		return new ModelAndView("sourcing/request_vender/list_request_vender");
	}
	
	@RequestMapping(value = "/add_edit_request_vender", method = RequestMethod.GET)
    public ModelAndView setData(HttpServletRequest request, HttpServletResponse response, Model model) {
		
		String str_id = request.getParameter("id");
		int id = str_id == null ? 0 : Integer.valueOf(str_id);
		
		HttpSession session = request.getSession(true);
		Users ss_users = (Users)session.getAttribute("users");
		
		List<StatusInfo> list_status = this.statusInfoManager.getByMainCode(main_code);
		
		RequestVenderHead requestVenderHead = new RequestVenderHead();
		List<StatusMovement> list_status_movement = new ArrayList<StatusMovement>();
		List<RequestVenderDetail> list_detail = new ArrayList<RequestVenderDetail>();
		
		if(id > 0) {
			requestVenderHead = this.requestVenderHeadManager.getById(id);
			list_status_movement = this.statusMovementManager.getByHeadId(requestVenderHead.getId(), requestVenderHead.getClass().getSimpleName());
			list_detail = this.requestVenderDetailManager.getByHeadId(requestVenderHead.getId());
		}else {
			requestVenderHead.setRequest_vender_date(MyDate.STOD(MyDate.GetCurrentDate()) + " " + MyDate.GetCurrentTime());
	    	requestVenderHead.setVat_registration(true);
	    	requestVenderHead.setVat_separately(true);
	    	requestVenderHead.setLegal_entity(true);
	    	requestVenderHead.setTimeadd_date(MyDate.GetCurrentDate());
	    	requestVenderHead.setTimeadd_time(MyDate.GetCurrentTime());
	    	requestVenderHead.setTimeadd_user(ss_users.getUsername());
	    	
	    	StatusMovement statusMovement;
	    	int loop = 1;
	    	for (StatusInfo statusInfo : list_status) {
	    		
	    		statusMovement = new StatusMovement();
	        	statusMovement.setHead_class(requestVenderHead.getClass().getSimpleName());
	        	statusMovement.setStatus_code(statusInfo.getStatus_code());
	        	statusMovement.setStatus_name(statusInfo.getStatus_name());
	        	statusMovement.setMust_approve(statusInfo.isMust_approve());
	        	statusMovement.setLevel(statusInfo.getLevel());
	        	
	        	if(loop == 1) {
		        	statusMovement.setUsers_id(ss_users.getId());
		        	statusMovement.setUsers_name(ss_users.getName());
		        	statusMovement.setUsers_position(ss_users.getPosition());
		        	statusMovement.setUsers_url_pic(ss_users.getUrl_img());
		        	statusMovement.setUsers_url_sig(ss_users.getUrl_signature());
		        	statusMovement.setStamp(true);
		        	statusMovement.setDate_time(MyDate.STOD(MyDate.GetCurrentDate()) + " " + MyDate.GetCurrentTime());
		        	
		        	requestVenderHead.setStatus_code(statusInfo.getStatus_code());
		        	requestVenderHead.setStatus_name(statusInfo.getStatus_name());
	        	}
		        	
	        	list_status_movement.add(statusMovement);
	        	loop++;
			}
	    	
	    	RequestVenderDetail detail = new RequestVenderDetail();
	    	list_detail.add(detail);
		}
		
		requestVenderHead.setList_status(list_status);
		
    	requestVenderHead.setTimeupd_date(MyDate.GetCurrentDate());
    	requestVenderHead.setTimeupd_time(MyDate.GetCurrentTime());
    	requestVenderHead.setTimeupd_user(ss_users.getUsername());
    	
    	String json = "";
		try {
			ObjectMapper mapper = new ObjectMapper();
			json = mapper.writeValueAsString(list_status_movement);
		} catch (Exception e) {
			e.printStackTrace();
		}
    	model.addAttribute("list_status_movement", json);
    	
    	json = "";
		try {
			ObjectMapper mapper = new ObjectMapper();
			json = mapper.writeValueAsString(list_detail);
		} catch (Exception e) {
			e.printStackTrace();
		}
    	model.addAttribute("list_detail", json);
    	
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
			
			StatusInfo statusInfo = this.statusInfoManager.getByStatusCode(main_code, status_code_approve);
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
}
