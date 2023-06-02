package com.ggjg.ggbanchan.service;

import com.ggjg.ggbanchan.dao.CommDao;
import com.ggjg.ggbanchan.model.AutoNo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommServiceImpl implements CommService{

    @Autowired
    CommDao dao;

    @Override
    public void saveComCode(AutoNo atn) {
        dao.saveComCode(atn);
    }
}
