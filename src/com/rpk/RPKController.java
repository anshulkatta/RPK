package com.rpk;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping
public class RPKController {
	@Autowired
	CategoryRetreiver catret;
	
	@Autowired
	ItemRetriever itemret;
	
	@RequestMapping(value = "/gallery", method = RequestMethod.GET)
	public ModelAndView getGallery()
	{
		ModelAndView m = new ModelAndView("gallery");
		m.addObject("categoryret",catret.getCategory());
		m.addObject("itemret",itemret.getItem());
		return m;
	}
	
	

}
