package com.liwen.wprogram.user.mapper;

import static org.apache.ibatis.jdbc.SqlBuilder.BEGIN;
import static org.apache.ibatis.jdbc.SqlBuilder.INSERT_INTO;
import static org.apache.ibatis.jdbc.SqlBuilder.SET;
import static org.apache.ibatis.jdbc.SqlBuilder.SQL;
import static org.apache.ibatis.jdbc.SqlBuilder.UPDATE;
import static org.apache.ibatis.jdbc.SqlBuilder.VALUES;
import static org.apache.ibatis.jdbc.SqlBuilder.WHERE;

import com.liwen.wprogram.user.model.UserInfo;

public class UserInfoSqlProvider {

    public String insertSelective(UserInfo record) {
        BEGIN();
        INSERT_INTO("userinfo");
        
        if (record.getId() != null) {
            VALUES("id", "#{id,jdbcType=VARCHAR}");
        }
        
        if (record.getOpenid() != null) {
            VALUES("openid", "#{openid,jdbcType=VARCHAR}");
        }
        
        if (record.getHeadimg() != null) {
            VALUES("headimg", "#{headimg,jdbcType=VARCHAR}");
        }
        
        if (record.getNickname() != null) {
            VALUES("nickname", "#{nickname,jdbcType=VARCHAR}");
        }
        
        if (record.getPhone() != null) {
            VALUES("phone", "#{phone,jdbcType=VARCHAR}");
        }
        
        if (record.getName() != null) {
            VALUES("name", "#{name,jdbcType=VARCHAR}");
        }
        
        if (record.getCompany() != null) {
            VALUES("company", "#{company,jdbcType=VARCHAR}");
        }
        
        if (record.getDepartment() != null) {
            VALUES("department", "#{department,jdbcType=VARCHAR}");
        }
        
        if (record.getWeixinhao() != null) {
            VALUES("weixinhao", "#{weixinhao,jdbcType=VARCHAR}");
        }
        
        if (record.getMykernel() != null) {
            VALUES("mykernel", "#{mykernel,jdbcType=INTEGER}");
        }
        
        if (record.getAddress() != null) {
            VALUES("address", "#{address,jdbcType=VARCHAR}");
        }
        
        if (record.getRmbbalance() != null) {
            VALUES("rmbbalance", "#{rmbbalance,jdbcType=REAL}");
        }
        
        if (record.getCreatetime() != null) {
            VALUES("createtime", "#{createtime,jdbcType=VARCHAR}");
        }
        
        return SQL();
    }

    public String updateByPrimaryKeySelective(UserInfo record) {
        BEGIN();
        UPDATE("userinfo");
        
        if (record.getOpenid() != null) {
            SET("openid = #{openid,jdbcType=VARCHAR}");
        }
        
        if (record.getHeadimg() != null) {
            SET("headimg = #{headimg,jdbcType=VARCHAR}");
        }
        
        if (record.getNickname() != null) {
            SET("nickname = #{nickname,jdbcType=VARCHAR}");
        }
        
        if (record.getPhone() != null) {
            SET("phone = #{phone,jdbcType=VARCHAR}");
        }
        
        if (record.getName() != null) {
            SET("name = #{name,jdbcType=VARCHAR}");
        }
        
        if (record.getCompany() != null) {
            SET("company = #{company,jdbcType=VARCHAR}");
        }
        
        if (record.getDepartment() != null) {
            SET("department = #{department,jdbcType=VARCHAR}");
        }
        
        if (record.getWeixinhao() != null) {
            SET("weixinhao = #{weixinhao,jdbcType=VARCHAR}");
        }
        
        if (record.getMykernel() != null) {
            SET("mykernel = #{mykernel,jdbcType=INTEGER}");
        }
        
        if (record.getAddress() != null) {
            SET("address = #{address,jdbcType=VARCHAR}");
        }
        
        if (record.getRmbbalance() != null) {
            SET("rmbbalance = #{rmbbalance,jdbcType=REAL}");
        }
        
        if (record.getCreatetime() != null) {
            SET("createtime = #{createtime,jdbcType=VARCHAR}");
        }
        
        WHERE("id = #{id,jdbcType=VARCHAR}");
        
        return SQL();
    }
}