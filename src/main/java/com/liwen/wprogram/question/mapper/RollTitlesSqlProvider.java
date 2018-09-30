package com.liwen.wprogram.question.mapper;

import static org.apache.ibatis.jdbc.SqlBuilder.BEGIN;
import static org.apache.ibatis.jdbc.SqlBuilder.INSERT_INTO;
import static org.apache.ibatis.jdbc.SqlBuilder.SET;
import static org.apache.ibatis.jdbc.SqlBuilder.SQL;
import static org.apache.ibatis.jdbc.SqlBuilder.UPDATE;
import static org.apache.ibatis.jdbc.SqlBuilder.VALUES;
import static org.apache.ibatis.jdbc.SqlBuilder.WHERE;

import com.liwen.wprogram.question.model.RollTitles;

public class RollTitlesSqlProvider {

    public String insertSelective(RollTitles record) {
        BEGIN();
        INSERT_INTO("rolltitles");
        
        if (record.getId() != null) {
            VALUES("id", "#{id,jdbcType=VARCHAR}");
        }
        
        if (record.getUserid() != null) {
            VALUES("userid", "#{userid,jdbcType=VARCHAR}");
        }
        
        if (record.getNickname() != null) {
            VALUES("nickname", "#{nickname,jdbcType=VARCHAR}");
        }
        
        if (record.getHeadimg() != null) {
            VALUES("headimg", "#{headimg,jdbcType=VARCHAR}");
        }
        
        if (record.getDimension() != null) {
            VALUES("dimension", "#{dimension,jdbcType=INTEGER}");
        }
        
        if (record.getMoney() != null) {
            VALUES("money", "#{money,jdbcType=INTEGER}");
        }
        
        if (record.getStatus() != null) {
            VALUES("status", "#{status,jdbcType=TINYINT}");
        }
        
        if (record.getCreatetime() != null) {
            VALUES("createtime", "#{createtime,jdbcType=VARCHAR}");
        }
        
        return SQL();
    }

    public String updateByPrimaryKeySelective(RollTitles record) {
        BEGIN();
        UPDATE("rolltitles");
        
        if (record.getUserid() != null) {
            SET("userid = #{userid,jdbcType=VARCHAR}");
        }
        
        if (record.getNickname() != null) {
            SET("nickname = #{nickname,jdbcType=VARCHAR}");
        }
        
        if (record.getHeadimg() != null) {
            SET("headimg = #{headimg,jdbcType=VARCHAR}");
        }
        
        if (record.getDimension() != null) {
            SET("dimension = #{dimension,jdbcType=INTEGER}");
        }
        
        if (record.getMoney() != null) {
            SET("money = #{money,jdbcType=INTEGER}");
        }
        
        if (record.getStatus() != null) {
            SET("status = #{status,jdbcType=TINYINT}");
        }
        
        if (record.getCreatetime() != null) {
            SET("createtime = #{createtime,jdbcType=VARCHAR}");
        }
        
        WHERE("id = #{id,jdbcType=VARCHAR}");
        
        return SQL();
    }
}