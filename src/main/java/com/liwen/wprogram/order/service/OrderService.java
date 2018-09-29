package com.liwen.wprogram.order.service;

import com.liwen.wprogram.order.mapper.SellOrderMapper;
import com.liwen.wprogram.order.model.SellOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderService {
    @Autowired
    private SellOrderMapper orderMapper;

    public SellOrder getOrder(String id)
    {
        return orderMapper.selectByPrimaryKey(id);
    }

    public int saveOrder(SellOrder order)
    {
        return  orderMapper.insert(order);
    }

    public int deleOrder(String id)
    {
        return orderMapper.deleteByPrimaryKey(id);
    }

    public List<SellOrder> getMyOrderList(String userid)
    {
        return orderMapper.selectByUserid(userid);

    }
}
