package com.liwen.wprogram.order.model;

import com.liwen.wprogram.myaddress.model.MyAddress;
import com.liwen.wprogram.sellproduct.model.SellProduct;
import com.liwen.wprogram.user.model.UserInfo;

public class OrderInfo {

    public MyAddress getMyAddress() {
        return myAddress;
    }

    public void setMyAddress(MyAddress myAddress) {
        this.myAddress = myAddress;
    }

    public UserInfo getUserInfo() {
        return userInfo;
    }

    public void setUserInfo(UserInfo userInfo) {
        this.userInfo = userInfo;
    }

    public SellProduct getSellProduct() {
        return sellProduct;
    }

    public void setSellProduct(SellProduct sellProduct) {
        this.sellProduct = sellProduct;
    }

    private MyAddress myAddress;
    private UserInfo userInfo;
    private SellProduct sellProduct;

    public String getOrderid() {
        return orderid;
    }

    public void setOrderid(String orderid) {
        this.orderid = orderid;
    }

    private String orderid ;

    public int getBuyNum() {
        return buyNum;
    }

    public void setBuyNum(int buyNum) {
        this.buyNum = buyNum;
    }

    public byte getStatus() {
        return status;
    }

    public void setStatus(byte status) {
        this.status = status;
    }

    public byte getSendType() {
        return sendType;
    }

    public void setSendType(byte sendType) {
        this.sendType = sendType;
    }

    private int buyNum;
    private byte status;
    private byte sendType;

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    private String createTime;

}
