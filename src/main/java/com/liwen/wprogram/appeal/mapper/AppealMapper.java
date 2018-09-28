package com.liwen.wprogram.appeal.mapper;

import com.liwen.wprogram.appeal.model.Appeal;
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

public interface AppealMapper {
    @Delete({
        "delete from appeal",
        "where id = #{id,jdbcType=VARCHAR}"
    })
    int deleteByPrimaryKey(String id);

    @Insert({
        "insert into appeal (id, senduserid, ",
        "recuserid, orderid, ",
        "title, content, ",
        "createtime)",
        "values (#{id,jdbcType=VARCHAR}, #{senduserid,jdbcType=VARCHAR}, ",
        "#{recuserid,jdbcType=VARCHAR}, #{orderid,jdbcType=VARCHAR}, ",
        "#{title,jdbcType=VARCHAR}, #{content,jdbcType=VARCHAR}, ",
        "#{createtime,jdbcType=VARCHAR})"
    })
    int insert(Appeal record);

    @InsertProvider(type=AppealSqlProvider.class, method="insertSelective")
    int insertSelective(Appeal record);

    @Select({
        "select",
        "id, senduserid, recuserid, orderid, title, content, createtime",
        "from appeal",
        "where id = #{id,jdbcType=VARCHAR}"
    })
    @Results({
        @Result(column="id", property="id", jdbcType=JdbcType.VARCHAR, id=true),
        @Result(column="senduserid", property="senduserid", jdbcType=JdbcType.VARCHAR),
        @Result(column="recuserid", property="recuserid", jdbcType=JdbcType.VARCHAR),
        @Result(column="orderid", property="orderid", jdbcType=JdbcType.VARCHAR),
        @Result(column="title", property="title", jdbcType=JdbcType.VARCHAR),
        @Result(column="content", property="content", jdbcType=JdbcType.VARCHAR),
        @Result(column="createtime", property="createtime", jdbcType=JdbcType.VARCHAR)
    })
    Appeal selectByPrimaryKey(String id);


    @Select({
            "select",
            "id, senduserid, recuserid, orderid, title, content, createtime",
            "from appeal",
            "where senduserid = #{senduserid,jdbcType=BIGINT}"
    })
    @Results({
            @Result(column="id", property="id", jdbcType=JdbcType.VARCHAR, id=true),
            @Result(column="senduserid", property="senduserid", jdbcType=JdbcType.BIGINT),
            @Result(column="recuserid", property="recuserid", jdbcType=JdbcType.BIGINT),
            @Result(column="orderid", property="orderid", jdbcType=JdbcType.BIGINT),
            @Result(column="title", property="title", jdbcType=JdbcType.VARCHAR),
            @Result(column="content", property="content", jdbcType=JdbcType.VARCHAR),
            @Result(column="createtime", property="createtime", jdbcType=JdbcType.VARCHAR)
    })
    List<Appeal> selectBySenduserid(String senderid);

    @Select({
            "select",
            "id, senduserid, recuserid, orderid, title, content, createtime",
            "from appeal",
            "where recuserid = #{recuserid,jdbcType=BIGINT}"
    })
    @Results({
            @Result(column="id", property="id", jdbcType=JdbcType.VARCHAR, id=true),
            @Result(column="senduserid", property="senduserid", jdbcType=JdbcType.BIGINT),
            @Result(column="recuserid", property="recuserid", jdbcType=JdbcType.BIGINT),
            @Result(column="orderid", property="orderid", jdbcType=JdbcType.BIGINT),
            @Result(column="title", property="title", jdbcType=JdbcType.VARCHAR),
            @Result(column="content", property="content", jdbcType=JdbcType.VARCHAR),
            @Result(column="createtime", property="createtime", jdbcType=JdbcType.VARCHAR)
    })
    List<Appeal> selectByRecuserid(String recuserid);


    @UpdateProvider(type=AppealSqlProvider.class, method="updateByPrimaryKeySelective")
    int updateByPrimaryKeySelective(Appeal record);

    @Update({
        "update appeal",
        "set senduserid = #{senduserid,jdbcType=VARCHAR},",
          "recuserid = #{recuserid,jdbcType=VARCHAR},",
          "orderid = #{orderid,jdbcType=VARCHAR},",
          "title = #{title,jdbcType=VARCHAR},",
          "content = #{content,jdbcType=VARCHAR},",
          "createtime = #{createtime,jdbcType=VARCHAR}",
        "where id = #{id,jdbcType=VARCHAR}"
    })
    int updateByPrimaryKey(Appeal record);
}