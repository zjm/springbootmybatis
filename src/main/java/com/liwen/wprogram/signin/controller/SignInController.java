package com.liwen.wprogram.signin.controller;

import com.liwen.wprogram.common.*;
import com.liwen.wprogram.kernelrecord.model.KernelRecord;
import com.liwen.wprogram.signin.model.SignIn;
import com.liwen.wprogram.signin.service.SignInService;
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
import java.util.List;

@Controller
@RequestMapping(value = "/signin")

public class SignInController extends BaseConroller {
    @Autowired
    private SignInService signInService;
    private UserInfoService userInfoService;






    @RequestMapping(value = "/checksignin")
    @ResponseBody
    public BaseResult checkSignin(HttpServletRequest request) {

        String userid = request.getParameter("userid").toString();
        SignIn signIn = signInService.getSignInByUserId(userid);
        String dayTime = Utils.getTimeYYYYMMDDHHMMSS();
        BaseResult br = new BaseResult();

        try {
            int singintype = 1;//0.当天已经签到，不能再签了。1.当天未签到可以签。
            if (signIn == null) {
                singintype = 1;

            } else {
                String time = signIn.getSignintime();
                String currDay = dayTime.substring(0, 10);
                //logger.info("currentDay======:" + currDay);
                if (time.contains(currDay)) {
                    //已经签到
                    singintype = 0;

                } else {
                    singintype = 1;
                }
            }

            br.setCode(BaseConstant.SUCCESS_CODE);
            br.setData(singintype);
            br.setResult(BaseConstant.SUCCESS_INFO);
            return br;
        }catch (Exception e)
        {
            e.printStackTrace();
            br.setCode(BaseConstant.FAIL_CODE);
            br.setResult(BaseConstant.FAIL_INFO);
            return br;
        }


    }




    @RequestMapping(value = "/savesignin", method = RequestMethod.POST)
    @ResponseBody
    @Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
    public BaseResult saveSingin(HttpServletRequest request) {
        BaseResult br = new BaseResult();
        try
        {


            String userid = request.getParameter("userid").toString();
           // int singintype=1;//0.当天已经签到，不能再签了。1.当天未签到可以签。
            UserInfo userInfo = userInfoService.getUserInfo(userid);
            int mykernel = userInfo.getMykernel();

            SignIn signIn = signInService.getSignInByUserId(userid);
            String dayTime = Utils.getTimeYYYYMMDDHHMMSS();
            if (signIn==null)
            {
                signIn = new SignIn();
                String id = String.valueOf(getId());
                signIn.setId(id);
                signIn.setSignintime(dayTime);
                signIn.setUserid(userid);
                signIn.setType((byte)0);
               // br.setData(singintype);
                signInService.addSignIn(signIn);
                userInfo.setMykernel(mykernel+10);
                userInfoService.updateUserInfo(userInfo);


            }else
            {
                String time = signIn.getSignintime();
                String currDay = dayTime.substring(0,10);
               // logger.info("currentDay======:"+currDay);
                if (time.contains(currDay))
                {
                    //已经签到
                   // singintype=0;
                   // logger.info("currentDay======:"+currDay);

                }else
                {
                    signIn.setSignintime(dayTime);
                    signInService.updateSignIn(signIn);
                    userInfo.setMykernel(mykernel+10);
                    userInfoService.updateUserInfo(userInfo);
                }
            }

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



}
