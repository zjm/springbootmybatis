package com.liwen.wprogram.common;

import com.liwen.wprogram.kernelrecord.controller.KernelRecordController;
import org.apache.log4j.Logger;

public class BaseConroller {

    public Logger logger = Logger.getLogger(KernelRecordController.class);
    public long getId()
    {

            IdGenerator idGenerator = new IdGenerator();
            return idGenerator.nextId();
    }
}
