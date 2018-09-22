package com.liwen.wprogram.myaddress.service;

import com.liwen.wprogram.myaddress.mapper.MyAddressMapper;
import com.liwen.wprogram.myaddress.model.MyAddress;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MyAddressService {
    @Autowired
    private MyAddressMapper myAddressMapper;

    public List<MyAddress> getMyAddressList(long userid){

        return myAddressMapper.selectMyaddressByUserid(userid);
    }

    public MyAddress getMyAddress(long id){

        return myAddressMapper.selectByPrimaryKey(id);
    }

    public int saveMyAddress(MyAddress address)
    {
        return myAddressMapper.insert(address);
    }

    public int updateMyAddress(MyAddress address){

        return  myAddressMapper.updateByPrimaryKey(address);
    }

    public int deleMyAddress(long userId)
    {
        return myAddressMapper.deleteByPrimaryKey(userId);
    }



}
