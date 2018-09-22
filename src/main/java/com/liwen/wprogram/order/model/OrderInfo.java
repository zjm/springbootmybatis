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

}
