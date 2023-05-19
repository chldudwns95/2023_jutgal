package com.ggjg.ggbanchan.service;

import com.ggjg.ggbanchan.dao.MemberDao;
import com.ggjg.ggbanchan.model.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {

    @Autowired
    MemberDao dao;

    @Override
    public Member login(Member member) {
        return dao.login(member);
    }
}
