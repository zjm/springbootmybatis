package com.liwen.wprogram.kernelrecord.service;

import com.liwen.wprogram.kernelrecord.mapper.KernelRecordMapper;
import com.liwen.wprogram.kernelrecord.model.KernelRecord;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class KernelRecordService {
    @Autowired
    private KernelRecordMapper  kernelRecordMapper;

    public KernelRecord getKernelRecord(String id)
    {
        return  kernelRecordMapper.selectByPrimaryKey(id);
    }

    public List<KernelRecord> getKernelRecords(String userId)
    {
        return  kernelRecordMapper.selectByUseridKey(userId);
    }

    public int saveKernelRecord(KernelRecord kernelRecord)
    {
        return kernelRecordMapper.insert(kernelRecord);
    }

}
