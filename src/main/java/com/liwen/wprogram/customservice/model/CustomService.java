package com.liwen.wprogram.customservice.model;

public class CustomService {
    private Long id;

    private Long senduserid;

    private Long recuserid;

    private String sendnickname;

    private String recnickname;

    private String content;

    private String imgurl;

    private String createtime;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getSenduserid() {
        return senduserid;
    }

    public void setSenduserid(Long senduserid) {
        this.senduserid = senduserid;
    }

    public Long getRecuserid() {
        return recuserid;
    }

    public void setRecuserid(Long recuserid) {
        this.recuserid = recuserid;
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