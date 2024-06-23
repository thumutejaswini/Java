package com.stech.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.stech.service.LoginService;

@Controller
@SessionAttributes("name")
public class LoginController {
	
	@Autowired
	LoginService service;
	@RequestMapping(value = "/", method = RequestMethod.GET)
    public String showHomePage(ModelMap model) {
        return "index" ; // Return the home page view (index.jsp)
	}
	@RequestMapping(value="/login", method= RequestMethod.GET)
	public String viewLoginPage(ModelMap map) {
		return "login";
	}
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
    public String showWelcomePage(ModelMap model, @RequestParam String name, @RequestParam String password){
 
        boolean isValidUser = service.validateUser(name, password);
 
        if (!isValidUser) {
            model.put("errorMessage", "Access Denied , Invalid Credentials");
            return "login";
        }
 
        model.put("name", name);
        model.put("password", password);
 
        return "redirect:http://localhost:8080/students";
       
    }
	
	@RequestMapping(value="/logout", method = RequestMethod.GET)
    public String showLogoutPage(ModelMap model){
        return "login";
    }
	@RequestMapping(value="/login1", method= RequestMethod.GET)
	public String viewLogin1Page(ModelMap map) {
	    return "login1";
	}

}
