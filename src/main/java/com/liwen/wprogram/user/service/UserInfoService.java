package com.liwen.wprogram.user.service;

import com.liwen.wprogram.user.mapper.UserInfoMapper;
import com.liwen.wprogram.user.model.UserInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserInfoService {
    @Autowired
    private UserInfoMapper userInfoMapper;

    public UserInfo getUserInfo(long id) {
        return userInfoMapper.selectByPrimaryKey(id);
    }
}
