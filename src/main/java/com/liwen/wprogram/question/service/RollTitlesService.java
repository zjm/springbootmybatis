package com.liwen.wprogram.question.service;

import com.liwen.wprogram.question.mapper.RollTitlesMapper;
import com.liwen.wprogram.question.model.RollTitles;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RollTitlesService {
    @Autowired
    private RollTitlesMapper rollTitlesMapper;
    public List<RollTitles> getRollingTitiles(byte status)
    {
         return  rollTitlesMapper.selectByStatusKey(status);
    }

    public  int saveRollingTitles(RollTitles rollTitles)
    {
        return rollTitlesMapper.insert(rollTitles);
    }
}
