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
import application.model.master.Organization;
import application.model.master.Section;
import application.model.master.WorkLine;

@Controller
public class OrganizationController {
    
	@RequestMapping(value = "/list_organization", method = RequestMethod.GET)
    public ModelAndView doGet(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		List<Organization> list_organization = MockupObj.getListOrganization();
		for (Organization organization : list_organization) {
			organization.setCompany_name(MockupObj.getCompanyName(organization.getCompany_id()));
			organization.setWork_line_name(MockupObj.getWorkLineName(organization.getWork_line_id()));
			organization.setDepartment_name(MockupObj.getDepartmentName(organization.getDepartment_id()));
			organization.setSection_name(MockupObj.getSectionName(organization.getSection_id()));
		}
		
		model.addAttribute("command",	list_organization);
		
		return new ModelAndView("master/list_organization");
    }

	@RequestMapping(value = "/add_edit_organization", method = RequestMethod.GET)
    public ModelAndView set_data(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		List<Company> list_company = MockupObj.getListCompany();
		model.addAttribute("list_company",	list_company);
		
		List<WorkLine> list_work_line = MockupObj.getListWorkLine();
		model.addAttribute("list_work_line",	list_work_line);
		
		List<Department> list_department = MockupObj.getListDepartment();
		model.addAttribute("list_department",	list_department);
		
		List<Section> list_section = MockupObj.getListSection();
		model.addAttribute("list_section",	list_section);
		
		return new ModelAndView("master/add_edit_organization");
	}
}
