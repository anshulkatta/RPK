package com.rpk;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.util.Util;

@Controller
@RequestMapping
public class RPKController {
	@Autowired
	private CategoryRetreiver catret;
	
	@Autowired
	private ItemRetriever itemret;
	
	@Autowired
	private Util util;
	
	@RequestMapping(value = "/gallery", method = RequestMethod.GET)
	public ModelAndView getGallery()
	{
		ModelAndView m = new ModelAndView("gallery");
		m.addObject("categoryret",catret.getCategory());
		m.addObject("itemret",itemret.getItem());
		return m;
	}
	
	@RequestMapping(value = "/errors", method = RequestMethod.GET)
    public ModelAndView renderErrorPage(HttpServletRequest httpRequest) {
         
        ModelAndView errorPage = new ModelAndView("error");
        String errorMsg = "";
        int httpErrorCode = util.getErrorCode(httpRequest);
 
        switch (httpErrorCode) {
            case 400: {
                errorMsg = "Http Error Code: 400. Bad Request";
                break;
            }
            case 401: {
                errorMsg = "Http Error Code: 401. Unauthorized";
                break;
            }
            case 404: {
                errorMsg = "Http Error Code: 404. Resource not found";
                break;
            }
            case 500: {
                errorMsg = "Http Error Code: 500. Internal Server Error";
                break;
            }
        }
        errorPage.addObject("errorMsg", errorMsg);
        return errorPage;
    }
	
	
	
	

}
