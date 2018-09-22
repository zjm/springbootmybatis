package com.liwen.wprogram.sellproduct.mapper;

import static org.apache.ibatis.jdbc.SqlBuilder.BEGIN;
import static org.apache.ibatis.jdbc.SqlBuilder.INSERT_INTO;
import static org.apache.ibatis.jdbc.SqlBuilder.SET;
import static org.apache.ibatis.jdbc.SqlBuilder.SQL;
import static org.apache.ibatis.jdbc.SqlBuilder.UPDATE;
import static org.apache.ibatis.jdbc.SqlBuilder.VALUES;
import static org.apache.ibatis.jdbc.SqlBuilder.WHERE;

import com.liwen.wprogram.sellproduct.model.SellProduct;

public class SellProductSqlProvider {

    public String insertSelective(SellProduct record) {
        BEGIN();
        INSERT_INTO("sellproduct");
        
        if (record.getId() != null) {
            VALUES("id", "#{id,jdbcType=BIGINT}");
        }
        
        if (record.getProductname() != null) {
            VALUES("productname", "#{productname,jdbcType=VARCHAR}");
        }
        
        if (record.getPrice() != null) {
            VALUES("price", "#{price,jdbcType=REAL}");
        }
        
        if (record.getKernel() != null) {
            VALUES("kernel", "#{kernel,jdbcType=INTEGER}");
        }
        
        if (record.getThumbnail() != null) {
            VALUES("thumbnail", "#{thumbnail,jdbcType=VARCHAR}");
        }
        
        if (record.getDetailimg() != null) {
            VALUES("detailimg", "#{detailimg,jdbcType=VARCHAR}");
        }
        
        if (record.getRemainingnum() != null) {
            VALUES("remainingnum", "#{remainingnum,jdbcType=INTEGER}");
        }
        
        if (record.getTotalnum() != null) {
            VALUES("totalnum", "#{totalnum,jdbcType=INTEGER}");
        }
        
        if (record.getCreatetime() != null) {
            VALUES("createtime", "#{createtime,jdbcType=VARCHAR}");
        }
        
        return SQL();
    }

    public String updateByPrimaryKeySelective(SellProduct record) {
        BEGIN();
        UPDATE("sellproduct");
        
        if (record.getProductname() != null) {
            SET("productname = #{productname,jdbcType=VARCHAR}");
        }
        
        if (record.getPrice() != null) {
            SET("price = #{price,jdbcType=REAL}");
        }
        
        if (record.getKernel() != null) {
            SET("kernel = #{kernel,jdbcType=INTEGER}");
        }
        
        if (record.getThumbnail() != null) {
            SET("thumbnail = #{thumbnail,jdbcType=VARCHAR}");
        }
        
        if (record.getDetailimg() != null) {
            SET("detailimg = #{detailimg,jdbcType=VARCHAR}");
        }
        
        if (record.getRemainingnum() != null) {
            SET("remainingnum = #{remainingnum,jdbcType=INTEGER}");
        }
        
        if (record.getTotalnum() != null) {
            SET("totalnum = #{totalnum,jdbcType=INTEGER}");
        }
        
        if (record.getCreatetime() != null) {
            SET("createtime = #{createtime,jdbcType=VARCHAR}");
        }
        
        WHERE("id = #{id,jdbcType=BIGINT}");
        
        return SQL();
    }
}