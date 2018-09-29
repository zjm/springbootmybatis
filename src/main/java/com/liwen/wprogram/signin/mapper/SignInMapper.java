package com.liwen.wprogram.signin.mapper;

import com.liwen.wprogram.signin.model.SignIn;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.InsertProvider;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.annotations.UpdateProvider;
import org.apache.ibatis.type.JdbcType;

public interface SignInMapper {
    @Delete({
        "delete from signin",
        "where id = #{id,jdbcType=VARCHAR}"
    })
    int deleteByPrimaryKey(String id);

    @Insert({
        "insert into signin (id, userid, ",
        "signintime, type)",
        "values (#{id,jdbcType=VARCHAR}, #{userid,jdbcType=VARCHAR}, ",
        "#{signintime,jdbcType=VARCHAR}, #{type,jdbcType=TINYINT})"
    })
    int insert(SignIn record);

    @InsertProvider(type=SignInSqlProvider.class, method="insertSelective")
    int insertSelective(SignIn record);

    @Select({
        "select",
        "id, userid, signintime, type",
        "from signin",
        "where id = #{id,jdbcType=VARCHAR}"
    })
    @Results({
        @Result(column="id", property="id", jdbcType=JdbcType.VARCHAR, id=true),
        @Result(column="userid", property="userid", jdbcType=JdbcType.VARCHAR),
        @Result(column="signintime", property="signintime", jdbcType=JdbcType.VARCHAR),
        @Result(column="type", property="type", jdbcType=JdbcType.TINYINT)
    })
    SignIn selectByPrimaryKey(String id);


    @Select({
            "select",
            "id, userid, signintime, type",
            "from signin",
            "where userid = #{userid,jdbcType=VARCHAR}"
    })
    @Results({
            @Result(column="id", property="id", jdbcType=JdbcType.VARCHAR, id=true),
            @Result(column="userid", property="userid", jdbcType=JdbcType.VARCHAR),
            @Result(column="signintime", property="signintime", jdbcType=JdbcType.VARCHAR),
            @Result(column="type", property="type", jdbcType=JdbcType.TINYINT)
    })
    SignIn selectByUserid(String userid);


    @UpdateProvider(type=SignInSqlProvider.class, method="updateByPrimaryKeySelective")
    int updateByPrimaryKeySelective(SignIn record);

    @Update({
        "update signin",
        "set userid = #{userid,jdbcType=VARCHAR},",
          "signintime = #{signintime,jdbcType=VARCHAR},",
          "type = #{type,jdbcType=TINYINT}",
        "where id = #{id,jdbcType=VARCHAR}"
    })
    int updateByPrimaryKey(SignIn record);
}