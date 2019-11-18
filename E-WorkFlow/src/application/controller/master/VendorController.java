package application.controller.master;

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
import application.model.master.Product;
import application.model.master.Vendor;
import application.model.master.VendorType;

@Controller
public class VendorController {
    
	@RequestMapping(value = "/list_vendor", method = RequestMethod.GET)
    public ModelAndView doGet(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		List<Vendor> list_vendor = MockupObj.getListVendor();

		model.addAttribute("command",	list_vendor);
		
		List<Product> list_product = MockupObj.getListProduct("");
    	
    	String json = "";
		try {
			ObjectMapper mapper = new ObjectMapper();
			json = mapper.writeValueAsString(list_product);
		} catch (Exception e) {
			e.printStackTrace();
		}
    	model.addAttribute("list_product", json);
		
		return new ModelAndView("master/list_vendor");
    }

	@RequestMapping(value = "/add_edit_vendor", method = RequestMethod.GET)
    public ModelAndView set_data(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		
		List<VendorType> list_vendor_type = MockupObj.getListVendorType();

		model.addAttribute("list_vendor_type",	list_vendor_type);
		
		return new ModelAndView("master/add_edit_vendor");
	}
}
