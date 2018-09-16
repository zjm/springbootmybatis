package com.liwen.wprogram.sellproduct.service;

import com.liwen.wprogram.sellproduct.mapper.SellProductMapper;
import com.liwen.wprogram.sellproduct.model.SellProduct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SellProductService {
    @Autowired
    private SellProductMapper sellProductMapper;

    public SellProduct getSellProduct(Long id)
    {
        return sellProductMapper.selectByPrimaryKey(id);
    }

    public void  saveSellProduct(SellProduct sellProduct)
    {
        sellProductMapper.insert(sellProduct);
    }

}
