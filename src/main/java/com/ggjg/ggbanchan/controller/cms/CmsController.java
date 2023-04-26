package com.ggjg.ggbanchan.controller.cms;

import com.ggjg.ggbanchan.model.Dish;
import com.ggjg.ggbanchan.service.DishService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cms")
public class CmsController {

    @Autowired
    DishService dishSvc;

    @GetMapping("")
    public String dashBoard() {

        return "/cms/dashBoard";
    }

    @GetMapping("/intro/introList")
    public String introList() {

        return "/cms/intro/introList";
    }

    @GetMapping("/intro/insIntro")
    public String insIntro() {
        return "/cms/intro/insIntro";
    }


    @GetMapping("/dish/subList")
    public String subList() {
        return "/cms/dish/subList";
    }

    @GetMapping("/dish/insSub")
    public String insSub() {
        return "/cms/dish/insSub";
    }

    @PostMapping("/dish/insSub")
    public String insSub(Dish dish) {
        dishSvc.insSub(dish);

         return "redirect:../dish/subList";
    }

    @GetMapping("/dish/insDish")
    public String insDish() {
        return "/cms/dish/insDish";
    }

    @PostMapping("/dish/insDish")
    public String insDish(Dish dish) {
        dishSvc.insDish(dish);
        return "redirect:../dish/dishList";
    }


    @GetMapping("/dish/dishList")
    public String dishList() {
        return "/cms/dish/dishList";
    }


    @GetMapping("/com/comList")
    public String comList() {
        return "/cms/com/comList";
    }
    @GetMapping("/com/insComCode")
    public String insComCode() {
        return "/cms/com/insComCode";
    }

    @GetMapping("/com/menuList")
    public String menuList() {
        return "/cms/com/menuList";
    }

    @GetMapping("/com/insMenu")
    public String insMenuList() {
        return "/cms/com/insMenu";
    }


}
