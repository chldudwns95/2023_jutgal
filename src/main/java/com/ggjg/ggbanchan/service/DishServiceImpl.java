package com.ggjg.ggbanchan.service;

import com.ggjg.ggbanchan.dao.ComDao;
import com.ggjg.ggbanchan.model.Dish;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DishServiceImpl implements DishService{

    @Autowired
    ComDao dao;

    @Override
    public void insSub(Dish dish) {
        dao.insSub(dish);

    }
}
