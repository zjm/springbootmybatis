package com.example.sb2.controller;


import com.example.sb2.model.Ttest;
import com.example.sb2.service.TtestService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Controller
@RequestMapping(value = "/test")
public class TtestController {

    private Logger logger = Logger.getLogger(TtestController.class);

    @Autowired
    private TtestService ttestService;

    @RequestMapping(value = "/find")
    @ResponseBody
    public Ttest find(Integer id)
    {
       return  ttestService.show(id);
    }
   /*
    http://127.0.0.1:9090/test/save/333zhi/66ddd
    */
    @RequestMapping(value = "/save/{name}/{address}",method = RequestMethod.POST)
    @ResponseBody
    public String saveUser(@PathVariable String name,@PathVariable String address ) {
//        User user = new User();
//        user.setName(name);
//        user.setAddress(address);
//        userService.saveUser(user);
         logger.info("saveUser======name:"+name+",address:"+address);
        return "保存成功";
    }


    //http://127.0.0.1:9090/test/login ;key - value形式
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    @ResponseBody
    public String saveUsers(@RequestParam(value = "name", required = true) String name,
                            @RequestParam(value = "pwd", required = true) String pwd) {
//        User user = new User();
//        user.setName(name);
//        user.setAddress(address);
//        userService.saveUser(user);
        logger.info("saveUser======name:"+name+",address:"+pwd);
        return "保存成功";
    }

    //http://127.0.0.1:9090/test/login ;key - value形式
//    @RequestMapping(value = "/loginmap",method = RequestMethod.POST)
//    @ResponseBody
//    public String saveUsersMap(@RequestParam Map<String,Object> reqMap) {
//        String name = reqMap.get("name").toString();
//        String pwd = reqMap.get("Password").toString();
//        logger.info("saveUsersMapr======name:"+name+",pwd:"+pwd);
//        return "保存成功";
//    }

    @RequestMapping(value = "/testpost",method = RequestMethod.POST)
    public String saveUser( ) {
//        User user = new User();
//        user.setName(name);
//        user.setAddress(address);
//        userService.saveUser(user);
        logger.info("saveUser========"+123);
        return "保存成功";
    }


    /*
    @RequestMapping(value = "/show")
  public String show() {
    return userService.show();
  }
    * */

}
