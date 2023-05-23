package com.ggjg.ggbanchan.dao;

import com.ggjg.ggbanchan.model.Member;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MemberDaoImpl implements MemberDao{

    @Autowired
    SqlSession sql;

    @Override
    public void insertMember(Member member) {
        sql.insert("member.signup", member);
    }

    @Override
    public Member login(Member loginMember) {
        return sql.selectOne("member.login", loginMember);
    }

    @Override
    public String findByPw(String memId) {
        return sql.selectOne("member.findByPw", memId);
    }

}
