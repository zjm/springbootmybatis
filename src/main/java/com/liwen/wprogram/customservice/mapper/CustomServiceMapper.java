package com.liwen.wprogram.customservice.mapper;

import com.liwen.wprogram.customservice.model.CustomService;
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

public interface CustomServiceMapper {
    @Delete({
        "delete from customservice",
        "where id = #{id,jdbcType=BIGINT}"
    })
    int deleteByPrimaryKey(Long id);

    @Insert({
        "insert into customservice (id, senduserid, ",
        "recuserid, sendnickname, ",
        "recnickname, content, ",
        "imgurl, createtime)",
        "values (#{id,jdbcType=BIGINT}, #{senduserid,jdbcType=BIGINT}, ",
        "#{recuserid,jdbcType=BIGINT}, #{sendnickname,jdbcType=VARCHAR}, ",
        "#{recnickname,jdbcType=VARCHAR}, #{content,jdbcType=VARCHAR}, ",
        "#{imgurl,jdbcType=VARCHAR}, #{createtime,jdbcType=VARCHAR})"
    })
    int insert(CustomService record);

    @InsertProvider(type=CustomServiceSqlProvider.class, method="insertSelective")
    int insertSelective(CustomService record);

    @Select({
        "select",
        "id, senduserid, recuserid, sendnickname, recnickname, content, imgurl, createtime",
        "from customservice",
        "where id = #{id,jdbcType=BIGINT}"
    })
    @Results({
        @Result(column="id", property="id", jdbcType=JdbcType.BIGINT, id=true),
        @Result(column="senduserid", property="senduserid", jdbcType=JdbcType.BIGINT),
        @Result(column="recuserid", property="recuserid", jdbcType=JdbcType.BIGINT),
        @Result(column="sendnickname", property="sendnickname", jdbcType=JdbcType.VARCHAR),
        @Result(column="recnickname", property="recnickname", jdbcType=JdbcType.VARCHAR),
        @Result(column="content", property="content", jdbcType=JdbcType.VARCHAR),
        @Result(column="imgurl", property="imgurl", jdbcType=JdbcType.VARCHAR),
        @Result(column="createtime", property="createtime", jdbcType=JdbcType.VARCHAR)
    })
    CustomService selectByPrimaryKey(Long id);

    @Select({
            "select",
            "id, senduserid, recuserid, sendnickname, recnickname, content, imgurl, createtime",
            "from customservice",
            "where senduserid = #{id,jdbcType=BIGINT} or recuserid = #{id,jdbcType=BIGINT}"
    })
    @Results({
            @Result(column="id", property="id", jdbcType=JdbcType.BIGINT, id=true),
            @Result(column="senduserid", property="senduserid", jdbcType=JdbcType.BIGINT),
            @Result(column="recuserid", property="recuserid", jdbcType=JdbcType.BIGINT),
            @Result(column="sendnickname", property="sendnickname", jdbcType=JdbcType.VARCHAR),
            @Result(column="recnickname", property="recnickname", jdbcType=JdbcType.VARCHAR),
            @Result(column="content", property="content", jdbcType=JdbcType.VARCHAR),
            @Result(column="imgurl", property="imgurl", jdbcType=JdbcType.VARCHAR),
            @Result(column="createtime", property="createtime", jdbcType=JdbcType.VARCHAR)
    })
    List<CustomService> selectByUserid(Long id);

    @UpdateProvider(type=CustomServiceSqlProvider.class, method="updateByPrimaryKeySelective")
    int updateByPrimaryKeySelective(CustomService record);

    @Update({
        "update customservice",
        "set senduserid = #{senduserid,jdbcType=BIGINT},",
          "recuserid = #{recuserid,jdbcType=BIGINT},",
          "sendnickname = #{sendnickname,jdbcType=VARCHAR},",
          "recnickname = #{recnickname,jdbcType=VARCHAR},",
          "content = #{content,jdbcType=VARCHAR},",
          "imgurl = #{imgurl,jdbcType=VARCHAR},",
          "createtime = #{createtime,jdbcType=VARCHAR}",
        "where id = #{id,jdbcType=BIGINT}"
    })
    int updateByPrimaryKey(CustomService record);
}