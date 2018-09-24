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
}
