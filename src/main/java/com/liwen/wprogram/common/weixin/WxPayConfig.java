package com.liwen.wprogram.common.weixin;

/**
 * 小程序微信支付的配置文件
 * @author
 *
 */
public class WxPayConfig {
    //小程序appid
    public static final String AppID="wxe8a8a6ab55249f60";
    public static final String SECRET="2f76a178582cf88fa174c8c79553dcfc";

    public static final String AppId_Test="wx2f57278b4016320e";
    public static final String SECRET_Test="890abfb77fe26fc45e4205a54abaf518";
    //微信支付的商户id
    public static final String mch_id = "1515594131";

    public static  final String mch_key="k8y9w0b7";

    //支付成功后的服务器回调url
    public static final String NOTIFY_URL = "http://182.61.37.82:9090/order/wxNotify";
    //签名方式，固定值
    public static final String SIGNTYPE = "MD5";
    //交易类型，小程序支付的固定值为JSAPI
    public static final String TRADETYPE = "JSAPI";
    //微信统一下单接口地址
    public static final String pay_url = "https://api.mch.weixin.qq.com/pay/unifiedorder";
}
