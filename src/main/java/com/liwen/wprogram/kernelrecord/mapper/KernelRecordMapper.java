package com.liwen.wprogram.kernelrecord.mapper;

import com.liwen.wprogram.kernelrecord.model.KernelRecord;
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

public interface KernelRecordMapper {
    @Delete({
        "delete from kernelrecord",
        "where id = #{id,jdbcType=BIGINT}"
    })
    int deleteByPrimaryKey(Long id);

    @Insert({
        "insert into kernelrecord (id, userid, ",
        "title, rewardnum, ",
        "type, rewardtime, ",
        "createtime)",
        "values (#{id,jdbcType=BIGINT}, #{userid,jdbcType=BIGINT}, ",
        "#{title,jdbcType=VARCHAR}, #{rewardnum,jdbcType=INTEGER}, ",
        "#{type,jdbcType=TINYINT}, #{rewardtime,jdbcType=VARCHAR}, ",
        "#{createtime,jdbcType=VARCHAR})"
    })
    int insert(KernelRecord record);

    @InsertProvider(type=KernelRecordSqlProvider.class, method="insertSelective")
    int insertSelective(KernelRecord record);

    @Select({
        "select",
        "id, userid, title, rewardnum, type, rewardtime, createtime",
        "from kernelrecord",
        "where id = #{id,jdbcType=BIGINT}"
    })
    @Results({
        @Result(column="id", property="id", jdbcType=JdbcType.BIGINT, id=true),
        @Result(column="userid", property="userid", jdbcType=JdbcType.BIGINT),
        @Result(column="title", property="title", jdbcType=JdbcType.VARCHAR),
        @Result(column="rewardnum", property="rewardnum", jdbcType=JdbcType.INTEGER),
        @Result(column="type", property="type", jdbcType=JdbcType.TINYINT),
        @Result(column="rewardtime", property="rewardtime", jdbcType=JdbcType.VARCHAR),
        @Result(column="createtime", property="createtime", jdbcType=JdbcType.VARCHAR)
    })
    KernelRecord selectByPrimaryKey(Long id);

    @Select({
            "select",
            "id, userid, title, rewardnum, type, rewardtime, createtime",
            "from kernelrecord",
            "where userid = #{userid,jdbcType=BIGINT}"
    })
    @Results({
            @Result(column="id", property="id", jdbcType=JdbcType.BIGINT, id=true),
            @Result(column="userid", property="userid", jdbcType=JdbcType.BIGINT),
            @Result(column="title", property="title", jdbcType=JdbcType.VARCHAR),
            @Result(column="rewardnum", property="rewardnum", jdbcType=JdbcType.INTEGER),
            @Result(column="type", property="type", jdbcType=JdbcType.TINYINT),
            @Result(column="rewardtime", property="rewardtime", jdbcType=JdbcType.VARCHAR),
            @Result(column="createtime", property="createtime", jdbcType=JdbcType.VARCHAR)
    })
    List<KernelRecord> selectByUserIdyKey(Long id);

    @UpdateProvider(type=KernelRecordSqlProvider.class, method="updateByPrimaryKeySelective")
    int updateByPrimaryKeySelective(KernelRecord record);

    @Update({
        "update kernelrecord",
        "set userid = #{userid,jdbcType=BIGINT},",
          "title = #{title,jdbcType=VARCHAR},",
          "rewardnum = #{rewardnum,jdbcType=INTEGER},",
          "type = #{type,jdbcType=TINYINT},",
          "rewardtime = #{rewardtime,jdbcType=VARCHAR},",
          "createtime = #{createtime,jdbcType=VARCHAR}",
        "where id = #{id,jdbcType=BIGINT}"
    })
    int updateByPrimaryKey(KernelRecord record);
}