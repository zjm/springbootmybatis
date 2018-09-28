package com.liwen.wprogram.appeal.mapper;

import static org.apache.ibatis.jdbc.SqlBuilder.BEGIN;
import static org.apache.ibatis.jdbc.SqlBuilder.INSERT_INTO;
import static org.apache.ibatis.jdbc.SqlBuilder.SET;
import static org.apache.ibatis.jdbc.SqlBuilder.SQL;
import static org.apache.ibatis.jdbc.SqlBuilder.UPDATE;
import static org.apache.ibatis.jdbc.SqlBuilder.VALUES;
import static org.apache.ibatis.jdbc.SqlBuilder.WHERE;

import com.liwen.wprogram.appeal.model.Appeal;

public class AppealSqlProvider {

    public String insertSelective(Appeal record) {
        BEGIN();
        INSERT_INTO("appeal");
        
        if (record.getId() != null) {
            VALUES("id", "#{id,jdbcType=VARCHAR}");
        }
        
        if (record.getSenduserid() != null) {
            VALUES("senduserid", "#{senduserid,jdbcType=VARCHAR}");
        }
        
        if (record.getRecuserid() != null) {
            VALUES("recuserid", "#{recuserid,jdbcType=VARCHAR}");
        }
        
        if (record.getOrderid() != null) {
            VALUES("orderid", "#{orderid,jdbcType=VARCHAR}");
        }
        
        if (record.getTitle() != null) {
            VALUES("title", "#{title,jdbcType=VARCHAR}");
        }
        
        if (record.getContent() != null) {
            VALUES("content", "#{content,jdbcType=VARCHAR}");
        }
        
        if (record.getCreatetime() != null) {
            VALUES("createtime", "#{createtime,jdbcType=VARCHAR}");
        }
        
        return SQL();
    }

    public String updateByPrimaryKeySelective(Appeal record) {
        BEGIN();
        UPDATE("appeal");
        
        if (record.getSenduserid() != null) {
            SET("senduserid = #{senduserid,jdbcType=VARCHAR}");
        }
        
        if (record.getRecuserid() != null) {
            SET("recuserid = #{recuserid,jdbcType=VARCHAR}");
        }
        
        if (record.getOrderid() != null) {
            SET("orderid = #{orderid,jdbcType=VARCHAR}");
        }
        
        if (record.getTitle() != null) {
            SET("title = #{title,jdbcType=VARCHAR}");
        }
        
        if (record.getContent() != null) {
            SET("content = #{content,jdbcType=VARCHAR}");
        }
        
        if (record.getCreatetime() != null) {
            SET("createtime = #{createtime,jdbcType=VARCHAR}");
        }
        
        WHERE("id = #{id,jdbcType=VARCHAR}");
        
        return SQL();
    }
}