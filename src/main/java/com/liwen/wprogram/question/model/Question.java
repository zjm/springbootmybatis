package com.liwen.wprogram.question.model;

import java.util.Date;

public class Question {
    private Long id;

    private Long userid;

    private String content;

    private Byte type;

    private Byte realnamepublish;

    private Date createtime;

    private Integer validityperiod;

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

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Integer getValidityperiod() {
        return validityperiod;
    }

    public void setValidityperiod(Integer validityperiod) {
        this.validityperiod = validityperiod;
    }
}