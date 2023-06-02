package com.ggjg.ggbanchan.dao;

import com.ggjg.ggbanchan.model.Board;

public interface BoardDao {

    void saveTypeList(Board board);
    void saveIntro(Board board);

}
