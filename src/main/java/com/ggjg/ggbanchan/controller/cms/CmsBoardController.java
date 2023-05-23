package com.ggjg.ggbanchan.controller.cms;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CmsBoardController {


    @GetMapping("/cms/intro/introList")
    public String introList() {

        return "/cms/intro/introList";
    }

    @GetMapping("/cms/intro/insIntro")
    public String insIntro() {
        return "/cms/intro/insIntro";
    }

}

