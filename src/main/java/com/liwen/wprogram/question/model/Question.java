package com.liwen.wprogram.question.model;

public class Question {
    private String id;

    private String userid;

    private String productid;

    private String title;

    private String content;

    private Byte type;

    private Byte realnamepublish;

    private Integer validityperiod;

    private Byte status;

    private Byte questiontype;

    private Integer viewnum;

    private Integer ansernum;

    private String giftimg;

    private String publishcompany;

    private Float rewardbalance;

    private String createtime;

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

    public String getProductid() {
        return productid;
    }

    public void setProductid(String productid) {
        this.productid = productid == null ? null : productid.trim();
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

    public Integer getValidityperiod() {
        return validityperiod;
    }

    public void setValidityperiod(Integer validityperiod) {
        this.validityperiod = validityperiod;
    }

    public Byte getStatus() {
        return status;
    }

    public void setStatus(Byte status) {
        this.status = status;
    }

    public Byte getQuestiontype() {
        return questiontype;
    }

    public void setQuestiontype(Byte questiontype) {
        this.questiontype = questiontype;
    }

    public Integer getViewnum() {
        return viewnum;
    }

    public void setViewnum(Integer viewnum) {
        this.viewnum = viewnum;
    }

    public Integer getAnsernum() {
        return ansernum;
    }

    public void setAnsernum(Integer ansernum) {
        this.ansernum = ansernum;
    }

    public String getGiftimg() {
        return giftimg;
    }

    public void setGiftimg(String giftimg) {
        this.giftimg = giftimg == null ? null : giftimg.trim();
    }

    public String getPublishcompany() {
        return publishcompany;
    }

    public void setPublishcompany(String publishcompany) {
        this.publishcompany = publishcompany == null ? null : publishcompany.trim();
    }

    public Float getRewardbalance() {
        return rewardbalance;
    }

    public void setRewardbalance(Float rewardbalance) {
        this.rewardbalance = rewardbalance;
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime == null ? null : createtime.trim();
    }
}