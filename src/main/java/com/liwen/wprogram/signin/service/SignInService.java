package com.liwen.wprogram.signin.service;

import com.liwen.wprogram.signin.mapper.SignInMapper;
import com.liwen.wprogram.signin.model.SignIn;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SignInService {
    @Autowired
    private SignInMapper signInMapper;
    public int addSignIn(SignIn signIn)
    {
        return signInMapper.insert(signIn);
    }

    public int updateSignIn(SignIn signIn)
    {
        return signInMapper.updateByPrimaryKey(signIn);
    }
    public SignIn getSignInByUserId(String userId)
    {
        return signInMapper.selectByUserid(userId);
    }

}
