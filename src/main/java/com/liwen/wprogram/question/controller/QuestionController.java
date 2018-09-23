package com.liwen.wprogram.question.controller;

import com.liwen.wprogram.common.BaseConstant;
import com.liwen.wprogram.common.BaseResult;
import com.liwen.wprogram.common.IdGenerator;
import com.liwen.wprogram.common.Utils;
import com.liwen.wprogram.question.model.Question;
import com.liwen.wprogram.question.model.QuestionImgs;
import com.liwen.wprogram.question.model.QuestionInfo;
import com.liwen.wprogram.question.model.RollTitles;
import com.liwen.wprogram.question.service.QuestionImgsService;
import com.liwen.wprogram.question.service.QuestionService;
import com.liwen.wprogram.question.service.RollTitlesService;
import com.liwen.wprogram.sellproduct.model.SellProduct;
import com.liwen.wprogram.sellproduct.service.SellProductService;
import com.liwen.wprogram.user.model.UserInfo;
import com.liwen.wprogram.user.service.UserInfoService;
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
import java.util.*;

@Controller
@RequestMapping(value = "/question")
public class QuestionController {

    private Logger logger = Logger.getLogger(QuestionController.class);
    @Autowired
    QuestionService questionService;
    @Autowired
    SellProductService sellProductService;
    @Autowired
    UserInfoService userInfoService;
    @Autowired
    QuestionImgsService questionImgsService;
    @Autowired
    RollTitlesService rollTitlesService;

    @RequestMapping("mutifile")
    public String mutilfile(){
        return "mutifile";
    }
    @RequestMapping(value = "/normalquestion", method = RequestMethod.POST)
    @ResponseBody
    public BaseResult saveQuestionMap(HttpServletRequest requestMap) {
        logger.info("normalquestion=======comin");
        BaseResult br = new BaseResult();
        br.setCode(BaseConstant.SUCCESS_CODE);
        br.setResult(BaseConstant.SUCCESS_INFO);
        try {

            String userids = requestMap.getParameter("userid").toString();
            logger.info("userid:"+userids);
            Long userid = Long.valueOf(userids);
            logger.info("userid:"+userid);
            String content = requestMap.getParameter("content").toString();
            logger.info("content:"+content);
            //1.是实名发布；0.非实名发布
            byte realnamepub = Byte.valueOf(requestMap.getParameter("realnamepublish").toString());
            logger.info("realnamepub:"+realnamepub);

            int validaity = Integer.valueOf(requestMap.getParameter("validityperiod").toString());
            logger.info("validaity:"+validaity);
            String publishCompy = requestMap.getParameter("publishcompany").toString();
            logger.info("publishCompy:"+publishCompy);
            String productid = requestMap.getParameter("productid").toString();
            String rewardbalance = requestMap.getParameter("rewardbalance").toString();
            logger.info("productid:"+productid);

            Question question = new Question();
            IdGenerator ig = new IdGenerator();
            question.setId(ig.nextId());
            question.setUserid(userid);
            question.setContent(content);
            question.setType((byte) 0);////0.我发起的；1.我参与的
            question.setRealnamepublish(realnamepub);
            question.setCreatetime(Utils.getTimeYYYYMMDDHHMMSS());
            question.setValidityperiod(validaity);
            question.setProductid(Long.valueOf(productid));
            question.setPublishcompany(publishCompy);
            question.setViewnum(0);
            question.setAnsernum(0);
            //0.普通问题，1.高级问题
            question.setQuestiontype((byte)0);
            question.setRewardbalance(Float.valueOf(rewardbalance));
            question.setStatus((byte) 0);  //0.进行中，1.结束
            int ret = questionService.saveQuestion(question);
            logger.info("save ret:" + ret);
            return br;

        } catch (Exception e) {
            br.setCode(BaseConstant.FAIL_CODE);
            br.setResult(BaseConstant.PARAM_ERROR_INFO + "," + e.getMessage());
            logger.info("normalquestion:"+e.getMessage());
            e.printStackTrace();
            return br;
        }


    }


