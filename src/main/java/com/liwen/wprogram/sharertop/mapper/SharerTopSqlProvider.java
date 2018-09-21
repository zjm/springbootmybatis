package com.liwen.wprogram.sharertop.mapper;

import static org.apache.ibatis.jdbc.SqlBuilder.BEGIN;
import static org.apache.ibatis.jdbc.SqlBuilder.INSERT_INTO;
import static org.apache.ibatis.jdbc.SqlBuilder.SET;
import static org.apache.ibatis.jdbc.SqlBuilder.SQL;
import static org.apache.ibatis.jdbc.SqlBuilder.UPDATE;
import static org.apache.ibatis.jdbc.SqlBuilder.VALUES;
import static org.apache.ibatis.jdbc.SqlBuilder.WHERE;

import com.liwen.wprogram.sharertop.model.SharerTop;

public class SharerTopSqlProvider {

    public String insertSelective(SharerTop record) {
        BEGIN();
        INSERT_INTO("sharertop");
        
        if (record.getId() != null) {
            VALUES("id", "#{id,jdbcType=BIGINT}");
        }
        
        if (record.getUserid() != null) {
            VALUES("userid", "#{userid,jdbcType=BIGINT}");
        }
        
        if (record.getHeadimg() != null) {
            VALUES("headimg", "#{headimg,jdbcType=VARCHAR}");
        }
        
        if (record.getVisits() != null) {
            VALUES("visits", "#{visits,jdbcType=INTEGER}");
        }
        
        if (record.getIsfriend() != null) {
            VALUES("isfriend", "#{isfriend,jdbcType=TINYINT}");
        }
        
        return SQL();
    }

    public String updateByPrimaryKeySelective(SharerTop record) {
        BEGIN();
        UPDATE("sharertop");
        
        if (record.getUserid() != null) {
            SET("userid = #{userid,jdbcType=BIGINT}");
        }
        
        if (record.getHeadimg() != null) {
            SET("headimg = #{headimg,jdbcType=VARCHAR}");
        }
        
        if (record.getVisits() != null) {
            SET("visits = #{visits,jdbcType=INTEGER}");
        }
        
        if (record.getIsfriend() != null) {
            SET("isfriend = #{isfriend,jdbcType=TINYINT}");
        }
        
        WHERE("id = #{id,jdbcType=BIGINT}");
        
        return SQL();
    }
}