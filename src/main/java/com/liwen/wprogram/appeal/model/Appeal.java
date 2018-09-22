package com.liwen.wprogram.appeal.model;

//申诉投诉
public class Appeal {
    private Long id;

    private Long senduserid;

    private Long recuserid;

    private Long orderid;

    private String title;

    private String content;

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

    public Long getOrderid() {
        return orderid;
    }

    public void setOrderid(Long orderid) {
        this.orderid = orderid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime == null ? null : createtime.trim();
    }
}