package com.liwen.wprogram.user.controller;


import com.alibaba.fastjson.JSONObject;
import com.liwen.wprogram.common.BaseConstant;
import com.liwen.wprogram.common.BaseResult;
import com.liwen.wprogram.common.IdGenerator;
import com.liwen.wprogram.common.Utils;
import com.liwen.wprogram.common.weixin.WXAppletUserInfo;
import com.liwen.wprogram.user.model.UserInfo;
import com.liwen.wprogram.user.model.UserInforResult;
import com.liwen.wprogram.user.service.UserInfoService;
import org.apache.log4j.Logger;
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
import java.util.List;

@Controller
@RequestMapping(value = "/user")
public class UserController {
    private Logger logger = Logger.getLogger(UserController.class);
    @Autowired
    UserInfoService userInfoService;

    @RequestMapping(value = "/userinfo")
    @ResponseBody
    public BaseResult getUserInfo(String userid) {

        BaseResult br = new BaseResult();
        try {
            br.setResult(BaseConstant.SUCCESS_INFO);
            br.setCode(BaseConstant.SUCCESS_CODE);
            br.setData(userInfoService.getUserInfo(userid));
            return br;
        }catch (Exception e)
        {
            br.setResult(BaseConstant.FAIL_INFO+"->:"+e.getMessage());
            br.setCode(BaseConstant.FAIL_CODE);
            br.setData(null);
            return br;
        }

    }

    @RequestMapping(value = "/getuserinfobyopenid")
    @ResponseBody
    public BaseResult getUserInfoByOpenId(String openid) {

        logger.info("openid=======:"+openid);

        BaseResult br = new BaseResult();
        try {
            br.setResult(BaseConstant.SUCCESS_INFO);
            br.setCode(BaseConstant.SUCCESS_CODE);
            UserInfo userInfo = userInfoService.getUserInfoByOpenid(openid);
            br.setData(userInfo);
            return br;
        }catch (Exception e)
        {
            br.setResult(BaseConstant.FAIL_INFO+"->:"+e.getMessage());
            br.setCode(BaseConstant.FAIL_CODE);
            br.setData(null);
            return br;
        }

    }

    @RequestMapping(value = "/alluserInfo")
    @ResponseBody
    public List<UserInfo> getUserInfos() {
        return userInfoService.getUserAll();
    }

    @RequestMapping(value = "/createuser", method = RequestMethod.POST)
    @ResponseBody
    @Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
    public BaseResult saveUserInfo(@RequestParam(value = "openid", required = true) String openid,
                                   @RequestParam(value = "headimg", required = true) String headimg,
//                                   @RequestParam(value = "name", required = true) String name,
                                   @RequestParam(value = "nickname", required = false) String nickname,
//                                   @RequestParam(value = "company", required = true) String company,
//                                   @RequestParam(value = "department", required = true) String department,
                                   @RequestParam(value = "weixinhao", required = false) String weixinhao,
                                   @RequestParam(value = "mykernel", required = true) String mykernel) {
        BaseResult br = new BaseResult();
        try {
            UserInfo userInfo = new UserInfo();
            IdGenerator idg =new IdGenerator();
            userInfo.setId(String.valueOf(idg.nextId()));
            userInfo.setHeadimg(headimg);
            userInfo.setNickname(nickname);
            userInfo.setCreatetime(Utils.getTimeYYYYMMDDHHMMSS());
            userInfo.setMykernel(Integer.valueOf(mykernel));
            userInfoService.saveUserInfo(userInfo);
            logger.info("saveUser userinfo:" + headimg );
            br.setCode(BaseConstant.SUCCESS_CODE);
            br.setResult(BaseConstant.SUCCESS_INFO);
            return br;

        }catch (Exception e )
        {
            br.setCode(BaseConstant.FAIL_CODE);
            br.setResult(BaseConstant.PARAM_ERROR_INFO+"->"+e.getMessage());
            e.printStackTrace();
            return br;
        }
    }

    @RequestMapping(value = "/updateuser", method = RequestMethod.POST)
    @ResponseBody
    @Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
    public BaseResult updateUserInfo(
                                 @RequestParam(value = "openid", required = false) String openid,
                                 @RequestParam(value = "userid", required = true) String userid,
                                // @RequestParam(value = "phone", required = true) String phone,
                                 @RequestParam(value = "name", required = true) String name,
                                 @RequestParam(value = "company", required = true) String company,
                                 @RequestParam(value = "department", required = false) String department,
                                 @RequestParam(value = "weixinhao", required = false) String weixinhao
    ) {
        BaseResult br = new BaseResult();
        try {
            UserInfo userInfo = userInfoService.getUserInfo(userid);
            userInfo.setName(name);
            userInfo.setCompany(company);
            userInfo.setDepartment(department);
            userInfo.setWeixinhao(weixinhao);
            userInfoService.updateUserInfo(userInfo);
            logger.info("saveUser inforw:" + name );
            br.setCode(BaseConstant.SUCCESS_CODE);
            br.setResult(BaseConstant.SUCCESS_INFO);
            return  br;
        }catch (Exception e)
        {
            br.setCode(BaseConstant.SUCCESS_CODE);
            br.setResult(BaseConstant.PARAM_ERROR_INFO +"->"+e.getMessage());
            e.printStackTrace();
            return br;
        }
    }

    @RequestMapping(value = "/createopenid", method = RequestMethod.POST)
    @ResponseBody
    @Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
    public UserInforResult getOpenid(HttpServletRequest request) {
        UserInforResult br = new UserInforResult();
        br.setReged(0);
        try {
            String code =request.getParameter("code").toString();
            logger.info("==========createopenid======code===:"+code);
            br.setResult(BaseConstant.SUCCESS_INFO);
            br.setCode(BaseConstant.SUCCESS_CODE);
            JSONObject jsonObject =   WXAppletUserInfo.getSessionKeyOropenid(code);
            String openId = jsonObject.getString("openid");
            if (jsonObject.getString("openid")!=null && !jsonObject.getString("openid").isEmpty())
            {
                logger.info("========not==isEmpty======openid===:"+jsonObject.getString("openid"));
                UserInfo userInfo = userInfoService.getUserInfoByOpenid(openId);

                if (userInfo!=null && userInfo.getId().length()>0)
                {
                    br.setReged(1);
                }else {
                    br.setReged(0);
                }
            }else
            {
                br.setResult(BaseConstant.FAIL_INFO);
                br.setCode(BaseConstant.FAIL_CODE);
            }

            br.setData(jsonObject);
            logger.info("ret:"+br.toString());
            return br;
        }catch (Exception e)
        {
            e.printStackTrace();
            br.setCode(BaseConstant.FAIL_CODE);
            br.setResult(BaseConstant.PARAM_ERROR_INFO+"->:"+e.getMessage());
            return br;
        }


    }


}
