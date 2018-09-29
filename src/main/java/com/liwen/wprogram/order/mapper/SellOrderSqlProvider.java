package com.liwen.wprogram.order.mapper;

import static org.apache.ibatis.jdbc.SqlBuilder.BEGIN;
import static org.apache.ibatis.jdbc.SqlBuilder.INSERT_INTO;
import static org.apache.ibatis.jdbc.SqlBuilder.SET;
import static org.apache.ibatis.jdbc.SqlBuilder.SQL;
import static org.apache.ibatis.jdbc.SqlBuilder.UPDATE;
import static org.apache.ibatis.jdbc.SqlBuilder.VALUES;
import static org.apache.ibatis.jdbc.SqlBuilder.WHERE;

import com.liwen.wprogram.order.model.SellOrder;

public class SellOrderSqlProvider {

    public String insertSelective(SellOrder record) {
        BEGIN();
        INSERT_INTO("sellorder");
        
        if (record.getId() != null) {
            VALUES("id", "#{id,jdbcType=VARCHAR}");
        }
        
        if (record.getUserid() != null) {
            VALUES("userid", "#{userid,jdbcType=VARCHAR}");
        }
        
        if (record.getAddressid() != null) {
            VALUES("addressid", "#{addressid,jdbcType=VARCHAR}");
        }
        
        if (record.getProductid() != null) {
            VALUES("productid", "#{productid,jdbcType=VARCHAR}");
        }
        
        if (record.getPrice() != null) {
            VALUES("price", "#{price,jdbcType=REAL}");
        }
        
        if (record.getTotalcost() != null) {
            VALUES("totalcost", "#{totalcost,jdbcType=REAL}");
        }
        
        if (record.getRealcost() != null) {
            VALUES("realcost", "#{realcost,jdbcType=REAL}");
        }
        
        if (record.getBuynum() != null) {
            VALUES("buynum", "#{buynum,jdbcType=INTEGER}");
        }
        
        if (record.getStatus() != null) {
            VALUES("status", "#{status,jdbcType=TINYINT}");
        }
        
        if (record.getSendtype() != null) {
            VALUES("sendtype", "#{sendtype,jdbcType=TINYINT}");
        }
        
        if (record.getCreatetime() != null) {
            VALUES("createtime", "#{createtime,jdbcType=VARCHAR}");
        }
        
        if (record.getPaytime() != null) {
            VALUES("paytime", "#{paytime,jdbcType=VARCHAR}");
        }
        
        if (record.getPaysuccesstime() != null) {
            VALUES("paysuccesstime", "#{paysuccesstime,jdbcType=VARCHAR}");
        }
        
        return SQL();
    }

    public String updateByPrimaryKeySelective(SellOrder record) {
        BEGIN();
        UPDATE("sellorder");
        
        if (record.getUserid() != null) {
            SET("userid = #{userid,jdbcType=VARCHAR}");
        }
        
        if (record.getAddressid() != null) {
            SET("addressid = #{addressid,jdbcType=VARCHAR}");
        }
        
        if (record.getProductid() != null) {
            SET("productid = #{productid,jdbcType=VARCHAR}");
        }
        
        if (record.getPrice() != null) {
            SET("price = #{price,jdbcType=REAL}");
        }
        
        if (record.getTotalcost() != null) {
            SET("totalcost = #{totalcost,jdbcType=REAL}");
        }
        
        if (record.getRealcost() != null) {
            SET("realcost = #{realcost,jdbcType=REAL}");
        }
        
        if (record.getBuynum() != null) {
            SET("buynum = #{buynum,jdbcType=INTEGER}");
        }
        
        if (record.getStatus() != null) {
            SET("status = #{status,jdbcType=TINYINT}");
        }
        
        if (record.getSendtype() != null) {
            SET("sendtype = #{sendtype,jdbcType=TINYINT}");
        }
        
        if (record.getCreatetime() != null) {
            SET("createtime = #{createtime,jdbcType=VARCHAR}");
        }
        
        if (record.getPaytime() != null) {
            SET("paytime = #{paytime,jdbcType=VARCHAR}");
        }
        
        if (record.getPaysuccesstime() != null) {
            SET("paysuccesstime = #{paysuccesstime,jdbcType=VARCHAR}");
        }
        
        WHERE("id = #{id,jdbcType=VARCHAR}");
        
        return SQL();
    }
}