package com.niit.jacobwatchcofrontend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.jacobwatchco.dao.UserDao;
import com.niit.jacobwatchco.model.User;


@Controller
public class UserController {
	
	@Autowired
	UserDao userDao;
	
	
	@RequestMapping(value="addUser",method=RequestMethod.POST)
	public String register(@ModelAttribute("user")User user) {
		userDao.addUser(user);
		
		return "login" ;
	}
}