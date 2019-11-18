package application.controller.master;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import application.model.master.ProductGroup;
import application.model.master.MockupObj;
import application.model.master.ProductType;
import application.model.master.ProductKind;

@Controller
public class ProductKindController {
    
	@RequestMapping(value = "/list_product_kind", method = RequestMethod.GET)
    public ModelAndView doGet(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		List<ProductKind> list_product_kind = MockupObj.getListProductKind();
		for (ProductKind productKind : list_product_kind) {
			productKind.setProduct_type_name(MockupObj.getProductTypeName(productKind.getProduct_type_id()));
			productKind.setProduct_group_name(MockupObj.getProductGroupName(productKind.getProduct_group_id()));
		}
		
		model.addAttribute("command",	list_product_kind);
		
		return new ModelAndView("master/list_product_kind");
    }

	@RequestMapping(value = "/add_edit_product_kind", method = RequestMethod.GET)
    public ModelAndView set_data(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		List<ProductType> list_product_type = MockupObj.getListProductType();
		model.addAttribute("list_product_type",	list_product_type);
		
		List<ProductGroup> list_product_group = MockupObj.getListProductGroup();
		model.addAttribute("list_product_group",	list_product_group);
		
		return new ModelAndView("master/add_edit_product_kind");
	}
}
