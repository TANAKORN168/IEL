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
import application.model.master.Province;
import application.model.master.Amphur;

@Controller
public class AmphurController {
    
	@RequestMapping(value = "/list_amphur", method = RequestMethod.GET)
    public ModelAndView doGet(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		List<Amphur> list_amphur = MockupObj.getListAmphur();
		for (Amphur amphur : list_amphur) {
			amphur.setProvince_name(MockupObj.getProvinceName(amphur.getProvince_id()));
		}
		
		model.addAttribute("command",	list_amphur);
		
		return new ModelAndView("master/list_amphur");
    }

	@RequestMapping(value = "/add_edit_amphur", method = RequestMethod.GET)
    public ModelAndView set_data(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		List<Province> list_province = MockupObj.getListProvince();
		model.addAttribute("list_province",	list_province);
		
		return new ModelAndView("master/add_edit_amphur");
	}
}
