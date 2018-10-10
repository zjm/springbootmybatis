package com.liwen.wprogram.moneydetail.mapper;

import static org.apache.ibatis.jdbc.SqlBuilder.BEGIN;
import static org.apache.ibatis.jdbc.SqlBuilder.INSERT_INTO;
import static org.apache.ibatis.jdbc.SqlBuilder.SET;
import static org.apache.ibatis.jdbc.SqlBuilder.SQL;
import static org.apache.ibatis.jdbc.SqlBuilder.UPDATE;
import static org.apache.ibatis.jdbc.SqlBuilder.VALUES;
import static org.apache.ibatis.jdbc.SqlBuilder.WHERE;

import com.liwen.wprogram.moneydetail.model.MoneyDetail;

public class MoneyDetailSqlProvider {

    public String insertSelective(MoneyDetail record) {
        BEGIN();
        INSERT_INTO("moneydetail");
        
        if (record.getId() != null) {
            VALUES("id", "#{id,jdbcType=VARCHAR}");
        }
        
        if (record.getUserid() != null) {
            VALUES("userid", "#{userid,jdbcType=VARCHAR}");
        }
        
        if (record.getType() != null) {
            VALUES("type", "#{type,jdbcType=TINYINT}");
        }
        
        if (record.getStatus() != null) {
            VALUES("status", "#{status,jdbcType=TINYINT}");
        }
        
        if (record.getMoneynum() != null) {
            VALUES("moneynum", "#{moneynum,jdbcType=VARCHAR}");
        }
        
        if (record.getTitle() != null) {
            VALUES("title", "#{title,jdbcType=VARCHAR}");
        }
        
        if (record.getNote() != null) {
            VALUES("note", "#{note,jdbcType=VARCHAR}");
        }
        
        if (record.getCreatetime() != null) {
            VALUES("createtime", "#{createtime,jdbcType=VARCHAR}");
        }
        
        if (record.getSuccesstime() != null) {
            VALUES("successtime", "#{successtime,jdbcType=VARCHAR}");
        }
        
        if (record.getFailtime() != null) {
            VALUES("failtime", "#{failtime,jdbcType=VARCHAR}");
        }
        
        if (record.getStartpaytime() != null) {
            VALUES("startpaytime", "#{startpaytime,jdbcType=VARCHAR}");
        }
        
        return SQL();
    }

    public String updateByPrimaryKeySelective(MoneyDetail record) {
        BEGIN();
        UPDATE("moneydetail");
        
        if (record.getUserid() != null) {
            SET("userid = #{userid,jdbcType=VARCHAR}");
        }
        
        if (record.getType() != null) {
            SET("type = #{type,jdbcType=TINYINT}");
        }
        
        if (record.getStatus() != null) {
            SET("status = #{status,jdbcType=TINYINT}");
        }
        
        if (record.getMoneynum() != null) {
            SET("moneynum = #{moneynum,jdbcType=VARCHAR}");
        }
        
        if (record.getTitle() != null) {
            SET("title = #{title,jdbcType=VARCHAR}");
        }
        
        if (record.getNote() != null) {
            SET("note = #{note,jdbcType=VARCHAR}");
        }
        
        if (record.getCreatetime() != null) {
            SET("createtime = #{createtime,jdbcType=VARCHAR}");
        }
        
        if (record.getSuccesstime() != null) {
            SET("successtime = #{successtime,jdbcType=VARCHAR}");
        }
        
        if (record.getFailtime() != null) {
            SET("failtime = #{failtime,jdbcType=VARCHAR}");
        }
        
        if (record.getStartpaytime() != null) {
            SET("startpaytime = #{startpaytime,jdbcType=VARCHAR}");
        }
        
        WHERE("id = #{id,jdbcType=VARCHAR}");
        
        return SQL();
    }
}