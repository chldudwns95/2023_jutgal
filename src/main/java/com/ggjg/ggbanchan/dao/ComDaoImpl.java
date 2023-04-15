package com.ggjg.ggbanchan.dao;

import com.ggjg.ggbanchan.model.Dish;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ComDaoImpl implements ComDao{

    @Autowired
    SqlSession sql;

    @Override
    public void insSub(Dish dish) {
        sql.insert("dish.insSub", dish);
    }
}
