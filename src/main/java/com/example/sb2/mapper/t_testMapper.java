package com.example.sb2.mapper;

import com.example.sb2.model.t_test;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.InsertProvider;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.annotations.UpdateProvider;
import org.apache.ibatis.type.JdbcType;

public interface t_testMapper {
    @Delete({
        "delete from t_test",
        "where id = #{id,jdbcType=INTEGER}"
    })
    int deleteByPrimaryKey(Integer id);

    @Insert({
        "insert into t_test (id, sname)",
        "values (#{id,jdbcType=INTEGER}, #{sname,jdbcType=VARCHAR})"
    })
    int insert(t_test record);

    @InsertProvider(type=t_testSqlProvider.class, method="insertSelective")
    int insertSelective(t_test record);

    @Select({
        "select",
        "id, sname",
        "from t_test",
        "where id = #{id,jdbcType=INTEGER}"
    })
    @Results({
        @Result(column="id", property="id", jdbcType=JdbcType.INTEGER, id=true),
        @Result(column="sname", property="sname", jdbcType=JdbcType.VARCHAR)
    })
    t_test selectByPrimaryKey(Integer id);

    @UpdateProvider(type=t_testSqlProvider.class, method="updateByPrimaryKeySelective")
    int updateByPrimaryKeySelective(t_test record);

    @Update({
        "update t_test",
        "set sname = #{sname,jdbcType=VARCHAR}",
        "where id = #{id,jdbcType=INTEGER}"
    })
    int updateByPrimaryKey(t_test record);
}