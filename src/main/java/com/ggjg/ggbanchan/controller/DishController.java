package com.ggjg.ggbanchan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/dish")
public class DishController {


    @GetMapping
    public String main() {

        return "/dish/dishList";
    }
}
