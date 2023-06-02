package com.ggjg.ggbanchan.dao;

import com.ggjg.ggbanchan.model.AutoNo;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CommDaoImpl implements CommDao{

    @Autowired
    SqlSession sql;


    @Override
    public void saveComCode(AutoNo atn) {
        sql.insert("autoNo.saveComCode", atn);
    }
}
