package com.liwen.wprogram.sellproduct.service;

import com.liwen.wprogram.sellproduct.mapper.SellProductMapper;
import com.liwen.wprogram.sellproduct.model.SellProduct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SellProductService {
    @Autowired
    private SellProductMapper sellProductMapper;

    public SellProduct getSellProduct(Long id)
    {
        return sellProductMapper.selectByPrimaryKey(id);
    }

    public int  saveSellProduct(SellProduct sellProduct)
    {
      return  sellProductMapper.insert(sellProduct);
    }

    public List<SellProduct> getAllProduct(){
     return sellProductMapper.selectAll();
    }

}
