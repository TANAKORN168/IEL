package application.controller.master;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import application.model.master.WorkLine;
import application.model.master.MockupObj;
import application.model.master.Company;
import application.model.master.Department;

@Controller
public class DepartmentController {
    
	@RequestMapping(value = "/list_department", method = RequestMethod.GET)
    public ModelAndView doGet(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		List<Department> list_department = MockupObj.getListDepartment();
		for (Department department : list_department) {
			department.setCompany_name(MockupObj.getCompanyName(department.getCompany_id()));
			department.setWork_line_name(MockupObj.getWorkLineName(department.getWork_line_id()));
		}
		
		model.addAttribute("command",	list_department);
		
		return new ModelAndView("master/list_department");
    }

	@RequestMapping(value = "/add_edit_department", method = RequestMethod.GET)
    public ModelAndView set_data(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		List<Company> list_company = MockupObj.getListCompany();
		model.addAttribute("list_company",	list_company);
		
		List<WorkLine> list_work_line = MockupObj.getListWorkLine();
		model.addAttribute("list_work_line",	list_work_line);
		
		return new ModelAndView("master/add_edit_department");
	}
}
