package com.ggjg.ggbanchan.controller;

import com.ggjg.ggbanchan.model.Member;
import com.ggjg.ggbanchan.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

    @Autowired
    BCryptPasswordEncoder bcryptPasswordEncoder;

    @GetMapping("/")
    public String index() {
        return "index";
    }

    @GetMapping("/signup")
    public String signup() {
        return "/signup";
    }

    @PostMapping("/signup")
    public String signup(Member member, Model model) {
        System.out.println("암호화 전 : " + member);
        System.out.println("--------------------------");

        // spring-security의 bcryptPasswordEncoder의 encode 속성을 사용하여 비밀번호를 암호화한다.
        member.setMEM_PW(bcryptPasswordEncoder.encode(member.getMEM_PW()));
        System.out.println("암호화 후 : " + member);

        /* 추후 개발시 중복및 등등 처리할 것 */
        memberSvc.insertMember(member);
        return "redirect:/";
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


/*

@ResponseBody
@PostMapping(value="/login")
public ResponseEntity<String> login(Member member, HttpSession session) {

        Member loginMember = memberSvc.login(member);

        Map<String, Object> pwMap = memberSvc.findById(member.getMEM_ID());

        // spring-security의 bcryptPasswordEncoder의 matches 속성을 사용하여 비밀번호를 복호화 한다.
        //                                                      입력 받은 비밀번호, 복호화 비밀번호
        if(loginMember != null && bcryptPasswordEncoder.matches(member.getMEM_PW(), loginMember.getMEM_PW())) {
        session.setAttribute("member", loginMember);
        return ResponseEntity.ok("login success");
        } else {
        return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("login fail");
        }

       Member loginMember = memberSvc.login(member.getMEM_ID());

        System.out.println("loginMember.getMEM_PW()" + loginMember.getMEM_PW()); // 저장된 값 못가지고옴
        System.out.println(" member.getMEM_PW()" +  member.getMEM_PW());  // 입력된 값

        // spring-security의 bcryptPasswordEncoder의 matches 속성을 사용하여 비밀번호를 복호화 한다.
        //                                                      입력 받은 비밀번호, 복호화 비밀번호
        if(loginMember != null && bcryptPasswordEncoder.matches(member.getMEM_PW(), loginMember.getMEM_PW())) {
            session.setAttribute("member", loginMember);
            return ResponseEntity.ok("login success");
        } else {
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("login fail");
        }
        }
*/
