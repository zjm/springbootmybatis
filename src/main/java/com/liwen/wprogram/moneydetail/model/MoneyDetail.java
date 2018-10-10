package com.liwen.wprogram.moneydetail.model;

public class MoneyDetail {
    private String id;

    private String userid;

    private Byte type;

    private Byte status;

    private String moneynum;

    private String title;

    private String note;

    private String createtime;

    private String successtime;

    private String failtime;

    private String startpaytime;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }

    public Byte getType() {
        return type;
    }

    public void setType(Byte type) {
        this.type = type;
    }

    public Byte getStatus() {
        return status;
    }

    public void setStatus(Byte status) {
        this.status = status;
    }

    public String getMoneynum() {
        return moneynum;
    }

    public void setMoneynum(String moneynum) {
        this.moneynum = moneynum == null ? null : moneynum.trim();
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note == null ? null : note.trim();
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime == null ? null : createtime.trim();
    }

    public String getSuccesstime() {
        return successtime;
    }

    public void setSuccesstime(String successtime) {
        this.successtime = successtime == null ? null : successtime.trim();
    }

    public String getFailtime() {
        return failtime;
    }

    public void setFailtime(String failtime) {
        this.failtime = failtime == null ? null : failtime.trim();
    }

    public String getStartpaytime() {
        return startpaytime;
    }

    public void setStartpaytime(String startpaytime) {
        this.startpaytime = startpaytime == null ? null : startpaytime.trim();
    }
}