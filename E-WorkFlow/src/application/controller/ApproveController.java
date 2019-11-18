package application.controller;

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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;

import application.manager.master.GroupApproveManager;
import application.manager.master.StatusMovementManager;
import application.manager.master.UsersManager;
import application.manager.sourcing.RequestVenderHeadManager;
import application.model.ObjFormJSP;
import application.model.master.GroupApprove;
import application.model.master.ObjectApprove;
import application.model.master.StatusMovement;
import application.model.master.Users;
import application.model.sourcing.RequestVenderHead;
import application.service.utility.MyDate;

@Controller
public class ApproveController {
	
	private StatusMovementManager statusMovementManager = new StatusMovementManager();
	private RequestVenderHeadManager requestVenderHeadManager = new RequestVenderHeadManager();
	private GroupApproveManager groupApproveManager = new GroupApproveManager();
	private UsersManager usersManager = new UsersManager();
	
	@RequestMapping(value = "/approve_list", method = RequestMethod.POST)
    public ModelAndView post(HttpServletRequest request, HttpServletResponse response, Model model) {
		return this.init(request, response, model);
    }
	
	@RequestMapping(value = "/approve_list", method = RequestMethod.GET)
    public ModelAndView get(HttpServletRequest request, HttpServletResponse response, Model model) {
		return this.init(request, response, model);
    }
	
	public ModelAndView init(HttpServletRequest request, HttpServletResponse response, Model model) {
		
		HttpSession session = request.getSession(true);
		Users ss_users = (Users)session.getAttribute("users");
		
		List<StatusMovement> list_total = this.statusMovementManager.getDataApproveAtDayAll(ss_users.getId());
		List<StatusMovement> list_wait = this.statusMovementManager.getDataApproveAtDayWait(ss_users.getId());
		List<StatusMovement> list_approve = this.statusMovementManager.getDataApproveAtDayApprove(ss_users.getId(), true);
		List<StatusMovement> list_not_approve = this.statusMovementManager.getDataApproveAtDayApprove(ss_users.getId(), false);
		
//		model.addAttribute("list_total_count", list_total.size());
//		model.addAttribute("list_wait_count", list_wait.size());
//		model.addAttribute("list_approve_count", list_approve.size());
//		model.addAttribute("list_not_approve_count", list_not_approve.size());
		
		model.addAttribute("list_total_count", 2);
		model.addAttribute("list_wait_count", 2);
		model.addAttribute("list_approve_count", 0);
		model.addAttribute("list_not_approve_count", 0);
		
		model.addAttribute("current_date", MyDate.STOD(MyDate.GetCurrentDate()));
		
		ModelAndView modelAndView = new ModelAndView("approve_list");
		return modelAndView;
	}
	
	@RequestMapping(value = "/approve_sub_list", method = RequestMethod.GET)
    public ModelAndView sub_list_get(HttpServletRequest request, HttpServletResponse response, Model model) {
		return sub_list_init(request, response, model);
	}
	
	@RequestMapping(value = "/approve_sub_list", method = RequestMethod.POST)
    public ModelAndView sub_list_post(HttpServletRequest request, HttpServletResponse response, Model model) {
		return sub_list_init(request, response, model);
	}
	