    @RequestMapping(value = "/advancedquestion", method = RequestMethod.POST)
    @ResponseBody
    @Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
    public BaseResult adveQuestion(HttpServletRequest requestMap) {
        Properties props = System.getProperties();
     //   String ossys = props.getProperty("os.name").toLowerCase();
        boolean win = props.getProperty("os.name").toLowerCase().contains("windows");
        //if (win)

        logger.info("advancedquestion===comin===");
        BaseResult br = new BaseResult();
        long questionId=(long)0;
        try {

            ////////////保存问题主表////////////
            String userids = requestMap.getParameter("userid").toString();
            Long userid = Long.valueOf(userids);
            logger.info("userid:"+userid);
            String title = requestMap.getParameter("title").toString();
            String content = requestMap.getParameter("content").toString();
            logger.info("content:"+content);
            //1.是实名发布；0.非实名发布
            byte realnamepub = Byte.valueOf(requestMap.getParameter("realnamepublish").toString());
            logger.info("realnamepub:"+realnamepub);

            int validaity = Integer.valueOf(requestMap.getParameter("validityperiod").toString());
            logger.info("validaity:"+validaity);
            String publishCompy = requestMap.getParameter("publishcompany").toString();
            logger.info("publishCompy:"+publishCompy);
            String productid = requestMap.getParameter("productid").toString();
            String rewardbalance = requestMap.getParameter("rewardbalance").toString();
            logger.info("productid:"+productid);

            Question question = new Question();
            IdGenerator ig = new IdGenerator();
            questionId = ig.nextId();
            question.setId(questionId);
            question.setUserid(userid);
            question.setTitle(title);
            question.setContent(content);
            question.setType((byte) 0);////0.我发起的；1.我参与的
            question.setRealnamepublish(realnamepub);
            question.setCreatetime(Utils.getTimeYYYYMMDDHHMMSS());
            question.setValidityperiod(validaity);
            question.setProductid(Long.valueOf(productid));
            question.setPublishcompany(publishCompy);
            question.setViewnum(0);
            question.setAnsernum(0);
            question.setRewardbalance(Float.valueOf(rewardbalance));
            question.setStatus((byte) 0);  //0.进行中，1.结束
            //0.普通问题，1.高级问题
            question.setQuestiontype((byte)0);
            int ret = questionService.saveQuestion(question);
            logger.info("save ret:" + ret);
            ///////////结束保存问题主表////////




            List<MultipartFile> files = ((MultipartHttpServletRequest) requestMap).getFiles("filename");
            MultipartFile file = null;
            File destFile = null;
            BufferedOutputStream stream = null;
            String savePath_temp ="/questionimags/"+userids+"/";
            String savePath="";
            String path = requestMap.getSession().getServletContext().getRealPath(savePath);
            if (!win)
            {
                path="/var/www/html"+savePath;
            }

            logger.info("path:" + path + ",request.getRequestURI():"
                    + requestMap.getRequestURI() + ",urlbuffe:" + requestMap.getRequestURL().toString());

            //数据库中保存upload/fileName.png;访问：http://127.0.0.1.upload/fileName.png
            String urlStr="";
            for (int i = 0; i < files.size(); ++i) {
                file = files.get(i);
                if (!file.isEmpty()) {
                    try {

                        byte[] bytes = file.getBytes();
                        savePath = savePath_temp+file.getOriginalFilename();
                        destFile = new File(path + file.getOriginalFilename());
                        if (!destFile.getParentFile().exists()) {
                            destFile.getParentFile().mkdir();
                        }
                        stream = new BufferedOutputStream(new FileOutputStream(destFile));
                        stream.write(bytes);
                        stream.close();

                        QuestionImgs questionImgs = new QuestionImgs();
                        questionImgs.setQuestionid(questionId);
                        urlStr = "http://ubestchain.com"+savePath;
                        questionImgs.setImgname(urlStr);
                        question.setCreatetime(Utils.getTimeYYYYMMDDHHMMSS());
                        questionImgsService.saveQuestionImags(questionImgs);
                        logger.info("url:"+urlStr);
                        logger.info("save ==========savePath:"+savePath+"--====-destFile-:"+destFile);
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
            e.printStackTrace();
            return br;
        }

    }

    /**
     * @param type 0.我发起的；1.我参与的
     * @return 列表数据
     */
    @RequestMapping(value = "/getnormalquestion")
    @ResponseBody
    public BaseResult getQuestions(@RequestParam("userid") long userid, @RequestParam("type") byte type) {
//        logger.info("usrid:" + userid + ",param:" + type);
//        return questionService.getQuestions(Long.valueOf(userid), Byte.valueOf(type));
        BaseResult br = new BaseResult();
        try {
            br.setResult(BaseConstant.SUCCESS_INFO);
            br.setCode(BaseConstant.SUCCESS_CODE);
            List<Question> questionList = questionService.getQuestions(Long.valueOf(userid), Byte.valueOf(type));
            logger.info("Question->size:"+questionList.size());
            List<QuestionInfo> questionInfoList = new ArrayList<>();
            UserInfo userInfo = null;
            SellProduct sellProduct =null;
            QuestionInfo questionInfo = null;
            for(Question question :questionList)
            {
                questionInfo = new QuestionInfo();
                questionInfo.setQuestion(question);
                userInfo = userInfoService.getUserInfo(question.getUserid());
                sellProduct = sellProductService.getSellProduct(question.getProductid());
               // logger.info("sellProduct->getThumbnail:"+sellProduct.getThumbnail());
                if (userInfo!=null || sellProduct!=null) {
                    questionInfo.setSellProduct(sellProduct);
                    questionInfo.setUserInfo(userInfo);
                    questionInfoList.add(questionInfo);
                }
            }
            br.setData(questionInfoList);
            return br;
        }catch (Exception e)
        {
            br.setResult(BaseConstant.FAIL_INFO+"->:"+e.getMessage());
            br.setCode(BaseConstant.FAIL_CODE);
            br.setData(null);
            e.printStackTrace();
            return br;
        }

    }

    /** 问题详情
     * @param quid
     * @return
     */
    @RequestMapping(value = "/questioninfo")
    @ResponseBody
    public BaseResult getQuestions(@RequestParam("quid") long quid) {

        BaseResult br = new BaseResult();
        try {
            br.setResult(BaseConstant.SUCCESS_INFO);
            br.setCode(BaseConstant.SUCCESS_CODE);
            br.setData(questionService.getQuestion(quid));
            return br;
        }catch (Exception e)
        {
            br.setResult(BaseConstant.FAIL_INFO+"->:"+e.getMessage());
            br.setCode(BaseConstant.FAIL_CODE);
            br.setData(null);
            return br;
        }

    }

    /** 问题详情
     * @param quid
     * @return
     */
    @RequestMapping(value = "/questionimages")
    @ResponseBody
    public BaseResult getQuestionimages(@RequestParam("quid") long quid) {

        BaseResult br = new BaseResult();
        try {
            br.setResult(BaseConstant.SUCCESS_INFO);
            br.setCode(BaseConstant.SUCCESS_CODE);
            br.setData(questionImgsService.getQuestionImagses(quid));
            return br;
        }catch (Exception e)
        {
            br.setResult(BaseConstant.FAIL_INFO+"->:"+e.getMessage());
            br.setCode(BaseConstant.FAIL_CODE);
            br.setData(null);
            return br;
        }

    }

    @RequestMapping(value = "/rollingquestion")
    @ResponseBody
    public BaseResult getQuestions() {

        BaseResult br = new BaseResult();
        try {
            br.setResult(BaseConstant.SUCCESS_INFO);
            br.setCode(BaseConstant.SUCCESS_CODE);
            //0.不显示，1.显示，2.已解决
            br.setData(rollTitlesService.getRollingTitiles((byte) 2));
            return br;
        }catch (Exception e)
        {
            br.setResult(BaseConstant.FAIL_INFO+"->:"+e.getMessage());
            br.setCode(BaseConstant.FAIL_CODE);
            br.setData(null);
            return br;
        }

    }

    @RequestMapping(value = "/solvequestion", method = RequestMethod.POST)
    @ResponseBody
    @Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
    public BaseResult solveQuestion(HttpServletRequest request) {
        BaseResult br = new BaseResult();
        try {
            IdGenerator idGenerator = new IdGenerator();
            long userId = Long.valueOf(request.getParameter("userid").toString());
            String nickename = request.getParameter("nickname").toString();
            String headImg = request.getParameter("headimg").toString();
            int dismens = Integer.valueOf(request.getParameter("dismens").toString());
            int money = Integer.valueOf(request.getParameter("money").toString());
            RollTitles rt = new RollTitles();
            rt.setId(idGenerator.nextId());
            rt.setUserid(userId);
            rt.setNickname(nickename);
            rt.setHeadimg(headImg);
            rt.setDimension(dismens);
            rt.setMoney(money);
            rt.setCreatetime(Utils.getTimeYYYYMMDDHHMMSS());
            //0.不显示，1.显示，2.已解决
            rt.setStatus((byte) 2);
            int ret = rollTitlesService.saveRollingTitles(rt);
            br.setCode(BaseConstant.SUCCESS_CODE);
            br.setResult(BaseConstant.SUCCESS_INFO);
            return br;
        }catch (Exception e)
        {
            br.setCode(BaseConstant.FAIL_CODE);
            br.setResult(BaseConstant.PARAM_ERROR_INFO+"->:"+e.getMessage());
            return  br;
        }

    }


}
