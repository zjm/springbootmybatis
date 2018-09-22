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
    public List<Appeal> getMySendAppealList(long senderid)
    {
       return appealMapper.selectBySenduserid(senderid);
    }

    public List<Appeal> getMyRecAppealList(long recid)
    {
        return appealMapper.selectByRecuserid (recid);
    }

    public int saveAppeal(Appeal appeal)
    {
        return appealMapper.insert(appeal);
    }

    public int deleAppeal(long appealid)
    {
        return appealMapper.deleteByPrimaryKey(appealid);
    }
}
