package com.liwen.wprogram.sharertop.model;

//人脉排行榜
public class SharerTop {
    private Long id;

    private Long userid;

    private String headimg;

    private Integer visits;

    private Byte isfriend;

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

    public String getHeadimg() {
        return headimg;
    }

    public void setHeadimg(String headimg) {
        this.headimg = headimg == null ? null : headimg.trim();
    }

    public Integer getVisits() {
        return visits;
    }

    public void setVisits(Integer visits) {
        this.visits = visits;
    }

    public Byte getIsfriend() {
        return isfriend;
    }

    public void setIsfriend(Byte isfriend) {
        this.isfriend = isfriend;
    }
}