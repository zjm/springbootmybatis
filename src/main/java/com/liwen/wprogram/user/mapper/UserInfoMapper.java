package com.liwen.wprogram.user.mapper;

import com.liwen.wprogram.user.model.UserInfo;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.InsertProvider;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.annotations.UpdateProvider;
import org.apache.ibatis.type.JdbcType;

import java.util.List;

public interface UserInfoMapper {
    @Delete({
        "delete from userinfo",
        "where id = #{id,jdbcType=BIGINT}"
    })
    int deleteByPrimaryKey(Long id);

    @Insert({
        "insert into userinfo (id, phone, ",
        "name, company, department, ",
        "weixinhao, mykernel, ",
        "address)",
        "values (#{id,jdbcType=BIGINT}, #{phone,jdbcType=VARCHAR}, ",
        "#{name,jdbcType=VARCHAR}, #{company,jdbcType=VARCHAR}, #{department,jdbcType=VARCHAR}, ",
        "#{weixinhao,jdbcType=VARCHAR}, #{mykernel,jdbcType=INTEGER}, ",
        "#{address,jdbcType=VARCHAR})"
    })
    int insert(UserInfo record);

    @InsertProvider(type=UserInfoSqlProvider.class, method="insertSelective")
    int insertSelective(UserInfo record);

    @Select({
        "select",
        "id, phone, name, company, department, weixinhao, mykernel, address",
        "from userinfo",
        "where id = #{id,jdbcType=BIGINT}"
    })
    @Results({
        @Result(column="id", property="id", jdbcType=JdbcType.BIGINT, id=true),
        @Result(column="phone", property="phone", jdbcType=JdbcType.VARCHAR),
        @Result(column="name", property="name", jdbcType=JdbcType.VARCHAR),
        @Result(column="company", property="company", jdbcType=JdbcType.VARCHAR),
        @Result(column="department", property="department", jdbcType=JdbcType.VARCHAR),
        @Result(column="weixinhao", property="weixinhao", jdbcType=JdbcType.VARCHAR),
        @Result(column="mykernel", property="mykernel", jdbcType=JdbcType.INTEGER),
        @Result(column="address", property="address", jdbcType=JdbcType.VARCHAR)
    })
    UserInfo selectByPrimaryKey(Long id);

    @Select({
            "select",
            "id, phone, name, company, department, weixinhao, mykernel, address",
            "from userinfo"
    })
    @Results({
            @Result(column="id", property="id", jdbcType=JdbcType.BIGINT, id=true),
            @Result(column="phone", property="phone", jdbcType=JdbcType.VARCHAR),
            @Result(column="name", property="name", jdbcType=JdbcType.VARCHAR),
            @Result(column="company", property="company", jdbcType=JdbcType.VARCHAR),
            @Result(column="department", property="department", jdbcType=JdbcType.VARCHAR),
            @Result(column="weixinhao", property="weixinhao", jdbcType=JdbcType.VARCHAR),
            @Result(column="mykernel", property="mykernel", jdbcType=JdbcType.INTEGER),
            @Result(column="address", property="address", jdbcType=JdbcType.VARCHAR)
    })
    List<UserInfo> selectAll();

    @UpdateProvider(type=UserInfoSqlProvider.class, method="updateByPrimaryKeySelective")
    int updateByPrimaryKeySelective(UserInfo record);

    @Update({
        "update userinfo",
        "set phone = #{phone,jdbcType=VARCHAR},",
          "name = #{name,jdbcType=VARCHAR},",
          "company = #{company,jdbcType=VARCHAR},",
          "department = #{department,jdbcType=VARCHAR},",
          "weixinhao = #{weixinhao,jdbcType=VARCHAR},",
          "mykernel = #{mykernel,jdbcType=INTEGER},",
          "address = #{address,jdbcType=VARCHAR}",
        "where id = #{id,jdbcType=BIGINT}"
    })
    int updateByPrimaryKey(UserInfo record);
}