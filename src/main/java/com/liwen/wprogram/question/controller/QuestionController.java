package com.liwen.wprogram.question.controller;

import com.liwen.wprogram.common.BaseConstant;
import com.liwen.wprogram.common.BaseResult;
import com.liwen.wprogram.question.model.Question;
import com.liwen.wprogram.question.service.QuestionService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.apache.log4j.Logger;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "/question")
public class QuestionController {

    private Logger logger = Logger.getLogger(QuestionController.class);
    @Autowired
    QuestionService questionService;

    @RequestMapping(value="/normalquestion", method=RequestMethod.POST)
    @ResponseBody
    public BaseResult saveProductMap(@RequestParam Map<String, Object> requestMap) {
        BaseResult br = new BaseResult();
        br.setCode(BaseConstant.SUCCESS_CODE);
        br.setResult(BaseConstant.SUCCESS_INFO);
        try {
            Long userid = Long.valueOf(requestMap.get("userid").toString());
            String content = requestMap.get("content").toString();
            //1.是实名发布；0.非实名发布
            byte realnamepub = Byte.valueOf(requestMap.get("realnamepublish").toString());
            Date date = new Date();
            SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            //从前端或者自己模拟一个日期格式，转为String即可
            String dateStr = format.format(date);
            int validaity = Integer.valueOf(requestMap.get("validityperiod").toString());

            String publishCompy = requestMap.get("publishcompany").toString();
            String imgId = requestMap.get("giftimg").toString();

            Question question = new Question();
            question.setUserid(userid);
            question.setContent(content);
            question.setType((byte)0);////0.我发起的；1.我参与的
            question.setRealnamepublish(realnamepub);
            question.setCreatetime(dateStr);
            question.setValidityperiod(validaity);
            question.setGiftimg(imgId);
            question.setPublishcompany(publishCompy);
            question.setStatus((byte)0);  //0.进行中，1.结束
            int ret = questionService.saveQuestion(question);
            logger.info("save ret:"+ret);

        }catch (Exception e)
        {
            br.setCode(BaseConstant.FAIL_CODE);
            br.setResult(BaseConstant.PARAM_ERROR_INFO+","+e.getMessage());
        }
        return br;

    }

    /**
     *
     * @param type 0.我发起的；1.我参与的
     * @return 列表数据
     */
    @RequestMapping(value="/getnormalquestion")
    @ResponseBody
    public List<Question> getQuestions(@RequestParam("userid") long userid,@RequestParam("type") byte type)
    {
        logger.info("usrid:"+userid+",param:"+type);
        return questionService.getQuestions(Long.valueOf(userid),Byte.valueOf(type));

    }


}
