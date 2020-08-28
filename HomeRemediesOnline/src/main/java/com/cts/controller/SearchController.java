package com.cts.controller;

import com.cts.dao.SearchDao;
import com.cts.model.Disease;
import com.cts.model.Member;
import com.cts.model.Remedy;
import com.cts.model.SearchContent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
@SessionAttributes({"username" , "roles"})
public class SearchController {

    private static final String ERROR_MSG = "Oops! Details not added, please try again.";

    @Autowired
    SearchDao searchService;

    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public ModelAndView search() {
        ModelAndView view = new ModelAndView("search");
        view.addObject("searchContent", new SearchContent());
        return view;
    }

    @RequestMapping(value = "/searchInfo", method = RequestMethod.POST)
    public ModelAndView searchDisease(@ModelAttribute("searchContent") SearchContent content) {
        ModelAndView view = new ModelAndView("result");
        Remedy remedy = null;
        try {
            if("disease".equalsIgnoreCase(content.getCategory())) {
                remedy = searchService.searchRemedyByDiseaseName(content.getSearchTerm());
//                view.addObject("fruits", remedy.getFruitList());
//                view.addObject("herbs", remedy.getHerbList());
            }
        } catch (Exception e) {
            view.addObject("message", ERROR_MSG);
        }
        view = new ModelAndView("result", "remedy", remedy);
        return view;
    }
}
