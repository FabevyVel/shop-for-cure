package com.cts.controller;

import com.cts.dao.MemberDao;
import com.cts.model.Roles;
import com.cts.model.Member;
import com.cts.model.SearchContent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import com.cts.model.Disease;

@Controller
@SessionAttributes("username")
public class LoginController {

    @Autowired
    MemberDao memberService;

    @RequestMapping(value = {
            "/",
            "/logOut"
    }, method = RequestMethod.GET)
    public ModelAndView loginAdmin() {
        ModelAndView view = new ModelAndView("login");
        view.addObject("member", new Member());
        return view;
    }

    @RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
    public ModelAndView loginProcess(@ModelAttribute("login") Member member) {
        ModelAndView view = null;
        Member authenticatedMember = memberService.authenticateMember(member);
        if (authenticatedMember != null) {
            if (authenticatedMember.getRoles() == Roles.ADMIN) {
                view = new ModelAndView("add-disease");
                view.addObject("disease", new Disease());
            } else {
                view = new ModelAndView("search");
                view.addObject("searchContent", new SearchContent());
            }
            view.addObject("username", authenticatedMember.getUserName());
            view.addObject("member", authenticatedMember);
        } else {
            view = new ModelAndView("login");
            view.addObject("member", new Member());
            view.addObject("message", "Username or Password is wrong!!");
        }
        return view;
    }

}
