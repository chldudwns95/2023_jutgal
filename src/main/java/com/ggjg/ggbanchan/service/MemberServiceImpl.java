package com.ggjg.ggbanchan.service;

import com.ggjg.ggbanchan.dao.MemberDao;
import com.ggjg.ggbanchan.model.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberServiceImpl implements MemberService {

    @Autowired
    MemberDao dao;

    @Override
    public void insertMember(Member member) {
        dao.insertMember(member);

    }

    @Override
    public Member login(Member loginMember) {
        return dao.login(loginMember);
    }
}
