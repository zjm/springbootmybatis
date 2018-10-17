package com.liwen.wprogram.order.controller;

import com.alibaba.fastjson.JSONObject;
import com.liwen.wprogram.common.BaseConroller;
import com.liwen.wprogram.common.BaseConstant;
import com.liwen.wprogram.common.BaseResult;
import com.liwen.wprogram.common.Utils;
import com.liwen.wprogram.common.weixin.*;
import com.liwen.wprogram.myaddress.model.MyAddress;
import com.liwen.wprogram.myaddress.service.MyAddressService;
import com.liwen.wprogram.order.model.OrderInfo;
import com.liwen.wprogram.order.model.SellOrder;
import com.liwen.wprogram.order.service.OrderService;
import com.liwen.wprogram.sellproduct.model.SellProduct;
import com.liwen.wprogram.sellproduct.service.SellProductService;
import com.liwen.wprogram.user.model.UserInfo;
import com.liwen.wprogram.user.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "/order")
public class OrderController extends BaseConroller {

    @Autowired
    private OrderService orderService;
    @Autowired
    private UserInfoService userInfoService;
    @Autowired
    private MyAddressService myAddressService;
    @Autowired
    private SellProductService sellProductService;


    @RequestMapping(value = "/myorderInfos")
    @ResponseBody
    public BaseResult getMyOrderInfos(String userid)
    {
        logger.info("getOrderInfo:" + userid );
        //  return kernelRecordService.getKernelRecords(userid);
        BaseResult br = new BaseResult();
        try {
            br.setResult(BaseConstant.SUCCESS_INFO);
            br.setCode(BaseConstant.SUCCESS_CODE);

            List<SellOrder> orderList = orderService.getMyOrderList(userid);
            OrderInfo orderInfo=null;
            MyAddress myAddress= null;
            UserInfo userInfo =null;
            SellProduct sellProduct=null;
            List<OrderInfo> listOrderInfo = new ArrayList<>();
            for(SellOrder oder:orderList)
            {
                orderInfo = new OrderInfo();
                myAddress = myAddressService.getMyAddress(oder.getAddressid());
                userInfo = userInfoService.getUserInfo(oder.getUserid().toString());
                sellProduct  = sellProductService.getSellProduct(oder.getProductid());
                orderInfo.setOrderid(oder.getId());
                orderInfo.setBuyNum(oder.getBuynum());
                orderInfo.setStatus(oder.getStatus());
                orderInfo.setSendType(oder.getSendtype());
                orderInfo.setCreateTime(oder.getCreatetime());
                orderInfo.setUserInfo(userInfo);
                orderInfo.setMyAddress(myAddress);
                orderInfo.setSellProduct(sellProduct);
                listOrderInfo.add(orderInfo);
            }
            br.setData(listOrderInfo);
            //br.setData(or.getMyAddressList(userid));
            return br;
        }catch (Exception e)
        {
            br.setResult(BaseConstant.FAIL_INFO+"->:"+e.getMessage());
            br.setCode(BaseConstant.FAIL_CODE);
            br.setData(null);
            return br;
        }
    }

    @RequestMapping(value = "/singleorderInfo")
    @ResponseBody
    public BaseResult getOrderInfo(String orderid)
    {
        logger.info("getOrderInfo:" + orderid );
        //  return kernelRecordService.getKernelRecords(userid);
        BaseResult br = new BaseResult();
        try {
            br.setResult(BaseConstant.SUCCESS_INFO);
            br.setCode(BaseConstant.SUCCESS_CODE);
            SellOrder order = orderService.getOrder(orderid);
            MyAddress myAddress = myAddressService.getMyAddress(order.getAddressid());
            UserInfo userInfo = userInfoService.getUserInfo(order.getUserid().toString());
            SellProduct sellProduct = sellProductService.getSellProduct(order.getProductid());
            OrderInfo orderInfo = new OrderInfo();
            orderInfo.setBuyNum(order.getBuynum());
            orderInfo.setSendType(order.getSendtype());
            orderInfo.setStatus(order.getStatus());
            orderInfo.setCreateTime(order.getCreatetime());
            orderInfo.setUserInfo(userInfo);
            orderInfo.setMyAddress(myAddress);
            orderInfo.setSellProduct(sellProduct);
            br.setData(orderInfo);
            //br.setData(or.getMyAddressList(userid));
            return br;
        }catch (Exception e)
        {
            br.setResult(BaseConstant.FAIL_INFO+"->:"+e.getMessage());
            br.setCode(BaseConstant.FAIL_CODE);
            br.setData(null);
            return br;
        }
    }


