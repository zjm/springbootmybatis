package com.liwen.wprogram.appeal.service;

import com.liwen.wprogram.appeal.mapper.AppealMapper;
import com.liwen.wprogram.appeal.model.Appeal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AppealService {
    @Autowired
    AppealMapper appealMapper;
    public List<Appeal> getMySendAppealList(String senderid)
    {
       return appealMapper.selectBySenduserid(senderid);
    }

    public List<Appeal> getMyRecAppealList(String recid)
    {
        return appealMapper.selectByRecuserid (recid);
    }

    public int saveAppeal(Appeal appeal)
    {
        return appealMapper.insert(appeal);
    }

    public int deleAppeal(String appealid)
    {
        return appealMapper.deleteByPrimaryKey(appealid);
    }
}
