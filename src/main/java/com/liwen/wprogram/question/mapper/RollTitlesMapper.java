package com.liwen.wprogram.question.mapper;

import com.liwen.wprogram.question.model.RollTitles;
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

public interface RollTitlesMapper {
    @Delete({
        "delete from rolltitles",
        "where id = #{id,jdbcType=BIGINT}"
    })
    int deleteByPrimaryKey(Long id);

    @Insert({
        "insert into rolltitles (id, userid, ",
        "nickname, headimg, ",
        "dimension, money, ",
        "status, createtime)",
        "values (#{id,jdbcType=BIGINT}, #{userid,jdbcType=BIGINT}, ",
        "#{nickname,jdbcType=VARCHAR}, #{headimg,jdbcType=VARCHAR}, ",
        "#{dimension,jdbcType=INTEGER}, #{money,jdbcType=INTEGER}, ",
        "#{status,jdbcType=TINYINT}, #{createtime,jdbcType=VARCHAR})"
    })
    int insert(RollTitles record);

    @InsertProvider(type=RollTitlesSqlProvider.class, method="insertSelective")
    int insertSelective(RollTitles record);

    @Select({
        "select",
        "id, userid, nickname, headimg, dimension, money, status, createtime",
        "from rolltitles",
        "where id = #{id,jdbcType=BIGINT}"
    })
    @Results({
        @Result(column="id", property="id", jdbcType=JdbcType.BIGINT, id=true),
        @Result(column="userid", property="userid", jdbcType=JdbcType.BIGINT),
        @Result(column="nickname", property="nickname", jdbcType=JdbcType.VARCHAR),
        @Result(column="headimg", property="headimg", jdbcType=JdbcType.VARCHAR),
        @Result(column="dimension", property="dimension", jdbcType=JdbcType.INTEGER),
        @Result(column="money", property="money", jdbcType=JdbcType.INTEGER),
        @Result(column="status", property="status", jdbcType=JdbcType.TINYINT),
        @Result(column="createtime", property="createtime", jdbcType=JdbcType.VARCHAR)
    })
    RollTitles selectByPrimaryKey(Long id);

    @Select({
            "select",
            "id, userid, nickname, headimg, dimension, money, status,createtime",
            "from rolltitles",
            "where status = #{status,jdbcType=TINYINT}"
    })
    @Results({
            @Result(column="id", property="id", jdbcType=JdbcType.BIGINT, id=true),
            @Result(column="userid", property="userid", jdbcType=JdbcType.BIGINT),
            @Result(column="nickname", property="nickname", jdbcType=JdbcType.VARCHAR),
            @Result(column="headimg", property="headimg", jdbcType=JdbcType.VARCHAR),
            @Result(column="dimension", property="dimension", jdbcType=JdbcType.INTEGER),
            @Result(column="money", property="money", jdbcType=JdbcType.INTEGER),
            @Result(column="status", property="status", jdbcType=JdbcType.TINYINT),
            @Result(column="createtime", property="createtime", jdbcType=JdbcType.VARCHAR)
    })
    List<RollTitles> selectByStatusKey(byte status);

    @UpdateProvider(type=RollTitlesSqlProvider.class, method="updateByPrimaryKeySelective")
    int updateByPrimaryKeySelective(RollTitles record);

    @Update({
        "update rolltitles",
        "set userid = #{userid,jdbcType=BIGINT},",
          "nickname = #{nickname,jdbcType=VARCHAR},",
          "headimg = #{headimg,jdbcType=VARCHAR},",
          "dimension = #{dimension,jdbcType=INTEGER},",
          "money = #{money,jdbcType=INTEGER},",
          "status = #{status,jdbcType=TINYINT},",
          "createtime = #{createtime,jdbcType=VARCHAR}",
        "where id = #{id,jdbcType=BIGINT}"
    })
    int updateByPrimaryKey(RollTitles record);
}