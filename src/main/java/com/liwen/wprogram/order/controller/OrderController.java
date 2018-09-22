package com.liwen.wprogram.order.controller;

import com.liwen.wprogram.common.BaseConroller;
import com.liwen.wprogram.common.BaseConstant;
import com.liwen.wprogram.common.BaseResult;
import com.liwen.wprogram.common.Utils;
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

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

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
    public BaseResult getMyOrderInfos(long userid)
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
                userInfo = userInfoService.getUserInfo(oder.getUserid());
                sellProduct  = sellProductService.getSellProduct(oder.getProductid());
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
    public BaseResult getOrderInfo(long orderid)
    {
        logger.info("getOrderInfo:" + orderid );
        //  return kernelRecordService.getKernelRecords(userid);
        BaseResult br = new BaseResult();
        try {
            br.setResult(BaseConstant.SUCCESS_INFO);
            br.setCode(BaseConstant.SUCCESS_CODE);
            SellOrder order = orderService.getOrder(orderid);
            MyAddress myAddress = myAddressService.getMyAddress(order.getAddressid());
            UserInfo userInfo = userInfoService.getUserInfo(order.getUserid());
            SellProduct sellProduct = sellProductService.getSellProduct(order.getProductid());
            OrderInfo orderInfo = new OrderInfo();
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
            long userid = Long.valueOf(request.getParameter("userid").toString());
            long addressid = Long.valueOf(request.getParameter("addressid").toString());
            long productid = Long.valueOf(request.getParameter("productid").toString());
            int buynum = Integer.valueOf(request.getParameter("buynum").toString());
            //订单状态：0.正常，1.撤单,2.完成
            byte status = (byte)0;
            //配送方式：0.免费，1.收费
            byte sendType = (byte) 0;
            long id = getId();
            order.setId(id);
            order.setUserid(userid);
            order.setAddressid(addressid);
            order.setProductid(productid);
            order.setBuynum(buynum);
            order.setStatus(status);
            order.setSendtype(sendType);
            order.setCreatetime(Utils.getTimeYYYYMMDDHHMMSS());

            orderService.saveOrder(order);
            br.setResult(BaseConstant.SUCCESS_INFO);
            br.setCode(BaseConstant.SUCCESS_CODE);
            br.setData(id);
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
            long id = Long.valueOf(request.getParameter("id").toString());

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

}
