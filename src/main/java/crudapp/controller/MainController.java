package crudapp.controller;

import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.taglibs.standard.lang.jstl.StringLiteral;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import crudapp.dao.ProductDao;
import crudapp.model.Product;

@Controller
public class MainController {

	@Autowired
	private ProductDao productDao;

	// http://localhost:8080/crudapp/home
	@RequestMapping("/")
	public String home(Model model) {
		List<Product> products = productDao.getProducts();
		model.addAttribute("products", products);
		return "index";
	}

	// http://localhost:8080/crudapp/addproduct
	@RequestMapping("/addproduct")
	public String addProduct(Model model) {
		model.addAttribute("title", "Add Product");
		return "addproduct";
	}

	// handler for add product
	@RequestMapping(value = "/handleaddproduct", method = RequestMethod.POST)
	public String handleProduct(@ModelAttribute Product product, Model model) {
		if (product.getName() == "") {
			model.addAttribute("addmsg", "Please enter product name");
			return "addproduct";
		} else if (product.getDescription() == "") {
			model.addAttribute("addmsg", "Please enter product description");
			return "addproduct";
		} else if (product.getPrice() < 0) {
			model.addAttribute("addmsg", "Price must be possitive");
			return "addproduct";
		}
		  productDao.addProduct(product);
		 
		return "addproduct";
	}

	// handler for delete product
	@RequestMapping("/deleteproduct/{pid}")
	public RedirectView deleteHandler(@PathVariable("pid") int pid, HttpServletRequest request) {
		productDao.deleteProduct(pid);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;
	}

	// handler for edit product
	@RequestMapping("/editproduct/{pid}")
	public String editproduct(@PathVariable("pid") int pid, Model model) {
		model.addAttribute("title", "Update Product");
		Product product = productDao.getProduct(pid);
		model.addAttribute("product", product);
		return "editproduct";
	}
}
