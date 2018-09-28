package com.liwen.wprogram.user.service;

import com.liwen.wprogram.user.mapper.UserInfoMapper;
import com.liwen.wprogram.user.model.UserInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserInfoService {
    @Autowired
    private UserInfoMapper userInfoMapper;

    public UserInfo getUserInfo(String id) {
        return userInfoMapper.selectByPrimaryKey(id);
    }

    public UserInfo getUserInfoByOpenid(String openid) {
        return userInfoMapper.selectByOpenid(openid);
    }

    public  void saveUserInfo(UserInfo userInfo)
    {
        userInfoMapper.insert(userInfo);
    }

    public  void delUserInfo(String id)
    {
        userInfoMapper.deleteByPrimaryKey(id);

    }

    public  void  updateUserInfo(UserInfo userInfo)
    {
        userInfoMapper.updateByPrimaryKey(userInfo);
    }

    public List<UserInfo> getUserAll()
    {
        return  userInfoMapper.selectAll();
    }
}
