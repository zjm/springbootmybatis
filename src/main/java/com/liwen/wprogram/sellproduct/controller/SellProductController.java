package com.liwen.wprogram.sellproduct.controller;

import com.liwen.wprogram.sellproduct.model.SellProduct;
import com.liwen.wprogram.sellproduct.service.SellProductService;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

@Controller
@RequestMapping(value = "/sell")
public class SellProductController {

    private Logger logger = Logger.getLogger(SellProductController.class);
    @Autowired
    SellProductService sellProductService;

    @RequestMapping(value = "/productinfo")
    @ResponseBody
    public SellProduct getProduct(long id)
    {
        return sellProductService.getSellProduct(id);
    }

    public void saveProduct()
    {

    }

    @RequestMapping("file")

    public String file(){
        logger.info("aaaaaaaaaaa=====");
        return "/file";
    }

    class ResultUpload{

        public int getCode() {
            return code;
        }

        public void setCode(int code) {
            this.code = code;
        }

        int code;

//        public String getMsg() {
//            return msg;
//        }
//
//        public void setMsg(String msg) {
//            this.msg = msg;
//        }
//
//        String msg;
        public String getResult() {
            return result;
        }

        public void setResult(String result) {
            this.result = result;
        }

        String result;

        public String getParam() {
            return param;
        }

        public void setParam(String param) {
            this.param = param;
        }

        String param;
    }
    @RequestMapping(value="/fileUpload",method=RequestMethod.POST)
    @ResponseBody
    public ResultUpload fileUpload(@RequestParam("fileName")MultipartFile file, @RequestParam(value = "name", required = true) String name)
    {
        ResultUpload resUp = new ResultUpload();
        resUp.setParam(name);
        resUp.setResult("fail");
        resUp.setCode(-1);
        if(file.isEmpty())       {

            return resUp;
        }
        String fileNames = file.getOriginalFilename();
        int size = (int)file.getSize();
        String extName = getExtensionName(fileNames);
        String path=System.getProperty("user.dir")+"/uploadFiles";
        if (!"pngjpgjpegbmp".contains(extName.toLowerCase()))
        {
            resUp.setResult("图片格式不正确,请上传png或jpg格式文件！");
            return resUp;
        }

        logger.info(fileNames+"--->"+size+",path:"+path+",name:"+name+",extName:"+extName);
        File dest = new File(path+"/"+fileNames);
        if (!dest.getParentFile().exists()){
            dest.getParentFile().mkdir();
        }
        try{
            file.transferTo(dest);
            resUp.setCode(0);
            resUp.setResult("success");
            return resUp;
        }catch (IllegalStateException e)
        {
            e.printStackTrace();
            return resUp;
        }catch (IOException e)
        {
            e.printStackTrace();
            return resUp;
        }

    }

    public  String getExtensionName(String filename) {
        if ((filename != null) && (filename.length() > 0)) {
            int dot = filename.lastIndexOf('.');
            if ((dot >-1) && (dot < (filename.length() - 1))) {
                return filename.substring(dot + 1);
            }
        }
        return filename;
    }

}
