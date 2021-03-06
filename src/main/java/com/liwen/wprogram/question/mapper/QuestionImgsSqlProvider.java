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
            VALUES("id", "#{id,jdbcType=VARCHAR}");
        }
        
        if (record.getQuestionid() != null) {
            VALUES("questionid", "#{questionid,jdbcType=VARCHAR}");
        }
        
        if (record.getImgname() != null) {
            VALUES("imgname", "#{imgname,jdbcType=VARCHAR}");
        }
        
        if (record.getCreatetime() != null) {
            VALUES("createtime", "#{createtime,jdbcType=VARCHAR}");
        }
        
        return SQL();
    }

    public String updateByPrimaryKeySelective(QuestionImgs record) {
        BEGIN();
        UPDATE("questionimgs");
        
        if (record.getQuestionid() != null) {
            SET("questionid = #{questionid,jdbcType=VARCHAR}");
        }
        
        if (record.getImgname() != null) {
            SET("imgname = #{imgname,jdbcType=VARCHAR}");
        }
        
        if (record.getCreatetime() != null) {
            SET("createtime = #{createtime,jdbcType=VARCHAR}");
        }
        
        WHERE("id = #{id,jdbcType=VARCHAR}");
        
        return SQL();
    }
}