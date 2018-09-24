package com.liwen.wprogram.customservice.service;

import com.liwen.wprogram.customservice.mapper.CustomServiceMapper;
import com.liwen.wprogram.customservice.model.CustomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomServiceService {
    @Autowired
    private CustomServiceMapper customServiceMapper;
    public List<CustomService> getMsgs(long userid)
    {
        return customServiceMapper.selectByUserid(userid);
    }

    public int saveMsg(CustomService customService)
    {
        return  customServiceMapper.insert(customService);
    }
}
