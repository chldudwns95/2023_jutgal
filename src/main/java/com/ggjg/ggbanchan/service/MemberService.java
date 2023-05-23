package com.ggjg.ggbanchan.service;

import com.ggjg.ggbanchan.model.Member;

import java.util.List;
import java.util.Map;

public interface MemberService {

    void insertMember(Member member);


    Member login(Member loginMember);
}
