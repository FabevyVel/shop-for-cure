package com.cts.controller;

import com.cts.dao.AdminDao;
import com.cts.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@Controller
public class AdminController {

    private static final String ERROR_MSG = "Oops! Details not added, please try again.";
    @Autowired
    AdminDao adminService;

    @RequestMapping(value = "/addDisease", method = RequestMethod.POST)
    public ModelAndView addDisease(@ModelAttribute("disease") Disease disease) {
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
    public ModelAndView addFruit(@ModelAttribute("fruit") Fruit fruit) {
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
    public ModelAndView addHerb(@ModelAttribute("herb") Herb herb) {
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
    public ModelAndView addRemedy(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("dataList") DataList dataList) {
        ModelAndView view = new ModelAndView("add-remedy");
        try {
            String[] diseaseId = request.getParameterValues("selectedDiseases");
            String[] fruitId = request.getParameterValues("selectedFruits");
            String[] herbId = request.getParameterValues("selectedHerbs");
            adminService.addRemedy(diseaseId,fruitId,herbId);
            view.addObject("dataList", adminService.getAllData());
            view.addObject("message", "remedy added successfully");
        } catch (Exception e) {
            view.addObject("message", ERROR_MSG);
        }
        return view;
    }

}
