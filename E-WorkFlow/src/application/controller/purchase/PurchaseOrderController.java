package application.controller.purchase;

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

import application.manager.master.StatusInfoManager;
import application.model.master.MockupObj;
import application.model.master.StatusInfo;
import application.model.master.StatusMovement;
import application.model.master.Users;
import application.model.master.Vendor;
import application.model.purchase.PurchaseOrder;
import application.model.purchase.PurchaseOrderDetail;
import application.model.purchase.PurchaseRequisition;
import application.model.purchase.PurchaseRequisitionDetail;
import application.service.utility.MyDate;

@Controller
public class PurchaseOrderController {
	
	private StatusInfoManager statusInfoManager = new StatusInfoManager();
	
	@RequestMapping(value = "/list_purchase_order", method = RequestMethod.POST)
    public ModelAndView post(HttpServletRequest request, HttpServletResponse response, Model model) {
		return this.init(request, response, model);
    }
	
	@RequestMapping(value = "/list_purchase_order", method = RequestMethod.GET)
    public ModelAndView get(HttpServletRequest request, HttpServletResponse response, Model model) {
		return this.init(request, response, model);
    }
	
	public ModelAndView init(HttpServletRequest request, HttpServletResponse response, Model model) {
		ModelAndView modelAndView = new ModelAndView("purchase/list_purchase_order");

		List<PurchaseOrder> list_purchase_order = MockupObj.getListPurchaseOrder();
    	model.addAttribute("command", list_purchase_order);
		
		return modelAndView;
	}
	
	@RequestMapping(value = "/add_edit_purchase_order", method = RequestMethod.GET)
    public ModelAndView setData(HttpServletRequest request, HttpServletResponse response, Model model) {
		String json = "";
		HttpSession session = request.getSession(true);
		Users ss_users = (Users)session.getAttribute("users");
		
		List<PurchaseOrderDetail> list_purchase_order_detail = MockupObj.getListPurchaseOrderDetail();
		try {
			ObjectMapper mapper = new ObjectMapper();
			json = mapper.writeValueAsString(list_purchase_order_detail);
		} catch (Exception e) {
			e.printStackTrace();
		}
    	model.addAttribute("list_purchase_order_detail", json);
		
		List<Vendor> list_vendor = MockupObj.getListVendor();
		try {
			ObjectMapper mapper = new ObjectMapper();
			json = mapper.writeValueAsString(list_vendor);
		} catch (Exception e) {
			e.printStackTrace();
		}
    	model.addAttribute("list_vendor", json);
		
		List<PurchaseRequisition> list_purchase_requisition = MockupObj.getListPurchaseRequisition();
		try {
			ObjectMapper mapper = new ObjectMapper();
			json = mapper.writeValueAsString(list_purchase_requisition);
		} catch (Exception e) {
			e.printStackTrace();
		}
    	model.addAttribute("list_purchase_requisition", json);
		
		List<PurchaseRequisitionDetail> list_purchase_requisition_detail = MockupObj.getListPurchaseRequisitionDetail();
		try {
			ObjectMapper mapper = new ObjectMapper();
			json = mapper.writeValueAsString(list_purchase_requisition_detail);
		} catch (Exception e) {
			e.printStackTrace();
		}
    	model.addAttribute("list_purchase_requisition_detail", json);
		
		PurchaseOrder purchaseOrder = new PurchaseOrder();
    	List<StatusInfo> list_status = this.statusInfoManager.getByMainCode(purchaseOrder.getMain_code());
    	List<StatusMovement> list_status_movement = new ArrayList<StatusMovement>();
    	StatusMovement statusMovement;
    	int loop = 1;
    	for (StatusInfo statusInfo : list_status) {
    		statusMovement = new StatusMovement();
        	statusMovement.setHead_class(purchaseOrder.getClass().getSimpleName());
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
        	}
	        	
        	list_status_movement.add(statusMovement);
        	loop++;
		}
    	
		try {
			ObjectMapper mapper = new ObjectMapper();
			json = mapper.writeValueAsString(list_status_movement);
		} catch (Exception e) {
			e.printStackTrace();
		}
    	model.addAttribute("list_status_movement", json);
		
		return new ModelAndView("purchase/add_edit_purchase_order");
	}   
}
