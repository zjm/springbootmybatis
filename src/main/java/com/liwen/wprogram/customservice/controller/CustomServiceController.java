package com.liwen.wprogram.customservice.controller;

import com.liwen.wprogram.common.BaseConroller;
import com.liwen.wprogram.common.BaseConstant;
import com.liwen.wprogram.common.BaseResult;
import com.liwen.wprogram.common.Utils;
import com.liwen.wprogram.customservice.model.CustomMsg;
import com.liwen.wprogram.customservice.model.CustomService;
import com.liwen.wprogram.customservice.service.CustomServiceService;
import com.liwen.wprogram.question.model.QuestionImgs;
import com.liwen.wprogram.user.model.UserInfo;
import com.liwen.wprogram.user.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

@Controller
@RequestMapping(value = "/custom")
public class CustomServiceController extends BaseConroller {
    @Autowired
    private CustomServiceService customServiceService;
    @Autowired
    private UserInfoService userInfoService;

    @RequestMapping(value = "/getmsglist")
    @ResponseBody
    public BaseResult getMsgList(String userid) {
        BaseResult br = new BaseResult();
        try {
            br.setResult(BaseConstant.SUCCESS_INFO);
            br.setCode(BaseConstant.SUCCESS_CODE);
            List<CustomService> customList = customServiceService.getMsgs(userid);
            CustomMsg customMsg = null;
            UserInfo userInfo = null;
            List<CustomMsg> msgList = new ArrayList<>();
            for (CustomService cs:customList)
            {
                customMsg= new CustomMsg();
                customMsg.setId(cs.getId());
                customMsg.setSenduserid(cs.getSenduserid());
                userInfo = userInfoService.getUserInfo(cs.getSenduserid());
                customMsg.setSendnickname(userInfo.getNickname());
                customMsg.setSendimghead(userInfo.getHeadimg());
                userInfo = userInfoService.getUserInfo(cs.getRecuserid());
                customMsg.setRecuserid(cs.getRecuserid());
                customMsg.setRecnickname(userInfo.getNickname());
                customMsg.setRecimghead(userInfo.getHeadimg());
                customMsg.setContent(cs.getContent());
                customMsg.setImgurl(cs.getImgurl());
                customMsg.setCreatetime(cs.getCreatetime());
                msgList.add(customMsg);
            }
            br.setData(msgList);

            return br;
        }catch (Exception e)
        {
            br.setResult(BaseConstant.FAIL_INFO+"->:"+e.getMessage());
            br.setCode(BaseConstant.FAIL_CODE);
            return br;
        }
    }

    @RequestMapping(value = "/savemsg", method = RequestMethod.POST)
    @ResponseBody
    @Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.DEFAULT, timeout = 36000, rollbackFor = Exception.class)
    public BaseResult saveMsg(HttpServletRequest request) {

        logger.info("===saveMsg===");
        BaseResult br = new BaseResult();
        try {
            String senduserid = request.getParameter("senduserid").toString();
            String recuserid = request.getParameter("recuserid").toString();
            String content = request.getParameter("content").toString();
            String sendNicName = userInfoService.getUserInfo(senduserid).getNickname();
            String recnickname = userInfoService.getUserInfo(recuserid).getNickname();
            long id = getId();
            CustomService customService = new CustomService();
            customService.setId(String.valueOf(id));
            customService.setContent(content);
            customService.setSenduserid(senduserid);
            customService.setRecuserid(recuserid);
            customService.setSendnickname(sendNicName);
            customService.setRecnickname(recnickname);
            customService.setCreatetime(Utils.getTimeYYYYMMDDHHMMSS());
            //===================
            List<MultipartFile> files = ((MultipartHttpServletRequest) request).getFiles("filename");
            MultipartFile file = null;
            File destFile = null;
            BufferedOutputStream stream = null;
            String savePath_temp = "/questionimags/" + String.valueOf(senduserid) + "/";
            String savePath = "";
            String path = request.getSession().getServletContext().getRealPath(savePath);
            Properties props = System.getProperties();
            boolean win = props.getProperty("os.name").toLowerCase().contains("windows");
            if (!win) {
                path = "/var/www/html" + savePath;
            }
            String urlStr = "";
            for (int i = 0; i < files.size(); ++i) {
                file = files.get(i);
                if (!file.isEmpty()) {
                    byte[] bytes = file.getBytes();
                    savePath = savePath_temp + file.getOriginalFilename();
                    destFile = new File(path + file.getOriginalFilename());
                    if (!destFile.getParentFile().exists()) {
                        destFile.getParentFile().mkdir();
                    }
                    stream = new BufferedOutputStream(new FileOutputStream(destFile));
                    stream.write(bytes);
                    stream.close();
                    QuestionImgs questionImgs = new QuestionImgs();
                    urlStr = "http://ubestchain.com" + savePath;
                    customService.setImgurl(urlStr);

                }
            }
            customServiceService.saveMsg(customService);
            br.setResult(BaseConstant.SUCCESS_INFO);
            br.setCode(BaseConstant.SUCCESS_CODE);
            br.setData(id);
            return br;
        } catch (Exception e) {
            br.setResult(BaseConstant.FAIL_INFO + "->:" + e.getMessage());
            br.setCode(BaseConstant.FAIL_CODE);
            e.printStackTrace();
            return br;
        }
    }
    @RequestMapping(value = "/wxmsg")
    @ResponseBody
    public String wxnotifymsg() {

        return "wxmsg";


    }

}
