package com.liwen.wprogram.signin.mapper;

import static org.apache.ibatis.jdbc.SqlBuilder.BEGIN;
import static org.apache.ibatis.jdbc.SqlBuilder.INSERT_INTO;
import static org.apache.ibatis.jdbc.SqlBuilder.SET;
import static org.apache.ibatis.jdbc.SqlBuilder.SQL;
import static org.apache.ibatis.jdbc.SqlBuilder.UPDATE;
import static org.apache.ibatis.jdbc.SqlBuilder.VALUES;
import static org.apache.ibatis.jdbc.SqlBuilder.WHERE;

import com.liwen.wprogram.signin.model.SignIn;

public class SignInSqlProvider {

    public String insertSelective(SignIn record) {
        BEGIN();
        INSERT_INTO("signin");
        
        if (record.getId() != null) {
            VALUES("id", "#{id,jdbcType=VARCHAR}");
        }
        
        if (record.getUserid() != null) {
            VALUES("userid", "#{userid,jdbcType=VARCHAR}");
        }
        
        if (record.getSignintime() != null) {
            VALUES("signintime", "#{signintime,jdbcType=VARCHAR}");
        }
        
        if (record.getType() != null) {
            VALUES("type", "#{type,jdbcType=TINYINT}");
        }
        
        return SQL();
    }

    public String updateByPrimaryKeySelective(SignIn record) {
        BEGIN();
        UPDATE("signin");
        
        if (record.getUserid() != null) {
            SET("userid = #{userid,jdbcType=VARCHAR}");
        }
        
        if (record.getSignintime() != null) {
            SET("signintime = #{signintime,jdbcType=VARCHAR}");
        }
        
        if (record.getType() != null) {
            SET("type = #{type,jdbcType=TINYINT}");
        }
        
        WHERE("id = #{id,jdbcType=VARCHAR}");
        
        return SQL();
    }
}