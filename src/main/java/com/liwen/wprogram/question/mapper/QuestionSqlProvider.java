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
            VALUES("id", "#{id,jdbcType=BIGINT}");
        }
        
        if (record.getUserid() != null) {
            VALUES("userid", "#{userid,jdbcType=BIGINT}");
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
        
        return SQL();
    }

    public String updateByPrimaryKeySelective(Question record) {
        BEGIN();
        UPDATE("question");
        
        if (record.getUserid() != null) {
            SET("userid = #{userid,jdbcType=BIGINT}");
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
        
        WHERE("id = #{id,jdbcType=BIGINT}");
        
        return SQL();
    }
}