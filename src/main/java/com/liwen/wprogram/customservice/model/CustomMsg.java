package com.liwen.wprogram.customservice.model;

public class CustomMsg {

    public long getSenduserid() {
        return senduserid;
    }

    public void setSenduserid(long senduserid) {
        this.senduserid = senduserid;
    }

    public long getRecuserid() {
        return recuserid;
    }

    public void setRecuserid(long recuserid) {
        this.recuserid = recuserid;
    }

    public String getSendnickname() {
        return sendnickname;
    }

    public void setSendnickname(String sendnickname) {
        this.sendnickname = sendnickname;
    }

    public String getRecnickname() {
        return recnickname;
    }

    public void setRecnickname(String recnickname) {
        this.recnickname = recnickname;
    }

    public String getSendimghead() {
        return sendimghead;
    }

    public void setSendimghead(String sendimghead) {
        this.sendimghead = sendimghead;
    }

    public String getRecimghead() {
        return recimghead;
    }

    public void setRecimghead(String recimghead) {
        this.recimghead = recimghead;
    }

    public String getImgurl() {
        return imgurl;
    }

    public void setImgurl(String imgurl) {
        this.imgurl = imgurl;
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    private long id;
    private long senduserid;
    private long recuserid;
    private String sendnickname;
    private String recnickname;
    private String sendimghead;
    private String recimghead;
    private String imgurl;
    private String createtime;

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    private String content;
}
