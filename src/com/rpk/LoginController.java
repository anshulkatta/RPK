package com.rpk;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dao.Item;

@Controller
public class LoginController {
	
	@Autowired
	CategoryRetreiver catret;
	

	@RequestMapping(value = {"/admin/**" }, method = RequestMethod.GET)
	public ModelAndView adminPage() {

		ModelAndView model = new ModelAndView();		
		model.setViewName("admin");

		return model;

	}
	
	@RequestMapping(value="/admin/addItem",method = RequestMethod.GET)
	public ModelAndView uploaditem()
	{
		ModelAndView model = new ModelAndView();
		model.addObject("categoryret",catret.getCategory());
		model.setViewName("addItem");
		return model;
				
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public  ModelAndView login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout) {

		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", "Invalid username and password!");
		}

		if (logout != null) {
			model.addObject("msg", "You've been logged out successfulaly.");
		}
		model.setViewName("login");
		
		return model;

	}	
	
	@RequestMapping(value="/admin/insertItem",method=RequestMethod.POST)
	public ModelAndView insertitem(@RequestParam Item item)
	{
		System.out.println(item);
		return null;
	}

}