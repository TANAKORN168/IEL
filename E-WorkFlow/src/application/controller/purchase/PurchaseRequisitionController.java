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
import application.model.master.Company;
import application.model.master.Department;
import application.model.master.MockupObj;
import application.model.master.Organization;
import application.model.master.PackingUnit;
import application.model.master.Product;
import application.model.master.Section;
import application.model.master.StatusInfo;
import application.model.master.StatusMovement;
import application.model.master.Users;
import application.model.master.Warehouse;
import application.model.master.WorkLine;
import application.model.purchase.PurchaseRequisition;
import application.service.utility.MyDate;

@Controller
public class PurchaseRequisitionController {
	
	private StatusInfoManager statusInfoManager = new StatusInfoManager();
	
	@RequestMapping(value = "/list_purchase_requisition", method = RequestMethod.POST)
    public ModelAndView post(HttpServletRequest request, HttpServletResponse response, Model model) {
		return this.init(request, response, model);
    }
	
	@RequestMapping(value = "/list_purchase_requisition", method = RequestMethod.GET)
    public ModelAndView get(HttpServletRequest request, HttpServletResponse response, Model model) {
		return this.init(request, response, model);
    }
	
	public ModelAndView init(HttpServletRequest request, HttpServletResponse response, Model model) {
		ModelAndView modelAndView = new ModelAndView("purchase/list_purchase_requisition");
		
		model.addAttribute("command", MockupObj.getListPurchaseRequisition());
		
		return modelAndView;
	}
	
	@RequestMapping(value = "/add_edit_purchase_requisition", method = RequestMethod.GET)
    public ModelAndView setData(HttpServletRequest request, HttpServletResponse response, Model model) {
		
		HttpSession session = request.getSession(true);
		Users ss_users = (Users)session.getAttribute("users");
		
		String type = request.getParameter("type");

    	String type_name = "";
    	List<Product> list_product = null;
    	
    	if("EXPENSE".equals(type)) {
    		type_name = "ค่าใช้จ่าย";
    	}
    	if("ASSET".equals(type)) {
    		type_name = "ทรัพย์สิน";
    	}
    	if("STOCK".equals(type)) {
    		type_name = "สต๊อก";
    	}
		list_product = MockupObj.getListProduct(type_name);
    	
    	String json = "";
		try {
			ObjectMapper mapper = new ObjectMapper();
			json = mapper.writeValueAsString(list_product);
		} catch (Exception e) {
			e.printStackTrace();
		}
    	model.addAttribute("list_product", json);
    	model.addAttribute("type_name", type_name);
		
		List<Warehouse> list_warehouse = MockupObj.getListWarehouse();
		try {
			ObjectMapper mapper = new ObjectMapper();
			json = mapper.writeValueAsString(list_warehouse);
		} catch (Exception e) {
			e.printStackTrace();
		}
    	model.addAttribute("list_warehouse", json);
		
		List<Company> list_company = MockupObj.getListCompany();
		try {
			ObjectMapper mapper = new ObjectMapper();
			json = mapper.writeValueAsString(list_company);
		} catch (Exception e) {
			e.printStackTrace();
		}
    	model.addAttribute("list_company", json);
		
		List<WorkLine> list_work_line = MockupObj.getListWorkLine();
		try {
			ObjectMapper mapper = new ObjectMapper();
			json = mapper.writeValueAsString(list_work_line);
		} catch (Exception e) {
			e.printStackTrace();
		}
    	model.addAttribute("list_work_line", json);
		
		List<Department> list_department = MockupObj.getListDepartment();
		try {
			ObjectMapper mapper = new ObjectMapper();
			json = mapper.writeValueAsString(list_department);
		} catch (Exception e) {
			e.printStackTrace();
		}
    	model.addAttribute("list_department", json);
		
		List<Section> list_section = MockupObj.getListSection();
		try {
			ObjectMapper mapper = new ObjectMapper();
			json = mapper.writeValueAsString(list_section);
		} catch (Exception e) {
			e.printStackTrace();
		}
    	model.addAttribute("list_section", json);
		
		List<Organization> list_organization = MockupObj.getListOrganization();
		try {
			ObjectMapper mapper = new ObjectMapper();
			json = mapper.writeValueAsString(list_organization);
		} catch (Exception e) {
			e.printStackTrace();
		}
    	model.addAttribute("list_organization", json);
		
		List<PackingUnit> list_packing_unit = MockupObj.getListPackingUnit(); 
		try {
			ObjectMapper mapper = new ObjectMapper();
			json = mapper.writeValueAsString(list_packing_unit);
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("list_packing_unit",	json);
    	
    	PurchaseRequisition purchaseRequisition = new PurchaseRequisition();
    	List<StatusInfo> list_status = this.statusInfoManager.getByMainCode(purchaseRequisition.getMain_code());
    	List<StatusMovement> list_status_movement = new ArrayList<StatusMovement>();
    	StatusMovement statusMovement;
    	int loop = 1;
    	for (StatusInfo statusInfo : list_status) {
    		statusMovement = new StatusMovement();
        	statusMovement.setHead_class(purchaseRequisition.getClass().getSimpleName());
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
		
		return new ModelAndView("purchase/add_edit_purchase_requisition");
	}   
}
