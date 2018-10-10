package com.liwen.wprogram.moneydetail.service;

import com.liwen.wprogram.moneydetail.mapper.MoneyDetailMapper;
import com.liwen.wprogram.moneydetail.model.MoneyDetail;
import com.liwen.wprogram.myaddress.model.MyAddress;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MoneyDetailService {
    @Autowired
    private MoneyDetailMapper moneyDetailMapper;

    public List<MoneyDetail> getMoneyDetailList(String userid){

        return moneyDetailMapper.selectByUseridKey(userid);
    }

    public MoneyDetail getMoneyDetail(String id)
    {
        return moneyDetailMapper.selectByPrimaryKey(id);
    }

    public int saveMoneyDetail(MoneyDetail moneyDetail)
    {
        return  moneyDetailMapper.insert(moneyDetail);
    }

    public int updateMoneyDetail(MoneyDetail moneyDetail)
    {
        return  moneyDetailMapper.updateByPrimaryKey(moneyDetail);
    }

    public int deleteMoneyDetail(String id)
    {
        return moneyDetailMapper.deleteByPrimaryKey(id);
    }
}
