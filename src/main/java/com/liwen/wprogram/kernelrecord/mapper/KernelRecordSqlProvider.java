package com.liwen.wprogram.kernelrecord.mapper;

import static org.apache.ibatis.jdbc.SqlBuilder.BEGIN;
import static org.apache.ibatis.jdbc.SqlBuilder.INSERT_INTO;
import static org.apache.ibatis.jdbc.SqlBuilder.SET;
import static org.apache.ibatis.jdbc.SqlBuilder.SQL;
import static org.apache.ibatis.jdbc.SqlBuilder.UPDATE;
import static org.apache.ibatis.jdbc.SqlBuilder.VALUES;
import static org.apache.ibatis.jdbc.SqlBuilder.WHERE;

import com.liwen.wprogram.kernelrecord.model.KernelRecord;

public class KernelRecordSqlProvider {

    public String insertSelective(KernelRecord record) {
        BEGIN();
        INSERT_INTO("kernelrecord");
        
        if (record.getId() != null) {
            VALUES("id", "#{id,jdbcType=BIGINT}");
        }
        
        if (record.getUserid() != null) {
            VALUES("userid", "#{userid,jdbcType=BIGINT}");
        }
        
        if (record.getTitle() != null) {
            VALUES("title", "#{title,jdbcType=VARCHAR}");
        }
        
        if (record.getRewardnum() != null) {
            VALUES("rewardnum", "#{rewardnum,jdbcType=INTEGER}");
        }
        
        if (record.getType() != null) {
            VALUES("type", "#{type,jdbcType=TINYINT}");
        }
        
        if (record.getRewardtime() != null) {
            VALUES("rewardtime", "#{rewardtime,jdbcType=VARCHAR}");
        }
        
        if (record.getCreatetime() != null) {
            VALUES("createtime", "#{createtime,jdbcType=VARCHAR}");
        }
        
        return SQL();
    }

    public String updateByPrimaryKeySelective(KernelRecord record) {
        BEGIN();
        UPDATE("kernelrecord");
        
        if (record.getUserid() != null) {
            SET("userid = #{userid,jdbcType=BIGINT}");
        }
        
        if (record.getTitle() != null) {
            SET("title = #{title,jdbcType=VARCHAR}");
        }
        
        if (record.getRewardnum() != null) {
            SET("rewardnum = #{rewardnum,jdbcType=INTEGER}");
        }
        
        if (record.getType() != null) {
            SET("type = #{type,jdbcType=TINYINT}");
        }
        
        if (record.getRewardtime() != null) {
            SET("rewardtime = #{rewardtime,jdbcType=VARCHAR}");
        }
        
        if (record.getCreatetime() != null) {
            SET("createtime = #{createtime,jdbcType=VARCHAR}");
        }
        
        WHERE("id = #{id,jdbcType=BIGINT}");
        
        return SQL();
    }
}