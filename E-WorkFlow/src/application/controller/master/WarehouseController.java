package application.controller.master;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import application.model.master.MockupObj;
import application.model.master.Warehouse;

@Controller
public class WarehouseController {
    
	@RequestMapping(value = "/list_warehouse", method = RequestMethod.GET)
    public ModelAndView doGet(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		List<Warehouse> list_warehouse = MockupObj.getListWarehouse();

		model.addAttribute("command",	list_warehouse);
		
		return new ModelAndView("master/list_warehouse");
    }

	@RequestMapping(value = "/add_edit_warehouse", method = RequestMethod.GET)
    public ModelAndView set_data(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		
		return new ModelAndView("master/add_edit_warehouse");
	}
}