    public ModelAndView sub_list_init(HttpServletRequest request, HttpServletResponse response, Model model) {
		
		HttpSession session = request.getSession(true);
		Users ss_users = (Users)session.getAttribute("users");
		
		String head_class_b = "";
		List<StatusMovement> list_wait = this.statusMovementManager.getDataApproveAtDayWait(ss_users.getId());
		List<GroupApprove>list_group_approve = new ArrayList<GroupApprove>();
		GroupApprove groupApprove = null;
		for (StatusMovement statusMovement : list_wait) {
			
			String head_class = statusMovement.getHead_class();
			if(!head_class.equals(head_class_b)) {
				groupApprove = this.groupApproveManager.getByHeadClass(head_class);
				list_group_approve.add(groupApprove);
				head_class_b = head_class;
			}
			
			ObjectApprove objectApprove = new ObjectApprove();
			int id = 0;
			String code = "";
			String discription = "";
			String url_link = "";
			if("RequestVenderHead".equals(head_class)) {
				RequestVenderHead obj = this.requestVenderHeadManager.getById(statusMovement.getHead_id());
				id = obj.getId();
				code = obj.getRequest_vender_code();
				discription = "ขออนุมัติขึ้นทะเบียน " + obj.getTrade_contact();
				url_link = "add_edit_request_vender.htm";
			}
			
			objectApprove.setId(id);
			objectApprove.setCode(code);
			objectApprove.setDiscription(discription);
			objectApprove.setUrl_link(url_link);
			
			groupApprove.getList_object_approve().add(objectApprove);
		}
		
		groupApprove = new GroupApprove();
		groupApprove.setName("ใบขอซื้อ (PR)");
		groupApprove.setHead_class("PR");
		
		ObjectApprove objectApprove = new ObjectApprove();
		objectApprove.setId(1);
		objectApprove.setCode("PRAC2019110001");
		objectApprove.setDiscription("ขอซื้อ notebook ให้พนักงานใหม่");
		objectApprove.setUrl_link("");
		groupApprove.getList_object_approve().add(objectApprove);
		
		list_group_approve.add(groupApprove);
		
		groupApprove = new GroupApprove();
		groupApprove.setName("ใบสั่งซื้อ (PO)");
		groupApprove.setHead_class("PO");
		
		objectApprove = new ObjectApprove();
		objectApprove.setId(1);
		objectApprove.setCode("POAC2019110001");
		objectApprove.setDiscription("บริษัท Apple Thailand");
		objectApprove.setUrl_link("");
		groupApprove.getList_object_approve().add(objectApprove);
		
		list_group_approve.add(groupApprove);
		
		model.addAttribute("list_group_approve", list_group_approve);
		model.addAttribute("current_date", MyDate.STOD(MyDate.GetCurrentDate()));
		
		ModelAndView modelAndView = new ModelAndView("approve_sub_list");
		return modelAndView;
    }
	
	@RequestMapping(value = "/approve", method = RequestMethod.GET)
    public ModelAndView set_data(HttpServletRequest request, HttpServletResponse response, Model model) {
		
		String str_id = request.getParameter("id");
		int id = str_id == null ? 0 : Integer.valueOf(str_id);
		
		String head_class = request.getParameter("head_class");
		
		int wait_approve = this.statusMovementManager.getCountWaitApprove(id, head_class);

		model.addAttribute("id", id);
		model.addAttribute("head_class", head_class);
		model.addAttribute("current_date", MyDate.STOD(MyDate.GetCurrentDate()));
		//model.addAttribute("wait_approve", wait_approve);
		model.addAttribute("wait_approve", 1);
		
		ModelAndView modelAndView = new ModelAndView("approve");
		return modelAndView;
	}
	
	@RequestMapping(value = "/approve", method = RequestMethod.POST)
    public ModelAndView save(HttpServletRequest request, HttpServletResponse response, Model model) {
		
		HttpSession session = request.getSession(true);
		Users ss_users = (Users)session.getAttribute("users");
		
		String approve = request.getParameter("btn_approve");
		String head_class = request.getParameter("head_class");
		String message = request.getParameter("message");
		String str_id = request.getParameter("id");
		int id = str_id == null ? 0 : Integer.valueOf(str_id);
		
		System.out.println("Approve : " + approve + " " + head_class +" " + message);
		
		if(RequestVenderHead.class.getSimpleName().equals(head_class)) {
			if("reject".equals(approve)) {
				this.requestVenderHeadManager.reject(id, ss_users.getUsername(), message);
			}if("ok".equals(approve)) {
				this.requestVenderHeadManager.ok(id, ss_users.getUsername(), message);
			}
		}
		
		List<StatusMovement> list_movement = this.statusMovementManager.getDataApproveAtDayWait(ss_users.getId());
		session.setAttribute("approve_count", list_movement.size());
		
		ModelAndView modelAndView = null;
		if(list_movement.size() == 0) {
			modelAndView = new ModelAndView("forward:/approve_list.htm"); 
		}else {
			modelAndView = new ModelAndView("forward:/approve_sub_list.htm");
		}
		return modelAndView;
	}
	
	@RequestMapping(value="/get_list_approve", method=RequestMethod.POST)
    public void getListApprove(HttpServletRequest request, HttpServletResponse response)
    {
				try {
					/*
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
	    			*/
					
					ObjectMapper mapper = new ObjectMapper();
					List<Users> list_users = this.usersManager.getByAll();
	    			response.setContentType("application/json");		    
	    			mapper.writeValue(response.getOutputStream(), list_users);
				} catch (IOException e) {
					e.printStackTrace();
				}
    }
}
