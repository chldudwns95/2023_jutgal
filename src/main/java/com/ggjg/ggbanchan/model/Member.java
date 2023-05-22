package com.ggjg.ggbanchan.model;

public class Member {
    String MEM_ID;
    String MEM_PW;
    String ROLE;
    String NAME;

    public void loginMember(String MEM_ID, String MEM_PW, String ROLE, String NAME) {
        this.MEM_ID = MEM_ID;
        this.MEM_PW = MEM_PW;
        this.ROLE = ROLE;
        this.NAME = NAME;
    }

    public String getMEM_ID() {
        return MEM_ID;
    }

    public void setMEM_ID(String MEM_ID) {
        this.MEM_ID = MEM_ID;
    }

    public String getMEM_PW() {
        return MEM_PW;
    }

    public void setMEM_PW(String MEM_PW) {
        this.MEM_PW = MEM_PW;
    }

    public String getROLE() {
        return ROLE;
    }

    public void setROLE(String ROLE) {
        this.ROLE = ROLE;
    }

    public String getNAME() {
        return NAME;
    }

    public void setNAME(String NAME) {
        this.NAME = NAME;
    }
}
