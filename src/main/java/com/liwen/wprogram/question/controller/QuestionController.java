package com.liwen.wprogram.question.controller;

import com.liwen.wprogram.common.BaseConstant;
import com.liwen.wprogram.common.BaseResult;
import com.liwen.wprogram.common.IdGenerator;
import com.liwen.wprogram.question.model.Question;
import com.liwen.wprogram.question.model.QuestionImgs;
import com.liwen.wprogram.question.service.QuestionImgsService;
import com.liwen.wprogram.question.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.apache.log4j.Logger;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;


import javax.servlet.http.HttpServletRequest;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
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
    @Autowired
    QuestionImgsService questionImgsService;

    @RequestMapping("mutifile")
    public String mutilfile(){
        return "mutifile";
    }
    @RequestMapping(value = "/normalquestion", method = RequestMethod.POST)
    @ResponseBody
    public BaseResult saveQuestionMap(@RequestParam Map<String, Object> requestMap) {
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
            IdGenerator ig = new IdGenerator();
            question.setId(ig.nextId());
            question.setUserid(userid);
            question.setContent(content);
            question.setType((byte) 0);////0.我发起的；1.我参与的
            question.setRealnamepublish(realnamepub);
            question.setCreatetime(dateStr);
            question.setValidityperiod(validaity);
            question.setGiftimg(imgId);
            question.setPublishcompany(publishCompy);
            question.setStatus((byte) 0);  //0.进行中，1.结束
            int ret = questionService.saveQuestion(question);
            logger.info("save ret:" + ret);

        } catch (Exception e) {
            br.setCode(BaseConstant.FAIL_CODE);
            br.setResult(BaseConstant.PARAM_ERROR_INFO + "," + e.getMessage());
        }
        return br;

    }


    @RequestMapping(value = "/advancedquestion", method = RequestMethod.POST)
    @ResponseBody
    @Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
    public BaseResult adveQuestion(HttpServletRequest requestMap) {
        BaseResult br = new BaseResult();
        long questionId=(long)0;
        try {

            ////////////保存问题主表////////////
            Long userid = Long.valueOf(requestMap.getParameter("userid").toString());
            String content = requestMap.getParameter("content").toString();
            //1.是实名发布；0.非实名发布
            byte realnamepub = Byte.valueOf(requestMap.getParameter("realnamepublish").toString());
            Date date = new Date();
            SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            //从前端或者自己模拟一个日期格式，转为String即可
            String dateStr = format.format(date);
            int validaity = Integer.valueOf(requestMap.getParameter("validityperiod").toString());

            String publishCompy = requestMap.getParameter("publishcompany").toString();
            String imgId = requestMap.getParameter("giftimg").toString();
            IdGenerator ig = new IdGenerator();

            Question question = new Question();
            questionId = ig.nextId();
            logger.info("id=======:"+questionId);
            question.setId(questionId);
            question.setUserid(userid);
            question.setContent(content);
            question.setType((byte) 0);////0.我发起的；1.我参与的
            question.setRealnamepublish(realnamepub);
            question.setCreatetime(dateStr);
            question.setValidityperiod(validaity);
            question.setGiftimg(imgId);
            question.setPublishcompany(publishCompy);
            question.setStatus((byte) 0);  //0.进行中，1.结束
            int ret = questionService.saveQuestion(question);
            logger.info("save ret:" + ret);
            ///////////结束保存问题主表////////




            List<MultipartFile> files = ((MultipartHttpServletRequest) requestMap).getFiles("filename");
            MultipartFile file = null;
            File destFile = null;
            BufferedOutputStream stream = null;
            String savePath ="/upload/";
            String path = requestMap.getSession().getServletContext().getRealPath(savePath);

            logger.info("path:" + path + ",request.getRequestURI():"
                    + requestMap.getRequestURI() + ",urlbuffe:" + requestMap.getRequestURL().toString());

            //数据库中保存upload/fileName.png;访问：http://127.0.0.1.upload/fileName.png

            for (int i = 0; i < files.size(); ++i) {
                file = files.get(i);
                if (!file.isEmpty()) {
                    try {

                        byte[] bytes = file.getBytes();
                        savePath = "upload/"+file.getOriginalFilename();
                        destFile = new File(path + file.getOriginalFilename());
                        if (!destFile.getParentFile().exists()) {
                            destFile.getParentFile().mkdir();
                        }
                        stream = new BufferedOutputStream(new FileOutputStream(destFile));
                        stream.write(bytes);
                        stream.close();

                        QuestionImgs questionImgs = new QuestionImgs();
                        questionImgs.setQuestionid(questionId);
                        questionImgs.setImgname(savePath);
                        questionImgsService.saveQuestionImags(questionImgs);
                        logger.info("save ==========:"+savePath);
                        //保存库

                    } catch (Exception e) {
                        stream = null;
                        questionService.delQuestion(questionId);
                        br.setResult(BaseConstant.FAIL_INFO + "-->" + e.getMessage());
                        e.printStackTrace();
                        return  br;
                    }
                }
            }
            br.setCode(BaseConstant.SUCCESS_CODE);
            br.setResult(BaseConstant.SUCCESS_INFO);
            return br;
        } catch (Exception e) {
            questionService.delQuestion(questionId);
            e.printStackTrace();
            br.setResult(BaseConstant.PARAM_ERROR_INFO + "-->" + e.getMessage());
            return br;
        }

    }

    /**
     * @param type 0.我发起的；1.我参与的
     * @return 列表数据
     */
    @RequestMapping(value = "/getnormalquestion")
    @ResponseBody
    public List<Question> getQuestions(@RequestParam("userid") long userid, @RequestParam("type") byte type) {
        logger.info("usrid:" + userid + ",param:" + type);
        return questionService.getQuestions(Long.valueOf(userid), Byte.valueOf(type));

    }


}
