package com.liwen.wprogram.user.model;

import com.liwen.wprogram.common.BaseResult;

public class UserInforResult  extends BaseResult {
    public int getReged() {
        return reged;
    }

    public void setReged(int reged) {
        this.reged = reged;
    }

    //该openid： 0.未注册，1.已注册
    private  int reged =0;
    private String id;
    private String headimg;
    private String nickname;
    private String phone;
    private String name;
    private String department;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getHeadimg() {
        return headimg;
    }

    public void setHeadimg(String headimg) {
        this.headimg = headimg;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getWeixinhao() {
        return weixinhao;
    }

    public void setWeixinhao(String weixinhao) {
        this.weixinhao = weixinhao;
    }

    private String weixinhao;

}
