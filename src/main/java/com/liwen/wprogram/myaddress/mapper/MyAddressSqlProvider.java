package com.liwen.wprogram.myaddress.mapper;

import static org.apache.ibatis.jdbc.SqlBuilder.BEGIN;
import static org.apache.ibatis.jdbc.SqlBuilder.INSERT_INTO;
import static org.apache.ibatis.jdbc.SqlBuilder.SET;
import static org.apache.ibatis.jdbc.SqlBuilder.SQL;
import static org.apache.ibatis.jdbc.SqlBuilder.UPDATE;
import static org.apache.ibatis.jdbc.SqlBuilder.VALUES;
import static org.apache.ibatis.jdbc.SqlBuilder.WHERE;

import com.liwen.wprogram.myaddress.model.MyAddress;

public class MyAddressSqlProvider {

    public String insertSelective(MyAddress record) {
        BEGIN();
        INSERT_INTO("myaddress");
        
        if (record.getId() != null) {
            VALUES("id", "#{id,jdbcType=BIGINT}");
        }
        
        if (record.getUserid() != null) {
            VALUES("userid", "#{userid,jdbcType=BIGINT}");
        }
        
        if (record.getName() != null) {
            VALUES("name", "#{name,jdbcType=VARCHAR}");
        }
        
        if (record.getPhone() != null) {
            VALUES("phone", "#{phone,jdbcType=VARCHAR}");
        }
        
        if (record.getArea() != null) {
            VALUES("area", "#{area,jdbcType=VARCHAR}");
        }
        
        if (record.getDetailaddress() != null) {
            VALUES("detailaddress", "#{detailaddress,jdbcType=VARCHAR}");
        }
        
        if (record.getPostcoe() != null) {
            VALUES("postcoe", "#{postcoe,jdbcType=VARCHAR}");
        }
        
        if (record.getCreatetime() != null) {
            VALUES("createtime", "#{createtime,jdbcType=VARCHAR}");
        }
        
        return SQL();
    }

    public String updateByPrimaryKeySelective(MyAddress record) {
        BEGIN();
        UPDATE("myaddress");
        
        if (record.getUserid() != null) {
            SET("userid = #{userid,jdbcType=BIGINT}");
        }
        
        if (record.getName() != null) {
            SET("name = #{name,jdbcType=VARCHAR}");
        }
        
        if (record.getPhone() != null) {
            SET("phone = #{phone,jdbcType=VARCHAR}");
        }
        
        if (record.getArea() != null) {
            SET("area = #{area,jdbcType=VARCHAR}");
        }
        
        if (record.getDetailaddress() != null) {
            SET("detailaddress = #{detailaddress,jdbcType=VARCHAR}");
        }
        
        if (record.getPostcoe() != null) {
            SET("postcoe = #{postcoe,jdbcType=VARCHAR}");
        }
        
        if (record.getCreatetime() != null) {
            SET("createtime = #{createtime,jdbcType=VARCHAR}");
        }
        
        WHERE("id = #{id,jdbcType=BIGINT}");
        
        return SQL();
    }
}