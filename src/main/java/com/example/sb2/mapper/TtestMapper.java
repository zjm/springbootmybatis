package com.example.sb2.mapper;

import com.example.sb2.model.Ttest;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.InsertProvider;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.annotations.UpdateProvider;
import org.apache.ibatis.type.JdbcType;

public interface TtestMapper {
    @Delete({
        "delete from t_test",
        "where id = #{id,jdbcType=INTEGER}"
    })
    int deleteByPrimaryKey(Integer id);

    @Insert({
        "insert into t_test (id, sname)",
        "values (#{id,jdbcType=INTEGER}, #{sname,jdbcType=VARCHAR})"
    })
    int insert(Ttest record);

    @InsertProvider(type=TtestSqlProvider.class, method="insertSelective")
    int insertSelective(Ttest record);

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
    Ttest selectByPrimaryKey(Integer id);

    @UpdateProvider(type=TtestSqlProvider.class, method="updateByPrimaryKeySelective")
    int updateByPrimaryKeySelective(Ttest record);

    @Update({
        "update t_test",
        "set sname = #{sname,jdbcType=VARCHAR}",
        "where id = #{id,jdbcType=INTEGER}"
    })
    int updateByPrimaryKey(Ttest record);
}