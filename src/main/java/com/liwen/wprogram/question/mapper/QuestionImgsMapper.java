package com.liwen.wprogram.question.mapper;

import com.liwen.wprogram.question.model.QuestionImgs;
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

public interface QuestionImgsMapper {
    @Delete({
        "delete from questionimgs",
        "where id = #{id,jdbcType=VARCHAR}"
    })
    int deleteByPrimaryKey(String id);

    @Insert({
        "insert into questionimgs (id, questionid, ",
        "imgname, createtime)",
        "values (#{id,jdbcType=VARCHAR}, #{questionid,jdbcType=VARCHAR}, ",
        "#{imgname,jdbcType=VARCHAR}, #{createtime,jdbcType=VARCHAR})"
    })
    int insert(QuestionImgs record);

    @InsertProvider(type=QuestionImgsSqlProvider.class, method="insertSelective")
    int insertSelective(QuestionImgs record);

    @Select({
        "select",
        "id, questionid, imgname, createtime",
        "from questionimgs",
        "where id = #{id,jdbcType=VARCHAR}"
    })
    @Results({
        @Result(column="id", property="id", jdbcType=JdbcType.VARCHAR, id=true),
        @Result(column="questionid", property="questionid", jdbcType=JdbcType.VARCHAR),
        @Result(column="imgname", property="imgname", jdbcType=JdbcType.VARCHAR),
        @Result(column="createtime", property="createtime", jdbcType=JdbcType.VARCHAR)
    })
    QuestionImgs selectByPrimaryKey(String id);

    @Select({
            "select",
            "id, questionid, imgname, createtime",
            "from questionimgs",
            "where questionid = #{questionid,jdbcType=VARCHAR}"
    })
    @Results({
            @Result(column="id", property="id", jdbcType=JdbcType.VARCHAR, id=true),
            @Result(column="questionid", property="questionid", jdbcType=JdbcType.VARCHAR),
            @Result(column="imgname", property="imgname", jdbcType=JdbcType.VARCHAR),
            @Result(column="createtime", property="createtime", jdbcType=JdbcType.VARCHAR)
    })
    List<QuestionImgs> selectByQuestionidKey(String questionid);

    @UpdateProvider(type=QuestionImgsSqlProvider.class, method="updateByPrimaryKeySelective")
    int updateByPrimaryKeySelective(QuestionImgs record);

    @Update({
        "update questionimgs",
        "set questionid = #{questionid,jdbcType=VARCHAR},",
          "imgname = #{imgname,jdbcType=VARCHAR},",
          "createtime = #{createtime,jdbcType=VARCHAR}",
        "where id = #{id,jdbcType=VARCHAR}"
    })
    int updateByPrimaryKey(QuestionImgs record);
}