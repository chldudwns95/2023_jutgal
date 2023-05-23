package com.ggjg.ggbanchan.controller.cms;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class cmsCommController {

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
