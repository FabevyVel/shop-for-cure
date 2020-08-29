package com.cts.controller;

import com.cts.dao.AdminDao;
import com.cts.dao.MemberDao;
import com.cts.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
@SessionAttributes("username")
public class AdminViewController {

    @Autowired
    AdminDao adminService;

    @RequestMapping(value = "/add-disease", method = RequestMethod.GET)
    public ModelAndView addDisease() {
        ModelAndView view = new ModelAndView("add-disease");
        view.addObject("disease", new Disease());
        return view;
    }

    @RequestMapping(value = "/add-fruit", method = RequestMethod.GET)
    public ModelAndView addFruit() {
        ModelAndView view = new ModelAndView("add-fruit");
        view.addObject("fruit", new Fruit());
        return view;
    }

    @RequestMapping(value = "/add-herb", method = RequestMethod.GET)
    public ModelAndView addHerb() {
        ModelAndView view = new ModelAndView("add-herb");
        view.addObject("herb", new Herb());
        return view;
    }

    @RequestMapping(value = "/add-remedy", method = RequestMethod.GET)
    public ModelAndView addRemedy() {
        ModelAndView view = new ModelAndView("add-remedy");
        view.addObject("dataList", adminService.getAllData());
        view.addObject("remedy", new Remedy());
        return view;
    }

    @RequestMapping(value = "/user-list", method = RequestMethod.GET)
    public ModelAndView getMembers() {
        ModelAndView view = new ModelAndView("userlist");
        view.addObject("memberList", adminService.getMembersData());
        return view;
    }

    @RequestMapping(value = "/edit-user", method = RequestMethod.GET)
    public ModelAndView editUser(HttpServletRequest request) {
        int editUserId = Integer.parseInt(request.getParameter("id"));
        ModelAndView view = new ModelAndView("edit-user");
        view.addObject("member", adminService.getMemberById(editUserId));
        return view;
    }

}
