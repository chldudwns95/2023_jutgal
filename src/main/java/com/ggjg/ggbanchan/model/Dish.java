package com.ggjg.ggbanchan.model;

public class Dish {

    private String dishCode;
    private String dishName;
    private String dishContents;
    private String dishPrice;
    private String dishG;
    private String subtileCode;
    private String subTitleName;
    private int dishViewCnt;

    public String getDishCode() {
        return dishCode;
    }

    public void setDishCode(String dishCode) {
        this.dishCode = dishCode;
    }

    public String getDishName() {
        return dishName;
    }

    public void setDishName(String dishName) {
        this.dishName = dishName;
    }

    public String getDishContents() {
        return dishContents;
    }

    public void setDishContents(String dishContents) {
        this.dishContents = dishContents;
    }

    public String getDishPrice() {
        return dishPrice;
    }

    public void setDishPrice(String dishPrice) {
        this.dishPrice = dishPrice;
    }

    public String getDishG() {
        return dishG;
    }

    public void setDishG(String dishG) {
        this.dishG = dishG;
    }

    public String getSubtileCode() {
        return subtileCode;
    }

    public void setSubtileCode(String subtileCode) {
        this.subtileCode = subtileCode;
    }

    public String getSubTitleName() {
        return subTitleName;
    }

    public void setSubTitleName(String subTitleName) {
        this.subTitleName = subTitleName;
    }

    public int getDishViewCnt() {
        return dishViewCnt;
    }

    public void setDishViewCnt(int dishViewCnt) {
        this.dishViewCnt = dishViewCnt;
    }
}