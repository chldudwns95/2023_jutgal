package com.ggjg.ggbanchan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cms")
public class CmsDishController {

    @GetMapping("/insDish")
    public String insDish() {

        return "dish/insDish";
    }

}
