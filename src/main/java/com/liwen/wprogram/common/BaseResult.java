package com.liwen.wprogram.common;

public class BaseResult {
    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    int code;

//    public String getMsg() {
//        return msg;
//    }
//
//    public void setMsg(String msg) {
//        this.msg = msg;
//    }
//
//    String msg;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    String result;


    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

    public Object data;
}
