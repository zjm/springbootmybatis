package com.example.sb2.controller;


import com.example.sb2.model.Ttest;
import com.example.sb2.service.TtestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class TtestController {
    @Autowired
    private TtestService ttestService;

    @RequestMapping(value = "/find")
    @ResponseBody
    public Ttest find(Integer id)
    {
       return  ttestService.show(id);
    }
    /*
    @RequestMapping(value = "/show")
  public String show() {
    return userService.show();
  }
    * */

}
