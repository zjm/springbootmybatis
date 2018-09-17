package com.liwen.wprogram.kernelrecord.model;

import java.util.Date;

public class KernelRecord {
    private Integer id;

    private String title;

    private Integer rewardnum;

    private Byte type;

    private Date rewardtime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public Integer getRewardnum() {
        return rewardnum;
    }

    public void setRewardnum(Integer rewardnum) {
        this.rewardnum = rewardnum;
    }

    public Byte getType() {
        return type;
    }

    public void setType(Byte type) {
        this.type = type;
    }

    public Date getRewardtime() {
        return rewardtime;
    }

    public void setRewardtime(Date rewardtime) {
        this.rewardtime = rewardtime;
    }
}