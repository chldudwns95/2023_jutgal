package com.ggjg.ggbanchan.dao;

import com.ggjg.ggbanchan.model.Board;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDaoImpl implements BoardDao{

    @Autowired
    SqlSession sql;

    @Override
    public void saveTypeList(Board board) {
        sql.insert("board.saveBoardType", board);
    }

    @Override
    public void saveIntro(Board board) {
        sql.insert("board.saveIntro", board);
    }
}
