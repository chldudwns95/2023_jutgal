package com.ggjg.ggbanchan.service;

import com.ggjg.ggbanchan.dao.BoardDao;
import com.ggjg.ggbanchan.model.Board;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService{

    @Autowired
    BoardDao dao;

    @Override
    public void saveTypeList(Board board) {
        dao.saveTypeList(board);
    }
    @Override
    public void saveIntro(Board board) {
        dao.saveIntro(board);
    }

}