    @RequestMapping(value = "/addorder", method = RequestMethod.POST)
    @ResponseBody
    @Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
    public  BaseResult addOrder(HttpServletRequest request)
    {
        //orderService.deleOrder(id);
        logger.info("addorder==="  );
        BaseResult br = new BaseResult();
        try {
            SellOrder order = new SellOrder();
            String userid = request.getParameter("userid").toString();
            String addressid = request.getParameter("addressid").toString();
            String productid = request.getParameter("productid").toString();
            int buynum = Integer.valueOf(request.getParameter("buynum").toString());
            logger.info("buynum:"+buynum);
            logger.info("productid:"+productid);
            logger.info("userid:"+userid);
            if (productid==null||productid.equals("0"))
            {
                productid="78";
            }

            //订单状态：0.正常，1.撤单,2.完成
            byte status = (byte)0;
            //配送方式：0.免费，1.收费
            byte sendType = (byte) 0;
            long id = getId();
            order.setId(String.valueOf(id));
            order.setUserid(userid);
            order.setAddressid(addressid);
            order.setProductid(productid);
            order.setBuynum(buynum);
            order.setStatus(status);
            order.setSendtype(sendType);
            order.setCreatetime(Utils.getTimeYYYYMMDDHHMMSS());
            SellProduct sellProduct  = sellProductService.getSellProduct(productid);
            logger.info("getPrice:"+sellProduct.getPrice());
            order.setPrice(sellProduct.getPrice());
            float money = sellProduct.getPrice()*buynum;
            order.setTotalcost(money);
            order.setRealcost(money);
            order.setPaytime(Utils.getTimeYYYYMMDDHHMMSS());

            UserInfo userInfo = userInfoService.getUserInfo(String.valueOf(userid));
            String tradNo = String.valueOf(id);
            String productName ="产品";
            try {
                productName = sellProduct.getProductname();
                logger.info("productName:"+sellProduct.getProductname());
                logger.info("userInfo.getOpenid():"+userInfo.getOpenid());
            }catch (Exception e)
            {
                e.printStackTrace();
                br.setResult("登录时请允许授权");
                br.setCode(BaseConstant.FAIL_CODE);
                return br;

            }
            JSONObject response = WXAppletUserInfo.wxPayNew(productName,userInfo.getOpenid(),tradNo,money,request);
            orderService.saveOrder(order);
            br.setData(response);
            br.setResult(BaseConstant.SUCCESS_INFO);
            br.setCode(BaseConstant.SUCCESS_CODE);
            return br;
        }catch (Exception e)
        {
            br.setResult(BaseConstant.PARAM_ERROR_INFO+"->:"+e.getMessage());
            br.setCode(BaseConstant.FAIL_CODE);
            e.printStackTrace();
            return br;
        }
    }


