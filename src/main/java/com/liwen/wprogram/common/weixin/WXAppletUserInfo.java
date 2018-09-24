package com.liwen.wprogram.common.weixin;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.liwen.wprogram.common.Utils;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.util.encoders.Base64;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import javax.servlet.http.HttpServletRequest;
import java.security.AlgorithmParameters;
import java.security.Security;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;


/**
 * 微信小程序信息获取
 *
 * @author zhy
 */
public class WXAppletUserInfo  {
  //  private static Logger log = Logger.getLogger(WXAppletUserInfo.class);

    private static final  Boolean SEND_DEBUG = true;



//    public static void main(String[] args){
//        String code = "033D3g5J0iw7Sg2yA48J0Gfl5J0D3g5m";
//        String ret = getSessionKeyOropenid(code).toJSONString();
//        System.out.println("ret:"+ret);
//
//
//    }

    /**
     *
     * @param code
     * @return
     */

    public static JSONObject getSessionKeyOropenid(String code){
        //微信端登录code值
        String wxCode = code;
//        ResourceBundle resource = ResourceBundle.getBundle("weixin");	//读取属性文件
        String requestUrl = "https://api.weixin.qq.com/sns/jscode2session";
        Map<String,String> requestUrlParam = new HashMap<String,String>();
        if (SEND_DEBUG) {
            requestUrlParam.put("appid",  WxPayConfig.AppID);    //开发者设置中的appId
            requestUrlParam.put("secret", WxPayConfig.SECRET);    //开发者设置中的appSecret
        }else
        {
            requestUrlParam.put("appid", WxPayConfig.AppId_Test);
            requestUrlParam.put("secret", WxPayConfig.SECRET_Test);
        }
        requestUrlParam.put("js_code", wxCode);	//小程序调用wx.login返回的code
        requestUrlParam.put("grant_type", "authorization_code");	//默认参数

        //发送post请求读取调用微信 https://api.weixin.qq.com/sns/jscode2session 接口获取openid用户唯一标识
        //JSONObject jsonObject = JSON.parseObject(Utils.sendPost(requestUrl, requestUrlParam));
        return JSON.parseObject(Utils.sendPost(requestUrl, requestUrlParam));
    }

    /**
     * 解密用户敏感数据获取用户信息
     *
     * @author zhy
     * @param sessionKey 数据进行加密签名的密钥
     * @param encryptedData 包括敏感数据在内的完整用户信息的加密数据
     * @param iv 加密算法的初始向量
     * @return
     */
    public static JSONObject getUserInfo(String encryptedData,String sessionKey,String iv){
        // 被加密的数据
        byte[] dataByte = Base64.decode(encryptedData);
        // 加密秘钥
        byte[] keyByte = Base64.decode(sessionKey);
        // 偏移量
        byte[] ivByte = Base64.decode(iv);
        try {
            // 如果密钥不足16位，那么就补足.  这个if 中的内容很重要
            int base = 16;
            if (keyByte.length % base != 0) {
                int groups = keyByte.length / base + (keyByte.length % base != 0 ? 1 : 0);
                byte[] temp = new byte[groups * base];
                Arrays.fill(temp, (byte) 0);
                System.arraycopy(keyByte, 0, temp, 0, keyByte.length);
                keyByte = temp;
            }
            // 初始化
            Security.addProvider(new BouncyCastleProvider());
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS7Padding","BC");
            SecretKeySpec spec = new SecretKeySpec(keyByte, "AES");
            AlgorithmParameters parameters = AlgorithmParameters.getInstance("AES");
            parameters.init(new IvParameterSpec(ivByte));
            cipher.init(Cipher.DECRYPT_MODE, spec, parameters);// 初始化
            byte[] resultByte = cipher.doFinal(dataByte);
            if (null != resultByte && resultByte.length > 0) {
                String result = new String(resultByte, "UTF-8");
                return JSON.parseObject(result);
            }
        } catch (Exception e) {
            e.printStackTrace();
            //.error(e.getMessage(), e);
        }
        return null;
    }

