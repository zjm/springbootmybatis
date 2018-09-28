package com.liwen.wprogram.customservice.mapper;

import static org.apache.ibatis.jdbc.SqlBuilder.BEGIN;
import static org.apache.ibatis.jdbc.SqlBuilder.INSERT_INTO;
import static org.apache.ibatis.jdbc.SqlBuilder.SET;
import static org.apache.ibatis.jdbc.SqlBuilder.SQL;
import static org.apache.ibatis.jdbc.SqlBuilder.UPDATE;
import static org.apache.ibatis.jdbc.SqlBuilder.VALUES;
import static org.apache.ibatis.jdbc.SqlBuilder.WHERE;

import com.liwen.wprogram.customservice.model.CustomService;

public class CustomServiceSqlProvider {

    public String insertSelective(CustomService record) {
        BEGIN();
        INSERT_INTO("customservice");
        
        if (record.getId() != null) {
            VALUES("id", "#{id,jdbcType=VARCHAR}");
        }
        
        if (record.getSenduserid() != null) {
            VALUES("senduserid", "#{senduserid,jdbcType=VARCHAR}");
        }
        
        if (record.getRecuserid() != null) {
            VALUES("recuserid", "#{recuserid,jdbcType=VARCHAR}");
        }
        
        if (record.getSendnickname() != null) {
            VALUES("sendnickname", "#{sendnickname,jdbcType=VARCHAR}");
        }
        
        if (record.getRecnickname() != null) {
            VALUES("recnickname", "#{recnickname,jdbcType=VARCHAR}");
        }
        
        if (record.getContent() != null) {
            VALUES("content", "#{content,jdbcType=VARCHAR}");
        }
        
        if (record.getImgurl() != null) {
            VALUES("imgurl", "#{imgurl,jdbcType=VARCHAR}");
        }
        
        if (record.getCreatetime() != null) {
            VALUES("createtime", "#{createtime,jdbcType=VARCHAR}");
        }
        
        return SQL();
    }

    public String updateByPrimaryKeySelective(CustomService record) {
        BEGIN();
        UPDATE("customservice");
        
        if (record.getSenduserid() != null) {
            SET("senduserid = #{senduserid,jdbcType=VARCHAR}");
        }
        
        if (record.getRecuserid() != null) {
            SET("recuserid = #{recuserid,jdbcType=VARCHAR}");
        }
        
        if (record.getSendnickname() != null) {
            SET("sendnickname = #{sendnickname,jdbcType=VARCHAR}");
        }
        
        if (record.getRecnickname() != null) {
            SET("recnickname = #{recnickname,jdbcType=VARCHAR}");
        }
        
        if (record.getContent() != null) {
            SET("content = #{content,jdbcType=VARCHAR}");
        }
        
        if (record.getImgurl() != null) {
            SET("imgurl = #{imgurl,jdbcType=VARCHAR}");
        }
        
        if (record.getCreatetime() != null) {
            SET("createtime = #{createtime,jdbcType=VARCHAR}");
        }
        
        WHERE("id = #{id,jdbcType=VARCHAR}");
        
        return SQL();
    }
}