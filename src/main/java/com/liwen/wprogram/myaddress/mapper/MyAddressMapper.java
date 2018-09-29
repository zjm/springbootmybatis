package com.liwen.wprogram.myaddress.mapper;

import com.liwen.wprogram.myaddress.model.MyAddress;
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

public interface MyAddressMapper {
    @Delete({
        "delete from myaddress",
        "where id = #{id,jdbcType=VARCHAR}"
    })
    int deleteByPrimaryKey(String id);

    @Insert({
        "insert into myaddress (id, userid, ",
        "name, phone, area, ",
        "detailaddress, postcoe, ",
        "createtime)",
        "values (#{id,jdbcType=VARCHAR}, #{userid,jdbcType=VARCHAR}, ",
        "#{name,jdbcType=VARCHAR}, #{phone,jdbcType=VARCHAR}, #{area,jdbcType=VARCHAR}, ",
        "#{detailaddress,jdbcType=VARCHAR}, #{postcoe,jdbcType=VARCHAR}, ",
        "#{createtime,jdbcType=VARCHAR})"
    })
    int insert(MyAddress record);

    @InsertProvider(type=MyAddressSqlProvider.class, method="insertSelective")
    int insertSelective(MyAddress record);

    @Select({
        "select",
        "id, userid, name, phone, area, detailaddress, postcoe, createtime",
        "from myaddress",
        "where id = #{id,jdbcType=VARCHAR}"
    })
    @Results({
        @Result(column="id", property="id", jdbcType=JdbcType.VARCHAR, id=true),
        @Result(column="userid", property="userid", jdbcType=JdbcType.VARCHAR),
        @Result(column="name", property="name", jdbcType=JdbcType.VARCHAR),
        @Result(column="phone", property="phone", jdbcType=JdbcType.VARCHAR),
        @Result(column="area", property="area", jdbcType=JdbcType.VARCHAR),
        @Result(column="detailaddress", property="detailaddress", jdbcType=JdbcType.VARCHAR),
        @Result(column="postcoe", property="postcoe", jdbcType=JdbcType.VARCHAR),
        @Result(column="createtime", property="createtime", jdbcType=JdbcType.VARCHAR)
    })
    MyAddress selectByPrimaryKey(String id);

    @Select({
            "select",
            "id, userid, name, phone, area, detailaddress, postcoe, createtime",
            "from myaddress",
            "where userid = #{userid,jdbcType=VARCHAR}"
    })
    @Results({
            @Result(column="id", property="id", jdbcType=JdbcType.VARCHAR, id=true),
            @Result(column="userid", property="userid", jdbcType=JdbcType.VARCHAR),
            @Result(column="name", property="name", jdbcType=JdbcType.VARCHAR),
            @Result(column="phone", property="phone", jdbcType=JdbcType.VARCHAR),
            @Result(column="area", property="area", jdbcType=JdbcType.VARCHAR),
            @Result(column="detailaddress", property="detailaddress", jdbcType=JdbcType.VARCHAR),
            @Result(column="postcoe", property="postcoe", jdbcType=JdbcType.VARCHAR),
            @Result(column="createtime", property="createtime", jdbcType=JdbcType.VARCHAR)
    })
    List<MyAddress> selectMyaddressByUserid(String userid);


    @UpdateProvider(type=MyAddressSqlProvider.class, method="updateByPrimaryKeySelective")
    int updateByPrimaryKeySelective(MyAddress record);

    @Update({
        "update myaddress",
        "set userid = #{userid,jdbcType=VARCHAR},",
          "name = #{name,jdbcType=VARCHAR},",
          "phone = #{phone,jdbcType=VARCHAR},",
          "area = #{area,jdbcType=VARCHAR},",
          "detailaddress = #{detailaddress,jdbcType=VARCHAR},",
          "postcoe = #{postcoe,jdbcType=VARCHAR},",
          "createtime = #{createtime,jdbcType=VARCHAR}",
        "where id = #{id,jdbcType=VARCHAR}"
    })
    int updateByPrimaryKey(MyAddress record);
}