package com.liwen.wprogram.question.model;

import com.liwen.wprogram.sellproduct.model.SellProduct;
import com.liwen.wprogram.user.model.UserInfo;

public class QuestionInfo {
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

    public Question getQuestion() {
        return question;
    }

    public void setQuestion(Question question) {
        this.question = question;
    }

    private  Question question;
    private UserInfo userInfo;
    private SellProduct sellProduct;
}
