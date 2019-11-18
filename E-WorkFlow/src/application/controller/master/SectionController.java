package application.controller.master;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import application.model.master.Company;
import application.model.master.Department;
import application.model.master.MockupObj;
import application.model.master.Section;
import application.model.master.WorkLine;

@Controller
public class SectionController {
    
	@RequestMapping(value = "/list_section", method = RequestMethod.GET)
    public ModelAndView doGet(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		List<Section> list_section = MockupObj.getListSection();
		for (Section section : list_section) {
			section.setCompany_name(MockupObj.getCompanyName(section.getCompany_id()));
			section.setWork_line_name(MockupObj.getWorkLineName(section.getWork_line_id()));
			section.setDepartment_name(MockupObj.getDepartmentName(section.getDepartment_id()));
		}
		
		model.addAttribute("command",	list_section);
		
		return new ModelAndView("master/list_section");
    }

	@RequestMapping(value = "/add_edit_section", method = RequestMethod.GET)
    public ModelAndView set_data(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		List<Company> list_company = MockupObj.getListCompany();
		model.addAttribute("list_company",	list_company);
		
		List<WorkLine> list_work_line = MockupObj.getListWorkLine();
		model.addAttribute("list_work_line",	list_work_line);
		
		List<Department> list_department = MockupObj.getListDepartment();
		model.addAttribute("list_department",	list_department);
		
		return new ModelAndView("master/add_edit_section");
	}
}
