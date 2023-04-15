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

         return "/cms/dish/subList";

    }


    @GetMapping("/dish/dishList")
    public String dishList() {
        return "/cms/dish/dishList";
    }
}
