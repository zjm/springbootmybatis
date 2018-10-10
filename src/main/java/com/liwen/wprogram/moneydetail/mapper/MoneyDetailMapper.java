package com.liwen.wprogram.moneydetail.mapper;

import com.liwen.wprogram.moneydetail.model.MoneyDetail;
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

public interface MoneyDetailMapper {
    @Delete({
        "delete from moneydetail",
        "where id = #{id,jdbcType=VARCHAR}"
    })
    int deleteByPrimaryKey(String id);

    @Insert({
        "insert into moneydetail (id, userid, ",
        "type, status, moneynum, ",
        "title, note, createtime, ",
        "successtime, failtime, ",
        "startpaytime)",
        "values (#{id,jdbcType=VARCHAR}, #{userid,jdbcType=VARCHAR}, ",
        "#{type,jdbcType=TINYINT}, #{status,jdbcType=TINYINT}, #{moneynum,jdbcType=VARCHAR}, ",
        "#{title,jdbcType=VARCHAR}, #{note,jdbcType=VARCHAR}, #{createtime,jdbcType=VARCHAR}, ",
        "#{successtime,jdbcType=VARCHAR}, #{failtime,jdbcType=VARCHAR}, ",
        "#{startpaytime,jdbcType=VARCHAR})"
    })
    int insert(MoneyDetail record);

    @InsertProvider(type=MoneyDetailSqlProvider.class, method="insertSelective")
    int insertSelective(MoneyDetail record);

    @Select({
        "select",
        "id, userid, type, status, moneynum, title, note, createtime, successtime, failtime, ",
        "startpaytime",
        "from moneydetail",
        "where id = #{id,jdbcType=VARCHAR}"
    })
    @Results({
        @Result(column="id", property="id", jdbcType=JdbcType.VARCHAR, id=true),
        @Result(column="userid", property="userid", jdbcType=JdbcType.VARCHAR),
        @Result(column="type", property="type", jdbcType=JdbcType.TINYINT),
        @Result(column="status", property="status", jdbcType=JdbcType.TINYINT),
        @Result(column="moneynum", property="moneynum", jdbcType=JdbcType.VARCHAR),
        @Result(column="title", property="title", jdbcType=JdbcType.VARCHAR),
        @Result(column="note", property="note", jdbcType=JdbcType.VARCHAR),
        @Result(column="createtime", property="createtime", jdbcType=JdbcType.VARCHAR),
        @Result(column="successtime", property="successtime", jdbcType=JdbcType.VARCHAR),
        @Result(column="failtime", property="failtime", jdbcType=JdbcType.VARCHAR),
        @Result(column="startpaytime", property="startpaytime", jdbcType=JdbcType.VARCHAR)
    })
    MoneyDetail selectByPrimaryKey(String id);

    @Select({
            "select",
            "id, userid, type, status, moneynum, title, note, createtime, successtime, failtime, ",
            "startpaytime",
            "from moneydetail",
            "where userid = #{userid,jdbcType=VARCHAR}"
    })
    @Results({
            @Result(column="id", property="id", jdbcType=JdbcType.VARCHAR, id=true),
            @Result(column="userid", property="userid", jdbcType=JdbcType.VARCHAR),
            @Result(column="type", property="type", jdbcType=JdbcType.TINYINT),
            @Result(column="status", property="status", jdbcType=JdbcType.TINYINT),
            @Result(column="moneynum", property="moneynum", jdbcType=JdbcType.VARCHAR),
            @Result(column="title", property="title", jdbcType=JdbcType.VARCHAR),
            @Result(column="note", property="note", jdbcType=JdbcType.VARCHAR),
            @Result(column="createtime", property="createtime", jdbcType=JdbcType.VARCHAR),
            @Result(column="successtime", property="successtime", jdbcType=JdbcType.VARCHAR),
            @Result(column="failtime", property="failtime", jdbcType=JdbcType.VARCHAR),
            @Result(column="startpaytime", property="startpaytime", jdbcType=JdbcType.VARCHAR)
    })
    List<MoneyDetail> selectByUseridKey(String userid);

    @UpdateProvider(type=MoneyDetailSqlProvider.class, method="updateByPrimaryKeySelective")
    int updateByPrimaryKeySelective(MoneyDetail record);

    @Update({
        "update moneydetail",
        "set userid = #{userid,jdbcType=VARCHAR},",
          "type = #{type,jdbcType=TINYINT},",
          "status = #{status,jdbcType=TINYINT},",
          "moneynum = #{moneynum,jdbcType=VARCHAR},",
          "title = #{title,jdbcType=VARCHAR},",
          "note = #{note,jdbcType=VARCHAR},",
          "createtime = #{createtime,jdbcType=VARCHAR},",
          "successtime = #{successtime,jdbcType=VARCHAR},",
          "failtime = #{failtime,jdbcType=VARCHAR},",
          "startpaytime = #{startpaytime,jdbcType=VARCHAR}",
        "where id = #{id,jdbcType=VARCHAR}"
    })
    int updateByPrimaryKey(MoneyDetail record);
}