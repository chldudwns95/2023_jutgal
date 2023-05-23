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


    @GetMapping("")
    public String dashBoard() {

        return "/cms/dashBoard";
    }
}
