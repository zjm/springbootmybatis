package com.liwen.wprogram.appeal.controller;

import com.liwen.wprogram.appeal.model.Appeal;
import com.liwen.wprogram.appeal.model.AppealInfoResult;
import com.liwen.wprogram.appeal.service.AppealService;
import com.liwen.wprogram.common.BaseConroller;
import com.liwen.wprogram.common.BaseConstant;
import com.liwen.wprogram.common.BaseResult;
import com.liwen.wprogram.common.Utils;
import com.liwen.wprogram.user.model.UserInfo;
import com.liwen.wprogram.user.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value = "/appeal")
public class AppealController extends BaseConroller {
    @Autowired
    AppealService appealService;
    @Autowired
    UserInfoService userInfoService;

    /**
     * 我发起的投诉单
     * @param userid
     * @return
     */
    @RequestMapping(value = "/getsendappeallist")
    @ResponseBody
    public AppealInfoResult getMySendAppealList(long userid) {
        AppealInfoResult br = new AppealInfoResult();
        try {
            logger.info("==========getMySendAppealList=============");
            br.setResult(BaseConstant.SUCCESS_INFO);
            br.setCode(BaseConstant.SUCCESS_CODE);
            UserInfo userInfo = userInfoService.getUserInfo(userid);
            br.setHeadimg(userInfo.getHeadimg());
            br.setData(appealService.getMySendAppealList(userid));
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
     * 我收到的投诉单
     * @param userid
     * @return
     */
    @RequestMapping(value = "/getrecappeallist")
    @ResponseBody
    public AppealInfoResult getMyRecAppealList(long userid) {
        logger.info("==========getMyRecAppealList=============");
        AppealInfoResult br = new AppealInfoResult();
        try {
            br.setResult(BaseConstant.SUCCESS_INFO);
            br.setCode(BaseConstant.SUCCESS_CODE);
            UserInfo userInfo = userInfoService.getUserInfo(userid);
            br.setHeadimg(userInfo.getHeadimg());
            br.setData(appealService.getMyRecAppealList(userid));
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
     * 保存申诉
     * @param request
     * @return
     */
    @RequestMapping(value = "/saveappeal", method = RequestMethod.POST)
    @ResponseBody
    @Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
    public BaseResult saveAppeal(HttpServletRequest request) {
        logger.info("==========saveAppeal=============");
        BaseResult br = new BaseResult();
        try
        {
            long id = getId();
            long senduserid = Long.valueOf(request.getParameter("senduserid").toString());
            long recuserid = Long.valueOf(request.getParameter("recuserid").toString());
            long orderid =0;// Long.valueOf(request.getParameter("orderid").toString());
            String title = request.getParameter("title").toString();
            String content = request.getParameter("content").toString();
            String createtime = Utils.getTimeYYYYMMDDHHMMSS();
            Appeal appeal = new Appeal();
            appeal.setId(id);
            appeal.setSenduserid(senduserid);
            appeal.setRecuserid(recuserid);
            appeal.setOrderid(orderid);
            appeal.setTitle(title);
            appeal.setContent(content);
            appeal.setCreatetime(createtime);
            appealService.saveAppeal(appeal);
            br.setData(id);
            br.setCode(BaseConstant.SUCCESS_CODE);
            br.setResult(BaseConstant.SUCCESS_INFO);
            return  br;
        }catch (Exception e)
        {
            br.setCode(BaseConstant.FAIL_CODE);
            br.setResult("请检查参数是否为空，"+e.getMessage());
            return  br;
        }
    }

    /**
     * 删除投诉
     * @param
     * @return
     */
    @RequestMapping(value = "/deleappeal", method = RequestMethod.POST)
    @ResponseBody
    @Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
    public BaseResult deleAppeal(HttpServletRequest request) {
        logger.info("==========deleappeal=============");
        BaseResult br = new BaseResult();
        try
        {
            long id = Long.valueOf(request.getParameter("id").toString());
            appealService.deleAppeal(id);
            br.setCode(BaseConstant.SUCCESS_CODE);
            br.setResult(BaseConstant.SUCCESS_INFO);
            return  br;
        }catch (Exception e)
        {
            br.setCode(BaseConstant.FAIL_CODE);
            br.setResult("请检查参数是否为空，"+e.getMessage());
            e.printStackTrace();;
            return  br;
        }
    }

}
