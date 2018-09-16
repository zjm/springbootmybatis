package com.liwen.wprogram.user.controller;


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
    public UserInfo getUserInfo(Integer id) {
        return userInfoService.getUserInfo(id);
    }

    @RequestMapping(value = "/alluserInfo")
    @ResponseBody
    public List<UserInfo> getUserInfos() {
        return userInfoService.getUserAll();
    }

   @RequestMapping(value = "/saveuserinfo",method = RequestMethod.GET)
   @ResponseBody
    public String saveUserInfo(@RequestParam(value = "phone", required = true) String phone,
                             @RequestParam(value = "name", required = true) String name,
                             @RequestParam(value = "company", required = true) String company,
                             @RequestParam(value = "department", required = true) String department,
                             @RequestParam(value = "weixinhao", required = true) String weixinhao,
                             @RequestParam(value = "mykernel", required = true) String mykernel)
   {
       UserInfo userInfo = new UserInfo();
       userInfo.setPhone(phone);
       userInfo.setName(name);
       userInfo.setCompany(company);
       userInfo.setDepartment(department);
       userInfo.setWeixinhao(weixinhao);
      // userInfo.setMykernel(0);
       userInfoService.saveUserInfo(userInfo);
       logger.info("saveUser inforw:"+name+",phone:"+phone);
       return "保存成功";
   }



}
