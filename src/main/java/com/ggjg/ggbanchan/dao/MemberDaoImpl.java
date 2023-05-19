package com.ggjg.ggbanchan.dao;

import com.ggjg.ggbanchan.model.Member;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDaoImpl implements MemberDao{

    @Autowired
    SqlSession sql;

    @Override
    public Member login(Member member) {
        return sql.selectOne("member.login", member);
    }
}
