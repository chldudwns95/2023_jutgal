package com.ggjg.ggbanchan.dao;

import com.ggjg.ggbanchan.model.Member;

import java.util.List;
import java.util.Map;

public interface MemberDao {

    void insertMember(Member member);


    Member login(Member loginMember);

    String findByPw(String memId);
}
