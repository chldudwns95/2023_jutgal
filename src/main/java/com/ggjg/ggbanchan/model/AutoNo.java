package com.ggjg.ggbanchan.model;

import java.util.Date;

public class AutoNo {
    /* AutoMst */
    private String autoNo;
    private String autoNm;
    private String refCode;
    private String refName;

    /* AutoDtl */
    private String commCd;
    private String preFix;
    private String afterFixl;
    private Date RegDate;

    public String getAutoNo() {
        return autoNo;
    }

    public void setAutoNo(String autoNo) {
        this.autoNo = autoNo;
    }

    public String getAutoNm() {
        return autoNm;
    }

    public void setAutoNm(String autoNm) {
        this.autoNm = autoNm;
    }

    public String getRefCode() {
        return refCode;
    }

    public void setRefCode(String refCode) {
        this.refCode = refCode;
    }

    public String getRefName() {
        return refName;
    }

    public void setRefName(String refName) {
        this.refName = refName;
    }

    public String getCommCd() {
        return commCd;
    }

    public void setCommCd(String commCd) {
        this.commCd = commCd;
    }

    public String getPreFix() {
        return preFix;
    }

    public void setPreFix(String preFix) {
        this.preFix = preFix;
    }

    public String getAfterFixl() {
        return afterFixl;
    }

    public void setAfterFixl(String afterFixl) {
        this.afterFixl = afterFixl;
    }

    public Date getRegDate() {
        return RegDate;
    }

    public void setRegDate(Date regDate) {
        RegDate = regDate;
    }


    @Override
    public String toString() {
        return "AutoNo{" +
                "autoNo='" + autoNo + '\'' +
                ", autoNm='" + autoNm + '\'' +
                ", refCode='" + refCode + '\'' +
                ", refName='" + refName + '\'' +
                ", commCd='" + commCd + '\'' +
                ", preFix='" + preFix + '\'' +
                ", afterFixl='" + afterFixl + '\'' +
                ", RegDate=" + RegDate +
                '}';
    }
}


