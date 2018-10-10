package com.liwen.wprogram.moneydetail.controller;

import com.liwen.wprogram.common.BaseConroller;
import com.liwen.wprogram.common.BaseConstant;
import com.liwen.wprogram.common.BaseResult;
import com.liwen.wprogram.common.Utils;
import com.liwen.wprogram.moneydetail.model.MoneyDetail;
import com.liwen.wprogram.moneydetail.service.MoneyDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value = "/money")
public class MoneyDetailController extends BaseConroller {

    @Autowired
    private MoneyDetailService moneyDetailService;


    @RequestMapping(value = "/moneydetail")
    @ResponseBody
    public BaseResult getMoneyDetail(String id)
    {
        logger.info("moneydetail==="  );
        BaseResult br = new BaseResult();
        try {
            br.setResult(BaseConstant.SUCCESS_INFO);
            br.setCode(BaseConstant.SUCCESS_CODE);
            br.setData(moneyDetailService.getMoneyDetail(id));
            return br;
        }catch (Exception e)
        {
            br.setResult(BaseConstant.FAIL_INFO+"->:"+e.getMessage());
            br.setCode(BaseConstant.FAIL_CODE);
            br.setData(null);
            return br;
        }
    }


    @RequestMapping(value = "/mymoneydetaillist")
    @ResponseBody
    public BaseResult getMyMoneyDetailList(String userid)
    {
        logger.info("mymoneydetaillist==="  );
        BaseResult br = new BaseResult();
        try {
            br.setResult(BaseConstant.SUCCESS_INFO);
            br.setCode(BaseConstant.SUCCESS_CODE);
            br.setData(moneyDetailService.getMoneyDetailList(userid));
            return br;
        }catch (Exception e)
        {
            br.setResult(BaseConstant.FAIL_INFO+"->:"+e.getMessage());
            br.setCode(BaseConstant.FAIL_CODE);
            br.setData(null);
            return br;
        }
    }

    /**
     * 取现
     * @param request
     * @return
     */
    @RequestMapping(value = "/getcash", method = RequestMethod.POST)
    @ResponseBody
    @Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
    public BaseResult saveMyaddress(HttpServletRequest request) {
        logger.info("getcash==="  );
        BaseResult br = new BaseResult();
        try {
            String userId = request.getParameter("userid").toString();
            //1.充值，2.消费或提现
            String type = request.getParameter("type").toString();
            //moneynum
            String moneynum = request.getParameter("moneynum").toString();
            //0.开始，1.操作成功，2.正在支付，3.操作失败
            byte status =0;// Byte.valueOf(request.getParameter("status").toString());
            String title = request.getParameter("title").toString();
            MoneyDetail moneyDetail = new MoneyDetail();
            String id = String.valueOf(getId());
            moneyDetail.setId(id);
            moneyDetail.setCreatetime(Utils.getTimeYYYYMMDDHHMMSS());
            moneyDetail.setType(Byte.valueOf(type));
            moneyDetail.setStatus(status);
            moneyDetail.setTitle(title);
            moneyDetailService.saveMoneyDetail(moneyDetail);
            br.setResult(BaseConstant.SUCCESS_INFO);
            br.setCode(BaseConstant.SUCCESS_CODE);
            br.setData(id);
        }catch (Exception e)
        {
            br.setResult(BaseConstant.FAIL_INFO);
            br.setCode(BaseConstant.FAIL_CODE);
            e.printStackTrace();
        }

        return br;
    }


}
