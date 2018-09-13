package com.example.sb2.service;

import com.example.sb2.mapper.TtestMapper;
import com.example.sb2.model.Ttest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TtestService {

   // @Autowired
  //  private UserMapper userMapper;
    @Autowired
    private TtestMapper ttestMapper;

    public Ttest show(Integer param)
    {

        return ttestMapper.selectByPrimaryKey(param);
    }
    /*
    public String show() {
    return "Hello World!";
  }

  public List<User> showDao(int age) {
    return userDao.get(age);
  }

  public String insert(String name, int age) { //插入一条记录
    User user = new User();
    user.setName(name);
    user.setAge(age);
    userDao.insert(user);
    return "Insert ( \""+name+"\", age"+age+") OK!";
  }
    * */

}
