package com.liwen.wprogram.mapper;

import com.liwen.wprogram.model.RemoteTest;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.InsertProvider;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.annotations.UpdateProvider;
import org.apache.ibatis.type.JdbcType;

public interface RemoteTestMapper {
    @Delete({
        "delete from remotetest",
        "where id = #{id,jdbcType=INTEGER}"
    })
    int deleteByPrimaryKey(Integer id);

    @Insert({
        "insert into remotetest (id, testname)",
        "values (#{id,jdbcType=INTEGER}, #{testname,jdbcType=VARCHAR})"
    })
    int insert(RemoteTest record);

    @InsertProvider(type=RemoteTestSqlProvider.class, method="insertSelective")
    int insertSelective(RemoteTest record);

    @Select({
        "select",
        "id, testname",
        "from remotetest",
        "where id = #{id,jdbcType=INTEGER}"
    })
    @Results({
        @Result(column="id", property="id", jdbcType=JdbcType.INTEGER, id=true),
        @Result(column="testname", property="testname", jdbcType=JdbcType.VARCHAR)
    })
    RemoteTest selectByPrimaryKey(Integer id);

    @UpdateProvider(type=RemoteTestSqlProvider.class, method="updateByPrimaryKeySelective")
    int updateByPrimaryKeySelective(RemoteTest record);

    @Update({
        "update remotetest",
        "set testname = #{testname,jdbcType=VARCHAR}",
        "where id = #{id,jdbcType=INTEGER}"
    })
    int updateByPrimaryKey(RemoteTest record);
}