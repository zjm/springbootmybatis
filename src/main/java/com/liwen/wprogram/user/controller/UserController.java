package com.liwen.wprogram.user.controller;


import com.liwen.wprogram.common.BaseConstant;
import com.liwen.wprogram.common.BaseResult;
import com.liwen.wprogram.common.IdGenerator;
import com.liwen.wprogram.common.Utils;
import com.liwen.wprogram.user.model.UserInfo;
import com.liwen.wprogram.user.service.UserInfoService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping(value = "/user")
public class UserController {
    private Logger logger = Logger.getLogger(UserController.class);
    @Autowired
    UserInfoService userInfoService;

    @RequestMapping(value = "/userinfo")
    @ResponseBody
    public UserInfo getUserInfo(long id) {
        return userInfoService.getUserInfo(id);
    }

    @RequestMapping(value = "/alluserInfo")
    @ResponseBody
    public List<UserInfo> getUserInfos() {
        return userInfoService.getUserAll();
    }

    @RequestMapping(value = "/createuser", method = RequestMethod.POST)
    @ResponseBody
    public BaseResult saveUserInfo(@RequestParam(value = "headimg", required = true) String headimg,
//                                   @RequestParam(value = "name", required = true) String name,
                                   @RequestParam(value = "nickname", required = false) String nickname,
//                                   @RequestParam(value = "company", required = true) String company,
//                                   @RequestParam(value = "department", required = true) String department,
                                   @RequestParam(value = "weixinhao", required = true) String weixinhao,
                                   @RequestParam(value = "mykernel", required = true) String mykernel) {
        BaseResult br = new BaseResult();
        try {
            UserInfo userInfo = new UserInfo();
            IdGenerator idg =new IdGenerator();
            userInfo.setId(idg.nextId());
            userInfo.setPhone(headimg);
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
    public BaseResult updateUserInfo(@RequestParam(value = "userid", required = true) long userid,
                                // @RequestParam(value = "phone", required = true) String phone,
                                 @RequestParam(value = "name", required = true) String name,
                                 @RequestParam(value = "company", required = true) String company,
                                 @RequestParam(value = "department", required = false) String department,
                                 @RequestParam(value = "weixinhao", required = false) String weixinhao
    ) {
        BaseResult br = new BaseResult();
        try {
            UserInfo userInfo = getUserInfo(userid);
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


}
