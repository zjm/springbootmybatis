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

import java.util.List;

public interface QuestionMapper {
    @Delete({
        "delete from question",
        "where id = #{id,jdbcType=VARCHAR}"
    })
    int deleteByPrimaryKey(String id);

    @Insert({
        "insert into question (id, userid, ",
        "productid, title, ",
        "content, type, realnamepublish, ",
        "validityperiod, status, ",
        "questiontype, viewnum, ",
        "ansernum, giftimg, ",
        "publishcompany, rewardbalance, ",
        "createtime)",
        "values (#{id,jdbcType=VARCHAR}, #{userid,jdbcType=VARCHAR}, ",
        "#{productid,jdbcType=VARCHAR}, #{title,jdbcType=VARCHAR}, ",
        "#{content,jdbcType=VARCHAR}, #{type,jdbcType=TINYINT}, #{realnamepublish,jdbcType=TINYINT}, ",
        "#{validityperiod,jdbcType=INTEGER}, #{status,jdbcType=TINYINT}, ",
        "#{questiontype,jdbcType=TINYINT}, #{viewnum,jdbcType=INTEGER}, ",
        "#{ansernum,jdbcType=INTEGER}, #{giftimg,jdbcType=VARCHAR}, ",
        "#{publishcompany,jdbcType=VARCHAR}, #{rewardbalance,jdbcType=REAL}, ",
        "#{createtime,jdbcType=VARCHAR})"
    })
    int insert(Question record);

    @InsertProvider(type=QuestionSqlProvider.class, method="insertSelective")
    int insertSelective(Question record);

    @Select({
        "select",
        "id, userid, productid, title, content, type, realnamepublish, validityperiod, ",
        "status, questiontype, viewnum, ansernum, giftimg, publishcompany, rewardbalance, ",
        "createtime",
        "from question",
        "where id = #{id,jdbcType=VARCHAR}"
    })
    @Results({
        @Result(column="id", property="id", jdbcType=JdbcType.VARCHAR, id=true),
        @Result(column="userid", property="userid", jdbcType=JdbcType.VARCHAR),
        @Result(column="productid", property="productid", jdbcType=JdbcType.VARCHAR),
        @Result(column="title", property="title", jdbcType=JdbcType.VARCHAR),
        @Result(column="content", property="content", jdbcType=JdbcType.VARCHAR),
        @Result(column="type", property="type", jdbcType=JdbcType.TINYINT),
        @Result(column="realnamepublish", property="realnamepublish", jdbcType=JdbcType.TINYINT),
        @Result(column="validityperiod", property="validityperiod", jdbcType=JdbcType.INTEGER),
        @Result(column="status", property="status", jdbcType=JdbcType.TINYINT),
        @Result(column="questiontype", property="questiontype", jdbcType=JdbcType.TINYINT),
        @Result(column="viewnum", property="viewnum", jdbcType=JdbcType.INTEGER),
        @Result(column="ansernum", property="ansernum", jdbcType=JdbcType.INTEGER),
        @Result(column="giftimg", property="giftimg", jdbcType=JdbcType.VARCHAR),
        @Result(column="publishcompany", property="publishcompany", jdbcType=JdbcType.VARCHAR),
        @Result(column="rewardbalance", property="rewardbalance", jdbcType=JdbcType.REAL),
        @Result(column="createtime", property="createtime", jdbcType=JdbcType.VARCHAR)
    })
    Question selectByPrimaryKey(String id);


    @Select({
            "select",
            "id, userid, productid, title, content, type, realnamepublish, validityperiod, ",
            "status, questiontype, viewnum, ansernum, giftimg, publishcompany, rewardbalance, ",
            "createtime",
            "from question",
            "where  userid = #{0} and type = #{1} ORDER BY createtime desc"
    })
    @Results({
            @Result(column="id", property="id", jdbcType=JdbcType.VARCHAR, id=true),
            @Result(column="userid", property="userid", jdbcType=JdbcType.VARCHAR),
            @Result(column="productid", property="productid", jdbcType=JdbcType.VARCHAR),
            @Result(column="title", property="title", jdbcType=JdbcType.VARCHAR),
            @Result(column="content", property="content", jdbcType=JdbcType.VARCHAR),
            @Result(column="type", property="type", jdbcType=JdbcType.TINYINT),
            @Result(column="realnamepublish", property="realnamepublish", jdbcType=JdbcType.TINYINT),
            @Result(column="validityperiod", property="validityperiod", jdbcType=JdbcType.INTEGER),
            @Result(column="status", property="status", jdbcType=JdbcType.TINYINT),
            @Result(column="questiontype", property="questiontype", jdbcType=JdbcType.TINYINT),
            @Result(column="viewnum", property="viewnum", jdbcType=JdbcType.INTEGER),
            @Result(column="ansernum", property="ansernum", jdbcType=JdbcType.INTEGER),
            @Result(column="giftimg", property="giftimg", jdbcType=JdbcType.VARCHAR),
            @Result(column="publishcompany", property="publishcompany", jdbcType=JdbcType.VARCHAR),
            @Result(column="rewardbalance", property="rewardbalance", jdbcType=JdbcType.REAL),
            @Result(column="createtime", property="createtime", jdbcType=JdbcType.VARCHAR)
    })
    List<Question> selectByTypeKey(String userid, byte type);


    @UpdateProvider(type=QuestionSqlProvider.class, method="updateByPrimaryKeySelective")
    int updateByPrimaryKeySelective(Question record);

    @Update({
        "update question",
        "set userid = #{userid,jdbcType=VARCHAR},",
          "productid = #{productid,jdbcType=VARCHAR},",
          "title = #{title,jdbcType=VARCHAR},",
          "content = #{content,jdbcType=VARCHAR},",
          "type = #{type,jdbcType=TINYINT},",
          "realnamepublish = #{realnamepublish,jdbcType=TINYINT},",
          "validityperiod = #{validityperiod,jdbcType=INTEGER},",
          "status = #{status,jdbcType=TINYINT},",
          "questiontype = #{questiontype,jdbcType=TINYINT},",
          "viewnum = #{viewnum,jdbcType=INTEGER},",
          "ansernum = #{ansernum,jdbcType=INTEGER},",
          "giftimg = #{giftimg,jdbcType=VARCHAR},",
          "publishcompany = #{publishcompany,jdbcType=VARCHAR},",
          "rewardbalance = #{rewardbalance,jdbcType=REAL},",
          "createtime = #{createtime,jdbcType=VARCHAR}",
        "where id = #{id,jdbcType=VARCHAR}"
    })
    int updateByPrimaryKey(Question record);
}