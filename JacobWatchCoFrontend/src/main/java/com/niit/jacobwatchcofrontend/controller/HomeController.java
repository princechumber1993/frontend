package com.niit.jacobwatchcofrontend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.jacobwatchco.dao.CategoryDao;
import com.niit.jacobwatchco.dao.ProductDao;
import com.niit.jacobwatchco.model.Category;
import com.niit.jacobwatchco.model.Product;

@Controller
public class HomeController {
	@Autowired
	private Category category;
	
	@Autowired
	CategoryDao categoryDao;
	
	@Autowired 
	Product product;
	
	@Autowired
	ProductDao productDao;
	
	@RequestMapping("/")
	public String homePage()
	{
		return "index";
	}
	
	@RequestMapping("Home")
	public String homePage1()
	{
		return "index";
	}

	
	@RequestMapping("loginIn")
	public String loginInPage()
	{
		return "loginIn";
	}
	
	@RequestMapping("/Signup")
	public String Signup()
	{
		return "Signup";
	}

	@RequestMapping("Contact Us")
	public String ContactUsPage()
	{
		return "Contact Us";
	}
	
	@RequestMapping("Wrist Diaries")
	public String WristDiariesPage()
	{
		return "Wrist Diaries";
	}
	
	@RequestMapping("Admin")
	public String AdminPage()
	{
		return "Admin";
	}

	
	
	@RequestMapping("/Category")
	public String CategoryPage(Model model)
	{  List<Category> allCategories= categoryDao.getAllCategory();
		model.addAttribute("cat",category);
		model.addAttribute("categoryList",allCategories);
		return "Category";
		
	}

	@RequestMapping("/Product")
	public String ProductPage(Model model)
	{ 
		List<Product> allProduct= productDao.getAllProduct();
		model.addAttribute("pat", new Product());
		model.addAttribute("productList",allProduct);
		List<Category> allCategory= categoryDao.getAllCategory();
		model.addAttribute("categoryList",allCategory);
		return "Product";
		
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
