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

    public List<MyAddress> getMyAddressList(String userid){

        return myAddressMapper.selectMyaddressByUserid(userid);
    }

    public MyAddress getMyAddress(String id){

        return myAddressMapper.selectByPrimaryKey(id);
    }

    public int saveMyAddress(MyAddress address)
    {
        return myAddressMapper.insert(address);
    }

    public int updateMyAddress(MyAddress address){

        return  myAddressMapper.updateByPrimaryKey(address);
    }

    public int deleMyAddress(String userId)
    {
        return myAddressMapper.deleteByPrimaryKey(userId);
    }



}