    /**
     *
     * @param openid
     * @param request
     * @return
     */
    public  Map<String, Object> wxPay(String openid, HttpServletRequest request){

        try{
            //生成随机字符串
           // String openid = request.getParameter("openid").toString();
            String nonce_str = Utils.getRandomStringByLength(32);
            //商品名称
            String body="测试商品名称";
            String spbill_create_ip = Utils.getIpAddr(request);
            Map<String,String> packageParams = new HashMap<>();
            packageParams.put("appid",WxPayConfig.AppID);
            packageParams.put("mch_id",WxPayConfig.mch_id);
            packageParams.put("nonce_str",nonce_str);
            packageParams.put("body",body);
            packageParams.put("out_trade_no","852357159463");
            packageParams.put("total_fee","1");//支付金额，这边需要转成字符串类型，否则后面的签名会失败
            packageParams.put("spbill_create_ip",spbill_create_ip);
            packageParams.put("notify_url",WxPayConfig.NOTIFY_URL);
            packageParams.put("trade_type",WxPayConfig.TRADETYPE);
            packageParams.put("openid",openid);

            String prestr=Utils.createLinkString(packageParams);
            String mysign = Utils.sign(prestr,WxPayConfig.mch_key,"utf-8").toUpperCase();

            //拼接统一下单接口使用的xml数据，要将上一步生成的签名一起拼接进去
            String xml = "<xml>" + "<appid>" + WxPayConfig.AppID + "</appid>"
                    + "<body><![CDATA[" + body + "]]></body>"
                    + "<mch_id>" + WxPayConfig.mch_id + "</mch_id>"
                    + "<nonce_str>" + nonce_str + "</nonce_str>"
                    + "<notify_url>" + WxPayConfig.NOTIFY_URL + "</notify_url>"
                    + "<openid>" + openid + "</openid>"
                    + "<out_trade_no>" + "123456789" + "</out_trade_no>"
                    + "<spbill_create_ip>" + spbill_create_ip + "</spbill_create_ip>"
                    + "<total_fee>" + "1" + "</total_fee>"
                    + "<trade_type>" + WxPayConfig.TRADETYPE + "</trade_type>"
                    + "<sign>" + mysign + "</sign>"
                    + "</xml>";

            System.out.println("调试模式_统一下单接口 请求XML数据：" + xml);

            //调用统一下单接口，并接受返回的结果
            String result = Utils.httpRequest(WxPayConfig.pay_url, "POST", xml);

            System.out.println("调试模式_统一下单接口 返回XML数据：" + result);


            Map map = Utils.doXMLParse(result);

            String return_code = (String)map.get("return_code");//返回状态码
            Map<String, Object> response = new HashMap<>();//返回给小程序端需要的参数
            if(return_code.toUpperCase().equals("SUCCESS")){
                String prepay_id = (String) map.get("prepay_id");//返回的预付单信息
                response.put("nonceStr", nonce_str);
                response.put("package", "prepay_id=" + prepay_id);
                Long timeStamp = System.currentTimeMillis() / 1000;
                response.put("timeStamp", timeStamp + "");//这边要将返回的时间戳转化成字符串，不然小程序端调用wx.requestPayment方法会报签名错误
                //拼接签名需要的参数
                String stringSignTemp = "appId=" + WxPayConfig.AppID + "&nonceStr=" + nonce_str + "&package=prepay_id=" + prepay_id+ "&signType=MD5&timeStamp=" + timeStamp;
                //再次签名，这个签名用于小程序端调用wx.requesetPayment方法
                String paySign = Utils.sign(stringSignTemp, WxPayConfig.mch_key, "utf-8").toUpperCase();

                response.put("paySign", paySign);
            }

            response.put("appid", WxPayConfig.AppID);

            return response;

        }catch (Exception e)
        {
            e.printStackTrace();
            return null;

        }

    }



}

