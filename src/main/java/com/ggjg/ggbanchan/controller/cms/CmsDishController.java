package com.ggjg.ggbanchan.controller.cms;

import com.ggjg.ggbanchan.model.Dish;
import com.ggjg.ggbanchan.service.DishService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class CmsDishController {

    @Autowired
    DishService dishSvc;

    @GetMapping("/cms/dish/subList")
    public String subList() {
        return "/cms/dish/subList";
    }

    @GetMapping("/cms/dish/insSub")
    public String insSub() {
        return "/cms/dish/insSub";
    }

    @PostMapping("/cms/dish/insSub")
    public String insSub(Dish dish) {
        dishSvc.insSub(dish);

        return "redirect:../dish/subList";
    }

    @GetMapping("/cms/dish/insDish")
    public String insDish() {
        return "/cms/dish/insDish";
    }

    @PostMapping("/cms/dish/insDish")
    public String insDish(Dish dish) {
        dishSvc.insDish(dish);
        return "redirect:../dish/dishList";
    }

    @GetMapping("/cms/dish/dishList")
    public String dishList() {
        return "/cms/dish/dishList";
    }
}
