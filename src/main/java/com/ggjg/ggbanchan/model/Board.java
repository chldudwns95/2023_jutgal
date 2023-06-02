package com.ggjg.ggbanchan.model;

import java.util.Date;

public class Board {

    private String boardType;
    private String boardName;

    /* BOARD_DTL */
    private String boardCode;
    private String boardTitle;
    private String boardContents;
    private Date regDate;
    private String boardViewCnt;
    private String memId;

    public String getBoardType() {
        return boardType;
    }

    public void setBoardType(String boardType) {
        this.boardType = boardType;
    }

    public String getBoardName() {
        return boardName;
    }

    public void setBoardName(String boardName) {
        this.boardName = boardName;
    }

    public String getBoardCode() {
        return boardCode;
    }

    public void setBoardCode(String boardCode) {
        this.boardCode = boardCode;
    }

    public String getBoardTitle() {
        return boardTitle;
    }

    public void setBoardTitle(String boardTitle) {
        this.boardTitle = boardTitle;
    }

    public String getBoardContents() {
        return boardContents;
    }

    public void setBoardContents(String boardContents) {
        this.boardContents = boardContents;
    }

    public Date getRegDate() {
        return regDate;
    }

    public void setRegDate(Date regDate) {
        this.regDate = regDate;
    }

    public String getBoardViewCnt() {
        return boardViewCnt;
    }

    public void setBoardViewCnt(String boardViewCnt) {
        this.boardViewCnt = boardViewCnt;
    }

    public String getMemId() {
        return memId;
    }

    public void setMemId(String memId) {
        this.memId = memId;
    }
}
