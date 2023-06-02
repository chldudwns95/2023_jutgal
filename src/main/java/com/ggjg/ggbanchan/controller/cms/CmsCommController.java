package com.ggjg.ggbanchan.controller.cms;

import com.ggjg.ggbanchan.model.AutoNo;
import com.ggjg.ggbanchan.service.CommService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class CmsCommController {

    @Autowired
    CommService commSvc;

    @GetMapping("/cms/com/comList")
    public String comList() {
        return "/cms/com/comList";
    }

    @GetMapping("/cms/com/insComCode")
    public String insComCode() {
        return "/cms/com/insComCode";
    }

    @PostMapping("/cms/com/insComCode")
    public String insComCode(AutoNo atn) {
        commSvc.saveComCode(atn);

        return "redirect:../com/comList";
    }
}
