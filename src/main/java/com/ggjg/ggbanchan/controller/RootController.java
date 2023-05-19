package com.ggjg.ggbanchan.controller;

import com.ggjg.ggbanchan.model.Member;
import com.ggjg.ggbanchan.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/")
public class RootController {

    @Autowired
     MemberService memberSvc;

    @GetMapping("/")
    public String index() {
        return "index";
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @ResponseBody
    @PostMapping(value="/login")
    public ResponseEntity<String> login(Member member, HttpSession session) {
        Member loginMember = memberSvc.login(member);

        if(loginMember != null) {
            session.setAttribute("member", loginMember);
            return ResponseEntity.ok("login success");
        } else {
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("login fail");
        }
    }
}
