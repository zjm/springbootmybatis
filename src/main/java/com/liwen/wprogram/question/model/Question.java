package com.liwen.wprogram.question.model;

public class Question {
    private Long id;

    private Long userid;

    private String content;

    private Byte type;

    private Byte realnamepublish;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getUserid() {
        return userid;
    }

    public void setUserid(Long userid) {
        this.userid = userid;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public Byte getType() {
        return type;
    }

    public void setType(Byte type) {
        this.type = type;
    }

    public Byte getRealnamepublish() {
        return realnamepublish;
    }

    public void setRealnamepublish(Byte realnamepublish) {
        this.realnamepublish = realnamepublish;
    }
}