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

import application.model.master.Brand;
import application.model.master.MockupObj;
import application.model.master.PackingUnit;
import application.model.master.Product;
import application.model.master.ProductGroup;
import application.model.master.ProductKind;
import application.model.master.ProductModel;
import application.model.master.ProductType;

@Controller
public class ProductController {
    
	@RequestMapping(value = "/list_product", method = RequestMethod.GET)
    public ModelAndView doGet(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		List<Product> list_product = MockupObj.getListProduct("");

		model.addAttribute("command",	list_product);
		
		return new ModelAndView("master/list_product");
    }

	@RequestMapping(value = "/add_edit_product", method = RequestMethod.GET)
    public ModelAndView set_data(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		
		String json ="";
		List<ProductType> list_product_type = MockupObj.getListProductType();
		try {
			ObjectMapper mapper = new ObjectMapper();
			json = mapper.writeValueAsString(list_product_type);
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("list_product_type",	json);
		
		List<ProductGroup> list_product_group = MockupObj.getListProductGroup();
		try {
			ObjectMapper mapper = new ObjectMapper();
			json = mapper.writeValueAsString(list_product_group);
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("list_product_group",	json);
		
		List<ProductKind> list_product_kind = MockupObj.getListProductKind();
		try {
			ObjectMapper mapper = new ObjectMapper();
			json = mapper.writeValueAsString(list_product_kind);
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("list_product_kind",	json);
		
		List<Brand> list_brand = MockupObj.getListBrand();
		try {
			ObjectMapper mapper = new ObjectMapper();
			json = mapper.writeValueAsString(list_brand);
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("list_brand",	json);
		
		List<ProductModel> list_product_model = MockupObj.getListProductModel(); 
		try {
			ObjectMapper mapper = new ObjectMapper();
			json = mapper.writeValueAsString(list_product_model);
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("list_product_model",	json);
		
		List<PackingUnit> list_packing_unit = MockupObj.getListPackingUnit(); 
		try {
			ObjectMapper mapper = new ObjectMapper();
			json = mapper.writeValueAsString(list_packing_unit);
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("list_packing_unit",	json);
		
		return new ModelAndView("master/add_edit_product");
	}
}
