package com.ggjg.ggbanchan.controller;
import com.ggjg.ggbanchan.model.Member;
import com.ggjg.ggbanchan.service.MemberService;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;

@Controller
@RequestMapping("/")
public class RootController {

    @Autowired
    MemberService memberSvc;

    @Autowired
    BCryptPasswordEncoder bcryptPasswordEncoder;

    @GetMapping("/")
    public String index(Model model) throws IOException {

        boolean result = false;
//        String url = "https://map.naver.com/v5/entry/place/17736608?lng=127.7757330&lat=36.1756811&placePath=%2Fhome%3Fentry=plt&c=15,0,0,0,dh";
        String url = "https://pcmap.place.naver.com/place/17736608/review/visitor?entry=plt&from=map&fromPanelNum=1&ts=1693283377989";
        Document doc = Jsoup.connect(url).get();

        Elements ele = doc.select("div.place_section");

        int cnt = ele.size();
        System.out.println("cnt" + cnt);

        return "index";
    }


    public static HashMap<String, String> map;

/*    @GetMapping("/crawling")
    public String startCrawling(Model model) throws IOException {

        boolean result = false;
        String url = "https://map.naver.com/v5/entry/place/17736608?lng=127.7757330&lat=36.1756811&placePath=%2Fhome%3Fentry=plt&c=15,0,0,0,dh";
        Document doc = Jsoup.connect(url).get();

        Elements ele = doc.select("div.place_section");

//        int cnt = ele.size();
//        System.out.println("cnt" + cnt);

        return ele;
    }*/

    @GetMapping("/signup")
    public String signup(HttpSession session) {
        if(session.getAttribute("loginMember") != null) {
            return "redirect:/";
        }
        /*return "/signup";*/
        return "redirect:/";
    }

    @PostMapping("/signup")
    public String signup(Member member, Model model, HttpSession session) {

        System.out.println("암호화 전 : " + member);
        System.out.println("--------------------------");
        member.setMemPw(bcryptPasswordEncoder.encode(member.getMemPw()));
        System.out.println("암호화 후 : " + member);
        // spring-security의 bcryptPasswordEncoder의 encode 속성을 사용하여 비밀번호를 암호화한다.

        /* 추후 개발시 중복및 등등 처리할 것 */
        memberSvc.insertMember(member);

        return "redirect:/";
    }

    @GetMapping("/login")
    public String login(HttpSession session) {
        if(session.getAttribute("loginMember") != null) {
            return "redirect:/";
        }
        return "login";
    }

    @PostMapping(value = "login")
    @ResponseBody
    public ResponseEntity<String> login(Member loginMember, HttpSession session) {
        Member member = memberSvc.login(loginMember);

        System.out.println(loginMember.getMemPw());
        System.out.println(member.getMemPw());

        if (member != null && bcryptPasswordEncoder.matches(loginMember.getMemPw(), member.getMemPw())) {
            System.out.println("login성공");
            session.setAttribute("loginMember", member);
            return ResponseEntity.ok("login success");
        } else
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("login fail");
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/";
    }
}