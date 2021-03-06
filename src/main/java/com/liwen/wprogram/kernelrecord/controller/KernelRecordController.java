package com.liwen.wprogram.kernelrecord.controller;

import com.liwen.wprogram.common.BaseConstant;
import com.liwen.wprogram.common.BaseResult;
import com.liwen.wprogram.common.IdGenerator;
import com.liwen.wprogram.common.Utils;
import com.liwen.wprogram.kernelrecord.model.KernelRecord;
import com.liwen.wprogram.kernelrecord.service.KernelRecordService;
import com.liwen.wprogram.question.model.Question;
import com.liwen.wprogram.user.model.UserInfo;
import com.liwen.wprogram.user.service.UserInfoService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping(value = "/kernel")
public class KernelRecordController {
    private Logger logger = Logger.getLogger(KernelRecordController.class);
    @Autowired
    KernelRecordService kernelRecordService;
    @Autowired
    UserInfoService userInfoService;
    @RequestMapping(value = "/getkernelinfos")
    @ResponseBody
    public BaseResult getQuestions(@RequestParam("userid") String userid) {
        logger.info("usrid:" + userid + ",param:" );
      //  return kernelRecordService.getKernelRecords(userid);
        BaseResult br = new BaseResult();
        try {
            br.setResult(BaseConstant.SUCCESS_INFO);
            br.setCode(BaseConstant.SUCCESS_CODE);
            //0.不显示，1.显示，2.已解决
            br.setData(kernelRecordService.getKernelRecords(userid));
            return br;
        }catch (Exception e)
        {
            br.setResult(BaseConstant.FAIL_INFO+"->:"+e.getMessage());
            br.setCode(BaseConstant.FAIL_CODE);
            br.setData(null);
            return br;
        }


    }

    /**
     *保存麦粒
     * @param request 请求对象
     * @return
     */
    @RequestMapping(value = "/savekernel", method = RequestMethod.POST)
    @ResponseBody
    @Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
    public BaseResult adveQuestion(HttpServletRequest request) {
        BaseResult br = new BaseResult();
        try
        {
            IdGenerator idGenerator = new IdGenerator();
            long id = idGenerator.nextId();
            String userId = request.getParameter("userid").toString();
            String title = request.getParameter("title").toString();
            //0.减少麦粒，1.增加麦粒
            byte type = Byte.valueOf(request.getParameter("type").toString());
            int rewardnum = Integer.valueOf (request.getParameter("rewardnum").toString());
            UserInfo userInfo = userInfoService.getUserInfo(userId);
            int myKernels = userInfo.getMykernel();
            if (type==0)
            {
                if(myKernels<rewardnum) {
                    br.setCode(BaseConstant.FAIL_CODE);
                    br.setResult("脉粒数量不够");
                    return br;
                }
                myKernels =myKernels -rewardnum;
            }else
            {
                myKernels = myKernels+rewardnum;
            }
            userInfo.setMykernel(myKernels);
            String currentTime = Utils.getTimeYYYYMMDDHHMMSS();
            KernelRecord kernelRecord = new KernelRecord();
            kernelRecord.setId(String.valueOf(id));
            kernelRecord.setTitle(title);
            kernelRecord.setUserid(userId);
            kernelRecord.setType(type);
            kernelRecord.setRewardnum(rewardnum);
            kernelRecord.setCreatetime(currentTime);
            kernelRecord.setRewardtime(currentTime);
            kernelRecordService.saveKernelRecord(kernelRecord);
            userInfoService.updateUserInfo(userInfo);
            br.setCode(BaseConstant.SUCCESS_CODE);
            br.setResult(BaseConstant.SUCCESS_INFO);
            return  br;
        }catch (Exception e)
        {
            br.setCode(BaseConstant.FAIL_CODE);
            br.setResult("请检查参数是否为空，"+e.getMessage());
            return  br;
        }
    }

}
