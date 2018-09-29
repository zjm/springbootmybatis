package com.liwen.wprogram.kernelrecord.model;

public class KernelRecord {
    private String id;

    private String userid;

    private String title;

    private Integer rewardnum;

    private Byte type;

    private String rewardtime;

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

    public String getRewardtime() {
        return rewardtime;
    }

    public void setRewardtime(String rewardtime) {
        this.rewardtime = rewardtime == null ? null : rewardtime.trim();
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime == null ? null : createtime.trim();
    }
}