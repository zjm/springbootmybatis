package com.liwen.wprogram.customservice.model;

public class CustomService {
    private String id;

    private String senduserid;

    private String recuserid;

    private String sendnickname;

    private String recnickname;

    private String content;

    private String imgurl;

    private String createtime;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getSenduserid() {
        return senduserid;
    }

    public void setSenduserid(String senduserid) {
        this.senduserid = senduserid == null ? null : senduserid.trim();
    }

    public String getRecuserid() {
        return recuserid;
    }

    public void setRecuserid(String recuserid) {
        this.recuserid = recuserid == null ? null : recuserid.trim();
    }

    public String getSendnickname() {
        return sendnickname;
    }

    public void setSendnickname(String sendnickname) {
        this.sendnickname = sendnickname == null ? null : sendnickname.trim();
    }

    public String getRecnickname() {
        return recnickname;
    }

    public void setRecnickname(String recnickname) {
        this.recnickname = recnickname == null ? null : recnickname.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public String getImgurl() {
        return imgurl;
    }

    public void setImgurl(String imgurl) {
        this.imgurl = imgurl == null ? null : imgurl.trim();
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime == null ? null : createtime.trim();
    }
}