    @RequestMapping(value = "/sign", method = RequestMethod.POST)
    @ResponseBody
    @Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
    public  BaseResult signWpay(HttpServletRequest request)
    {

        logger.info("sign==="  );
        BaseResult br = new BaseResult();
        try {
            SellOrder order = new SellOrder();
            String repay_id = request.getParameter("repay_id").toString();
            SignInfo signInfo = new SignInfo();
            signInfo.setAppId(WxPayConfig.AppID);
            Long time = System.currentTimeMillis()/1000;
            signInfo.setTimeStamp(String.valueOf(time));
            signInfo.setNonceStr(RandomStringGenerator.getRandomStringByLength(32));
            signInfo.setRepay_id("prepay_id="+repay_id);
            signInfo.setSignType("MD5");
            //gen sgin
            String sign = Signature.getSign(signInfo);

            JSONObject json = new JSONObject();
            json.put("timeStamp", signInfo.getTimeStamp());
            json.put("nonceStr", signInfo.getNonceStr());
            json.put("package", signInfo.getRepay_id());
            json.put("signType", signInfo.getSignType());
            json.put("paySign", sign);
            logger.info("-------再签名:"+json.toJSONString());

            br.setData(json);
            br.setResult(BaseConstant.SUCCESS_INFO);
            br.setCode(BaseConstant.SUCCESS_CODE);
            return br;
        }catch (Exception e)
        {
            br.setResult(BaseConstant.PARAM_ERROR_INFO+"->:"+e.getMessage());
            br.setCode(BaseConstant.FAIL_CODE);
            e.printStackTrace();
            return br;
        }
    }




    @RequestMapping(value = "/delorder", method = RequestMethod.POST)
    @ResponseBody
    @Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
    public  BaseResult deleOrder(HttpServletRequest request)
    {
        //orderService.deleOrder(id);
        logger.info("delorder==="  );
        BaseResult br = new BaseResult();
        try {
            String id = request.getParameter("id").toString();

            orderService.deleOrder(id);
            br.setResult(BaseConstant.SUCCESS_INFO);
            br.setCode(BaseConstant.SUCCESS_CODE);
            return br;
        }catch (Exception e)
        {
            br.setResult(BaseConstant.PARAM_ERROR_INFO+"->:"+e.getMessage());
            br.setCode(BaseConstant.FAIL_CODE);
            e.printStackTrace();
            return br;
        }
    }

    @RequestMapping(value="/wxNotify")
    @ResponseBody
    public void wxNotify(HttpServletRequest request,HttpServletResponse response) throws Exception {
        logger.info("=========wxNotify=====>:");
        BufferedReader br = new BufferedReader(new InputStreamReader((ServletInputStream) request.getInputStream()));
        String line = null;
        StringBuilder sb = new StringBuilder();
        while ((line = br.readLine()) != null) {
            sb.append(line);
        }
        br.close();
        //sb为微信返回的xml
        String notityXml = sb.toString();
        String resXml = "";
        System.out.println("接收到的报文：" + notityXml);
        logger.info("接收到的报文2：" + notityXml);

        Map map = Utils.doXMLParse(notityXml);
        logger.info("接收到的报文3：" + map.toString());

        String returnCode = (String) map.get("return_code");
        if ("SUCCESS".equals(returnCode)) {
            //验证签名是否正确
            Map<String, String> validParams = Utils.paraFilter(map);  //回调验签时需要去除sign和空值参数
            String validStr = Utils.createLinkString(validParams);//把数组所有元素，按照“参数=参数值”的模式用“&”字符拼接成字符串
            String sign = Utils.sign(validStr, WxPayConfig.mch_key, "utf-8").toUpperCase();//拼装生成服务器端验证的签名
            //根据微信官网的介绍，此处不仅对回调的参数进行验签，还需要对返回的金额与系统订单的金额进行比对等
            logger.info("=========out_trade_no=====>:"+validParams.get("out_trade_no"));
            if (sign.equals(map.get("sign"))) {
                /**此处添加自己的业务逻辑代码start**/


                /**此处添加自己的业务逻辑代码end**/
                //通知微信服务器已经支付成功
                resXml = "<xml>" + "<return_code><![CDATA[SUCCESS]]></return_code>"
                        + "<return_msg><![CDATA[OK]]></return_msg>" + "</xml> ";
            }
        } else {
            resXml = "<xml>" + "<return_code><![CDATA[FAIL]]></return_code>"
                    + "<return_msg><![CDATA[报文为空]]></return_msg>" + "</xml> ";
        }
        System.out.println(resXml);
        System.out.println("微信支付回调数据结束");


        BufferedOutputStream out = new BufferedOutputStream(
                response.getOutputStream());
        out.write(resXml.getBytes());
        out.flush();
        out.close();
    }


}
