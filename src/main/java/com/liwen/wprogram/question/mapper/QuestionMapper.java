package com.liwen.wprogram.question.mapper;

import com.liwen.wprogram.question.model.Question;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.InsertProvider;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.annotations.UpdateProvider;
import org.apache.ibatis.type.JdbcType;

public interface QuestionMapper {
    @Delete({
        "delete from question",
        "where id = #{id,jdbcType=BIGINT}"
    })
    int deleteByPrimaryKey(Long id);

    @Insert({
        "insert into question (id, userid, ",
        "content, type, realnamepublish, ",
        "createtime, validityperiod)",
        "values (#{id,jdbcType=BIGINT}, #{userid,jdbcType=BIGINT}, ",
        "#{content,jdbcType=VARCHAR}, #{type,jdbcType=TINYINT}, #{realnamepublish,jdbcType=TINYINT}, ",
        "#{createtime,jdbcType=TIMESTAMP}, #{validityperiod,jdbcType=INTEGER})"
    })
    int insert(Question record);

    @InsertProvider(type=QuestionSqlProvider.class, method="insertSelective")
    int insertSelective(Question record);

    @Select({
        "select",
        "id, userid, content, type, realnamepublish, createtime, validityperiod",
        "from question",
        "where id = #{id,jdbcType=BIGINT}"
    })
    @Results({
        @Result(column="id", property="id", jdbcType=JdbcType.BIGINT, id=true),
        @Result(column="userid", property="userid", jdbcType=JdbcType.BIGINT),
        @Result(column="content", property="content", jdbcType=JdbcType.VARCHAR),
        @Result(column="type", property="type", jdbcType=JdbcType.TINYINT),
        @Result(column="realnamepublish", property="realnamepublish", jdbcType=JdbcType.TINYINT),
        @Result(column="createtime", property="createtime", jdbcType=JdbcType.TIMESTAMP),
        @Result(column="validityperiod", property="validityperiod", jdbcType=JdbcType.INTEGER)
    })
    Question selectByPrimaryKey(Long id);

    @UpdateProvider(type=QuestionSqlProvider.class, method="updateByPrimaryKeySelective")
    int updateByPrimaryKeySelective(Question record);

    @Update({
        "update question",
        "set userid = #{userid,jdbcType=BIGINT},",
          "content = #{content,jdbcType=VARCHAR},",
          "type = #{type,jdbcType=TINYINT},",
          "realnamepublish = #{realnamepublish,jdbcType=TINYINT},",
          "createtime = #{createtime,jdbcType=TIMESTAMP},",
          "validityperiod = #{validityperiod,jdbcType=INTEGER}",
        "where id = #{id,jdbcType=BIGINT}"
    })
    int updateByPrimaryKey(Question record);
}