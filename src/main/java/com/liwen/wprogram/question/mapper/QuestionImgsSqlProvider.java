package com.liwen.wprogram.question.mapper;

import static org.apache.ibatis.jdbc.SqlBuilder.BEGIN;
import static org.apache.ibatis.jdbc.SqlBuilder.INSERT_INTO;
import static org.apache.ibatis.jdbc.SqlBuilder.SET;
import static org.apache.ibatis.jdbc.SqlBuilder.SQL;
import static org.apache.ibatis.jdbc.SqlBuilder.UPDATE;
import static org.apache.ibatis.jdbc.SqlBuilder.VALUES;
import static org.apache.ibatis.jdbc.SqlBuilder.WHERE;

import com.liwen.wprogram.question.model.QuestionImgs;

public class QuestionImgsSqlProvider {

    public String insertSelective(QuestionImgs record) {
        BEGIN();
        INSERT_INTO("questionimgs");
        
        if (record.getId() != null) {
            VALUES("id", "#{id,jdbcType=BIGINT}");
        }
        
        if (record.getQuestionid() != null) {
            VALUES("questionid", "#{questionid,jdbcType=BIGINT}");
        }
        
        if (record.getImgname() != null) {
            VALUES("imgname", "#{imgname,jdbcType=VARCHAR}");
        }
        
        return SQL();
    }

    public String updateByPrimaryKeySelective(QuestionImgs record) {
        BEGIN();
        UPDATE("questionimgs");
        
        if (record.getQuestionid() != null) {
            SET("questionid = #{questionid,jdbcType=BIGINT}");
        }
        
        if (record.getImgname() != null) {
            SET("imgname = #{imgname,jdbcType=VARCHAR}");
        }
        
        WHERE("id = #{id,jdbcType=BIGINT}");
        
        return SQL();
    }
}