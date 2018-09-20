package com.liwen.wprogram.kernelrecord.model;

public class KernelRecord {
    private Long id;

    private Long userid;

    private String title;

    private Integer rewardnum;

    private Byte type;

    private String rewardtime;

    private String createtime;

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