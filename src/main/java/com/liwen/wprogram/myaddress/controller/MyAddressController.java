package com.liwen.wprogram.myaddress.controller;

import com.liwen.wprogram.common.BaseConroller;
import com.liwen.wprogram.common.BaseConstant;
import com.liwen.wprogram.common.BaseResult;
import com.liwen.wprogram.common.Utils;
import com.liwen.wprogram.kernelrecord.controller.KernelRecordController;
import com.liwen.wprogram.myaddress.model.MyAddress;
import com.liwen.wprogram.myaddress.service.MyAddressService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping(value = "/address")
public class MyAddressController extends BaseConroller {


    @Autowired
    MyAddressService myAddressService;

    @RequestMapping(value = "/getaddress")
    @ResponseBody
    public BaseResult getAddress(long id)
    {
        logger.info("getMyAddressList:" + id );
        //  return kernelRecordService.getKernelRecords(id);
        BaseResult br = new BaseResult();
        try {
            br.setResult(BaseConstant.SUCCESS_INFO);
            br.setCode(BaseConstant.SUCCESS_CODE);
            br.setData(myAddressService.getMyAddress(id));
            return br;
        }catch (Exception e)
        {
            br.setResult(BaseConstant.FAIL_INFO+"->:"+e.getMessage());
            br.setCode(BaseConstant.FAIL_CODE);
            br.setData(null);
            return br;
        }
    }

    @RequestMapping(value = "/addresses")
    @ResponseBody
    public BaseResult getMyAddressList(long userid)
    {
        logger.info("getMyAddressList:" + userid );
        //  return kernelRecordService.getKernelRecords(userid);
        BaseResult br = new BaseResult();
        try {
            br.setResult(BaseConstant.SUCCESS_INFO);
            br.setCode(BaseConstant.SUCCESS_CODE);
            br.setData(myAddressService.getMyAddressList(userid));
            return br;
        }catch (Exception e)
        {
            br.setResult(BaseConstant.FAIL_INFO+"->:"+e.getMessage());
            br.setCode(BaseConstant.FAIL_CODE);
            br.setData(null);
            return br;
        }
    }

    @RequestMapping(value = "/addaddress", method = RequestMethod.POST)
    @ResponseBody
    @Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
    public BaseResult saveMyaddress(HttpServletRequest request) {
        logger.info("saveMyaddress==="  );
        BaseResult br = new BaseResult();
        try {
            long userId = Long.valueOf(request.getParameter("userid").toString());
            String name = request.getParameter("name").toString();
            String phone = request.getParameter("phone").toString();
            String area = request.getParameter("area").toString();
            String detailArea = request.getParameter("detailaddress").toString();
            String postcode = request.getParameter("postcoe").toString();
            MyAddress myAddress = new MyAddress();
            myAddress.setId(getId());
            myAddress.setUserid(userId);
            myAddress.setName(name);
            myAddress.setPhone(phone);
            myAddress.setArea(area);
            myAddress.setDetailaddress(detailArea);
            myAddress.setPostcoe(postcode);
            myAddress.setCreatetime(Utils.getTimeYYYYMMDDHHMMSS());

            myAddressService.saveMyAddress(myAddress);
            br.setCode(BaseConstant.SUCCESS_CODE);
            br.setResult(BaseConstant.SUCCESS_INFO);
            return br;
        }catch (Exception e)
        {
            br.setResult(BaseConstant.PARAM_ERROR_INFO+"->:"+e.getMessage());
            br.setCode(BaseConstant.FAIL_CODE);
            e.printStackTrace();
            return br;
        }
    }

    @RequestMapping(value = "/updateaddress", method = RequestMethod.POST)
    @ResponseBody
    @Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
    public BaseResult updateMyAddress(HttpServletRequest request) {

        logger.info("updateMyAddress==="  );
        BaseResult br = new BaseResult();
        try {
            long id = Long.valueOf(request.getParameter("id").toString());
            long userId = Long.valueOf(request.getParameter("userid").toString());
            String name = request.getParameter("name").toString();
            String phone = request.getParameter("phone").toString();
            String area = request.getParameter("area").toString();
            String detailArea = request.getParameter("detailaddress").toString();
            String postcode = request.getParameter("postcoe").toString();
            MyAddress myAddress = new MyAddress();
            myAddress.setId(getId());
            myAddress.setName(name);
            myAddress.setPhone(phone);
            myAddress.setArea(area);
            myAddress.setDetailaddress(detailArea);
            myAddress.setPostcoe(postcode);
            myAddressService.updateMyAddress(myAddress);
            return br;
        }catch (Exception e)
        {
            br.setResult(BaseConstant.PARAM_ERROR_INFO+"->:"+e.getMessage());
            br.setCode(BaseConstant.FAIL_CODE);
            e.printStackTrace();
            return br;
        }
    }

    @RequestMapping(value = "/delmyaddress", method = RequestMethod.POST)
    @ResponseBody
    @Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
    public BaseResult deleMyAddress(HttpServletRequest request) {

        logger.info("delmyaddress==="  );
        BaseResult br = new BaseResult();
        try {
            long id = Long.valueOf(request.getParameter("id").toString());

            myAddressService.deleMyAddress(id);
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
