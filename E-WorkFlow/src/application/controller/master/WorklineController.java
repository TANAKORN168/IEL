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
import application.model.master.Company;
import application.model.master.WorkLine;

@Controller
public class WorklineController {
    
	@RequestMapping(value = "/list_work_line", method = RequestMethod.GET)
    public ModelAndView doGet(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		List<WorkLine> list_work_line = MockupObj.getListWorkLine();
		for (WorkLine workLine : list_work_line) {
			workLine.setCompany_name(MockupObj.getCompanyName(workLine.getCompany_id()));
		}
		
		model.addAttribute("command",	list_work_line);
		
		return new ModelAndView("master/list_work_line");
    }

	@RequestMapping(value = "/add_edit_work_line", method = RequestMethod.GET)
    public ModelAndView set_data(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		List<Company> list_company = MockupObj.getListCompany();
		model.addAttribute("list_company",	list_company);
		
		return new ModelAndView("master/add_edit_work_line");
	}
}
