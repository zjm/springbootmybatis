package com.liwen.wprogram.common.weixin;

/**
 * 小程序微信支付的配置文件
 * @author
 *
 */
public class WxPayConfig {
    //小程序appid
    public static final String AppID="wxe8a8a6ab55249f60";
    public static final String SECRET="719bf888beaa77a081fcad7ce7cedc8d";

    public static final String AppId_Test="wx2f57278b4016320e";
    public static final String SECRET_Test="890abfb77fe26fc45e4205a54abaf518";
    //微信支付的商户id
    public static final String mch_id = "1515594131";

    public static  final String mch_key="zhangzhangzhangzhangzhangzhang12";

    public static  final String MSG_TOKEN="h1b1o8";
    public static final String NOTIFY_MSG_URL = "https://renmai.manmengtv.com/custom/wxmsg";
    //支付成功后的服务器回调url
    public static final String NOTIFY_URL = "https://renmai.manmengtv.com/order/wxNotify";
    //签名方式，固定值
    public static final String SIGNTYPE = "MD5";//HMAC-SHA256 //MD5
   // public static final String HMACSHA256 = "HMAC-SHA256";
    //交易类型，小程序支付的固定值为JSAPI
    public static final String TRADETYPE = "JSAPI";
    //微信统一下单接口地址
    //"https://api.mch.weixin.qq.com/pay/unifiedorder"
    public static final String pay_url = "https://api.mch.weixin.qq.com/pay/unifiedorder";
}
