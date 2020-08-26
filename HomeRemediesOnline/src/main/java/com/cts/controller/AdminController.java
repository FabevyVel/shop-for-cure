package com.cts.controller;

import com.cts.dao.AdminDao;
import com.cts.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class AdminController {

    private static final String ERROR_MSG = "Oops! Details not added, please try again.";
    @Autowired
    AdminDao adminService;

    @RequestMapping(value = "/addDisease", method = RequestMethod.POST)
    public ModelAndView addDisease(@ModelAttribute("Disease") Disease disease) {
        ModelAndView view = new ModelAndView("add-disease");
        try {
            adminService.addDisease(disease);
            view.addObject("message", "Disease added successfully");
        } catch (Exception e) {
            view.addObject("message", ERROR_MSG);
        }
        return view;
    }

    @RequestMapping(value = "/addFruit", method = RequestMethod.POST)
    public ModelAndView addFruit(@ModelAttribute("Fruit") Fruit fruit) {
        ModelAndView view = new ModelAndView("add-fruit");
        try {
            adminService.addFruit(fruit);
            view.addObject("message", "Fruit added successfully");
        } catch (Exception e) {
            view.addObject("message", ERROR_MSG);
        }
        return view;
    }

    @RequestMapping(value = "/addHerb", method = RequestMethod.POST)
    public ModelAndView addHerb(@ModelAttribute("Herb") Herb herb) {
        ModelAndView view = new ModelAndView("add-herb");
        try {
            adminService.addHerb(herb);
            view.addObject("message", "Herb added successfully");
        } catch (Exception e) {
            view.addObject("message", ERROR_MSG);
        }
        return view;
    }

    @RequestMapping(value = "/addRemedy", method = RequestMethod.POST)
    public ModelAndView addRemedy(@ModelAttribute("Remedy") Remedy remedy) {
        ModelAndView view = new ModelAndView("add-remedy");
        try {
            adminService.addRemedy(remedy);
            view.addObject("message", "remedy added successfully");
        } catch (Exception e) {
            view.addObject("message", ERROR_MSG);
        }
        return view;
    }


}
