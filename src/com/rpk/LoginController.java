package com.rpk;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dao.Category;
import com.dao.Item;

@Controller
public class LoginController {
	
	@Autowired
	CategoryRetreiver catret;
	
	@Autowired
	ItemRetriever itemRetriever;
	

	@RequestMapping(value = {"/admin/**" }, method = RequestMethod.GET)
	public ModelAndView adminPage() {

		ModelAndView model = new ModelAndView();		
		model.setViewName("admin");

		return model;

	}
	
	@RequestMapping(value="/admin/addItem",method = RequestMethod.GET)
	public ModelAndView addItem()
	{
		ModelAndView model = new ModelAndView();
		model.addObject("categoryret",catret.getCategory());
		model.setViewName("addItem");
		model.addObject("item", new Item());
		return model;
				
	}
	
	@RequestMapping(value="/admin/addCategory",method = RequestMethod.GET)
	public ModelAndView addCategory()
	{
		ModelAndView model = new ModelAndView();
		model.addObject("categoryret",catret.getCategory());
		model.setViewName("addCategory");
		model.addObject("category", new Category());
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
	public ModelAndView insertitem(@ModelAttribute("item") Item item
			, BindingResult result,
			ModelAndView model, RedirectAttributes redirectAttributes)
	{
		String response = itemRetriever.insertItem(item);
		ModelAndView m = new ModelAndView(); 
		redirectAttributes.addFlashAttribute("status",response);
		m.setViewName("redirect:/admin/addItem");
		return m;
	}
	
	@RequestMapping(value="/admin/insertCategory",method=RequestMethod.POST)
	public ModelAndView insertCategory(@ModelAttribute("category") Category category
			, BindingResult result,
			ModelAndView model, RedirectAttributes redirectAttributes)
	{
		String response = catret.insertCategory(category);
		ModelAndView m = new ModelAndView(); 
		redirectAttributes.addFlashAttribute("status",response);
		m.setViewName("redirect:/admin/addCategory");
		return m;
	}

}