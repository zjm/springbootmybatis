package com.liwen.wprogram.question.mapper;

import static org.apache.ibatis.jdbc.SqlBuilder.BEGIN;
import static org.apache.ibatis.jdbc.SqlBuilder.INSERT_INTO;
import static org.apache.ibatis.jdbc.SqlBuilder.SET;
import static org.apache.ibatis.jdbc.SqlBuilder.SQL;
import static org.apache.ibatis.jdbc.SqlBuilder.UPDATE;
import static org.apache.ibatis.jdbc.SqlBuilder.VALUES;
import static org.apache.ibatis.jdbc.SqlBuilder.WHERE;

import com.liwen.wprogram.question.model.Question;

public class QuestionSqlProvider {

    public String insertSelective(Question record) {
        BEGIN();
        INSERT_INTO("question");
        
        if (record.getId() != null) {
            VALUES("id", "#{id,jdbcType=VARCHAR}");
        }
        
        if (record.getUserid() != null) {
            VALUES("userid", "#{userid,jdbcType=VARCHAR}");
        }
        
        if (record.getProductid() != null) {
            VALUES("productid", "#{productid,jdbcType=VARCHAR}");
        }
        
        if (record.getTitle() != null) {
            VALUES("title", "#{title,jdbcType=VARCHAR}");
        }
        
        if (record.getContent() != null) {
            VALUES("content", "#{content,jdbcType=VARCHAR}");
        }
        
        if (record.getType() != null) {
            VALUES("type", "#{type,jdbcType=TINYINT}");
        }
        
        if (record.getRealnamepublish() != null) {
            VALUES("realnamepublish", "#{realnamepublish,jdbcType=TINYINT}");
        }
        
        if (record.getValidityperiod() != null) {
            VALUES("validityperiod", "#{validityperiod,jdbcType=INTEGER}");
        }
        
        if (record.getStatus() != null) {
            VALUES("status", "#{status,jdbcType=TINYINT}");
        }
        
        if (record.getQuestiontype() != null) {
            VALUES("questiontype", "#{questiontype,jdbcType=TINYINT}");
        }
        
        if (record.getViewnum() != null) {
            VALUES("viewnum", "#{viewnum,jdbcType=INTEGER}");
        }
        
        if (record.getAnsernum() != null) {
            VALUES("ansernum", "#{ansernum,jdbcType=INTEGER}");
        }
        
        if (record.getGiftimg() != null) {
            VALUES("giftimg", "#{giftimg,jdbcType=VARCHAR}");
        }
        
        if (record.getPublishcompany() != null) {
            VALUES("publishcompany", "#{publishcompany,jdbcType=VARCHAR}");
        }
        
        if (record.getRewardbalance() != null) {
            VALUES("rewardbalance", "#{rewardbalance,jdbcType=REAL}");
        }
        
        if (record.getCreatetime() != null) {
            VALUES("createtime", "#{createtime,jdbcType=VARCHAR}");
        }
        
        return SQL();
    }

    public String updateByPrimaryKeySelective(Question record) {
        BEGIN();
        UPDATE("question");
        
        if (record.getUserid() != null) {
            SET("userid = #{userid,jdbcType=VARCHAR}");
        }
        
        if (record.getProductid() != null) {
            SET("productid = #{productid,jdbcType=VARCHAR}");
        }
        
        if (record.getTitle() != null) {
            SET("title = #{title,jdbcType=VARCHAR}");
        }
        
        if (record.getContent() != null) {
            SET("content = #{content,jdbcType=VARCHAR}");
        }
        
        if (record.getType() != null) {
            SET("type = #{type,jdbcType=TINYINT}");
        }
        
        if (record.getRealnamepublish() != null) {
            SET("realnamepublish = #{realnamepublish,jdbcType=TINYINT}");
        }
        
        if (record.getValidityperiod() != null) {
            SET("validityperiod = #{validityperiod,jdbcType=INTEGER}");
        }
        
        if (record.getStatus() != null) {
            SET("status = #{status,jdbcType=TINYINT}");
        }
        
        if (record.getQuestiontype() != null) {
            SET("questiontype = #{questiontype,jdbcType=TINYINT}");
        }
        
        if (record.getViewnum() != null) {
            SET("viewnum = #{viewnum,jdbcType=INTEGER}");
        }
        
        if (record.getAnsernum() != null) {
            SET("ansernum = #{ansernum,jdbcType=INTEGER}");
        }
        
        if (record.getGiftimg() != null) {
            SET("giftimg = #{giftimg,jdbcType=VARCHAR}");
        }
        
        if (record.getPublishcompany() != null) {
            SET("publishcompany = #{publishcompany,jdbcType=VARCHAR}");
        }
        
        if (record.getRewardbalance() != null) {
            SET("rewardbalance = #{rewardbalance,jdbcType=REAL}");
        }
        
        if (record.getCreatetime() != null) {
            SET("createtime = #{createtime,jdbcType=VARCHAR}");
        }
        
        WHERE("id = #{id,jdbcType=VARCHAR}");
        
        return SQL();
    }
}