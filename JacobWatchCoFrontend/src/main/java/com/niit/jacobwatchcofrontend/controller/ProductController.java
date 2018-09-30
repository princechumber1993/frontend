package com.niit.jacobwatchcofrontend.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.niit.jacobwatchco.dao.CategoryDao;
import com.niit.jacobwatchco.dao.ProductDao;
import com.niit.jacobwatchco.model.Category;
import com.niit.jacobwatchco.model.Product;


@Controller
public class ProductController {
	@Autowired
	 ProductDao productDao;
	
	@Autowired
	 CategoryDao categoryDao;
	
	@Autowired
	Category category;
	
	@Autowired
	Product product;


	@RequestMapping(value="/addProduct",method=RequestMethod.POST)
	public String productAdd(@ModelAttribute("prod") Product product,HttpSession httpSession  )
	{
		if(product.getProductId()==0)
		{
			if(productDao.addProduct(product))
		
		{

		       MultipartFile file=product.getImage();
				ServletContext con=httpSession.getServletContext();
					String filelocation=con.getRealPath("/resources/images/");
					System.out.println(filelocation);
					String filename=filelocation+"\\"+product.getProductId()+".jpg";
					System.out.println(filename);
					
					try{
						byte b[]=file.getBytes();
						FileOutputStream fos=new FileOutputStream(filename);
						fos.write(b);
						fos.close();
					}
					catch(IOException ex){}
					catch(Exception e){}
						}	
				
		}
		else {
			productDao.updateProduct(product);
		}
		return "redirect:/Product";
	}
	
	@RequestMapping("/editProduct/{ID}")
	public String productDelete(@PathVariable("id") int product_Id, Model model)
	{
Product productData=productDao.getProductById(product_Id);
	model.addAttribute("prod" , productData);
	List<Product> allProduct=productDao.getAllProduct();
	model.addAttribute("productList",allProduct);
   return"Product";
}
}



	
	