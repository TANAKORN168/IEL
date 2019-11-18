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
import application.model.master.Brand;
import application.model.master.ProductModel;

@Controller
public class ProductModelController {
    
	@RequestMapping(value = "/list_product_model", method = RequestMethod.GET)
    public ModelAndView doGet(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		List<ProductModel> list_product_model = MockupObj.getListProductModel();
		for (ProductModel productModel : list_product_model) {
			productModel.setBrand_name(MockupObj.getBrandName(productModel.getBrand_id()));
		}
		
		model.addAttribute("command",	list_product_model);
		
		return new ModelAndView("master/list_product_model");
    }

	@RequestMapping(value = "/add_edit_product_model", method = RequestMethod.GET)
    public ModelAndView set_data(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		List<Brand> list_brand = MockupObj.getListBrand();
		model.addAttribute("list_brand",	list_brand);
		
		return new ModelAndView("master/add_edit_product_model");
	}
}
