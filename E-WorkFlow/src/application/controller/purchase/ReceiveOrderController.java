package application.controller.purchase;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;

import application.model.master.MockupObj;
import application.model.purchase.PurchaseOrder;
import application.model.purchase.PurchaseOrderDetail;
import application.model.purchase.ReceiveOrder;

@Controller
public class ReceiveOrderController {
	
	@RequestMapping(value = "/list_receive_order", method = RequestMethod.POST)
    public ModelAndView post(HttpServletRequest request, HttpServletResponse response, Model model) {
		return this.init(request, response, model);
    }
	
	@RequestMapping(value = "/list_receive_order", method = RequestMethod.GET)
    public ModelAndView get(HttpServletRequest request, HttpServletResponse response, Model model) {
		return this.init(request, response, model);
    }
	
	public ModelAndView init(HttpServletRequest request, HttpServletResponse response, Model model) {
		ModelAndView modelAndView = new ModelAndView("purchase/list_receive_order");
		
		List<ReceiveOrder> list_receive_order = MockupObj.getListReceiveOrder();
    	model.addAttribute("command", list_receive_order);
    	
		return modelAndView;
	}
	
	@RequestMapping(value = "/add_edit_receive_order", method = RequestMethod.GET)
    public ModelAndView setData(HttpServletRequest request, HttpServletResponse response, Model model) {
		String json = "";
		
		List<PurchaseOrderDetail> list_purchase_order_detail = MockupObj.getListPurchaseOrderDetail();
		try {
			ObjectMapper mapper = new ObjectMapper();
			json = mapper.writeValueAsString(list_purchase_order_detail);
		} catch (Exception e) {
			e.printStackTrace();
		}
    	model.addAttribute("list_purchase_order_detail", json);
		
		List<PurchaseOrder> list_purchase_order = MockupObj.getListPurchaseOrder();
		try {
			ObjectMapper mapper = new ObjectMapper();
			json = mapper.writeValueAsString(list_purchase_order);
		} catch (Exception e) {
			e.printStackTrace();
		}
    	model.addAttribute("list_purchase_order", json);
		
		return new ModelAndView("purchase/add_edit_receive_order");
	}   
}
