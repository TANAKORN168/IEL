package application.controller.master;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import application.model.master.Amphur;
import application.model.master.MockupObj;
import application.model.master.Province;
import application.model.master.Tambon;

@Controller
public class TambonController {
    
	@RequestMapping(value = "/list_tambon", method = RequestMethod.GET)
    public ModelAndView doGet(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		List<Tambon> list_tambon = MockupObj.getListTambon();
		for (Tambon tambon : list_tambon) {
			tambon.setProvince_name(MockupObj.getProvinceName(tambon.getProvince_id()));
			tambon.setAmphur_name(MockupObj.getAmphurName(tambon.getAmphur_id()));
		}
		
		model.addAttribute("command",	list_tambon);
		
		return new ModelAndView("master/list_tambon");
    }

	@RequestMapping(value = "/add_edit_tambon", method = RequestMethod.GET)
    public ModelAndView set_data(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		List<Province> list_province = MockupObj.getListProvince();
		model.addAttribute("list_province",	list_province);
		
		List<Amphur> list_amphur = MockupObj.getListAmphur();
		model.addAttribute("list_amphur",	list_amphur);
		
		return new ModelAndView("master/add_edit_tambon");
	}
}
