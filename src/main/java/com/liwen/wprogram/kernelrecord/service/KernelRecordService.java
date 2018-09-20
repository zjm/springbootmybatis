package com.liwen.wprogram.kernelrecord.service;

import com.liwen.wprogram.kernelrecord.mapper.KernelRecordMapper;
import com.liwen.wprogram.kernelrecord.model.KernelRecord;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class KernelRecordService {
    @Autowired
    private KernelRecordMapper  kernelRecordMapper;

    public KernelRecord getKernelRecord(long id)
    {
        return  kernelRecordMapper.selectByPrimaryKey(id);
    }

    public int saveKernelRecord(KernelRecord kernelRecord)
    {
        return kernelRecordMapper.insert(kernelRecord);
    }

}
