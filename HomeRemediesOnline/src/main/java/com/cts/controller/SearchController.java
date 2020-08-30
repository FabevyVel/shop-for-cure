package com.cts.controller;

import com.cts.dao.SearchDao;
import com.cts.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

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

    @RequestMapping(value = "/get-info", method = RequestMethod.GET)
    public ModelAndView getInfo(HttpServletRequest request) {
        String searchTerm = request.getParameter("searchTerm");
        String category = request.getParameter("category");
        SearchContent content = new SearchContent();
        content.setSearchTerm(searchTerm);
        content.setCategory(category);
        return processInfoRequest(content);
    }

    @RequestMapping(value = "/searchInfo", method = RequestMethod.POST)
    public ModelAndView searchInfo(@ModelAttribute("searchContent") SearchContent content) {
        return processInfoRequest(content);
    }

    private ModelAndView processInfoRequest(SearchContent content){
        ModelAndView view = null;
        String searchTerm = content.getSearchTerm();
        try {
            if ("disease".equalsIgnoreCase(content.getCategory())) {
                Remedy remedy = searchService.searchRemedyByDiseaseName(searchTerm);
                if (remedy != null) {
                    if(!remedy.getFruitList().isEmpty() && !remedy.getHerbList().isEmpty()){
                        view = new ModelAndView("remedy-result", "remedy", remedy);
                        view.addObject("searchContent", content);
                    }
                }else {
                    List<Disease> diseases = searchService.getAllDiseases(searchTerm);
                    if(!diseases.isEmpty()) {
                        view = new ModelAndView("diseases", "diseaseList", diseases);
                        view.addObject("searchContent", content);
                    }
                }
            } else if ("fruit".equalsIgnoreCase(content.getCategory())) {
                List<Disease> diseaseList = searchService.searchDiseaseByFruitName(searchTerm);
                if (diseaseList != null) {
                    view = new ModelAndView("disease-result", "diseases", diseaseList);
                    view.addObject("searchContent", content);
                }else{
                    List<Fruit> fruits = searchService.getAllFruits(searchTerm);
                    if(!fruits.isEmpty()) {
                        view = new ModelAndView("fruits", "fruitList", fruits);
                        view.addObject("searchContent", content);
                    }
                }
            } else {
                List<Disease> diseaseList = searchService.searchDiseaseByHerbName(searchTerm);
                if (diseaseList != null) {
                    view = new ModelAndView("disease-result", "diseases", diseaseList);
                    view.addObject("searchContent", content);
                }else{
                    List<Herb> herbs = searchService.getAllHerbs(searchTerm);
                    if(!herbs.isEmpty()) {
                        view = new ModelAndView("herbs", "herbList", herbs);
                        view.addObject("searchContent", content);
                    }
                }
            }
        } catch (Exception e) {
            view = new ModelAndView("search");
            view.addObject("searchResult", ERROR_MSG);
        }
        if(view==null){
            view = new ModelAndView("search");
            String attributeVal = "disease".equalsIgnoreCase(content.getCategory()) ? "No remedies found for ":
                                    "No results found for ";
            view.addObject( "searchResult", attributeVal + content.getCategory() + " "
                    + searchTerm);
            view.addObject("searchContent", content);
        }
        return view;
    }
}
