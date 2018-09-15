package com.liwen.wprogram.mapper;

import com.liwen.wprogram.model.FileInfo;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.InsertProvider;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.annotations.UpdateProvider;
import org.apache.ibatis.type.JdbcType;

public interface FileInfoMapper {
    @Delete({
        "delete from fileinfo",
        "where id = #{id,jdbcType=INTEGER}"
    })
    int deleteByPrimaryKey(Integer id);

    @Insert({
        "insert into fileinfo (id, filename, ",
        "address, cardno)",
        "values (#{id,jdbcType=INTEGER}, #{filename,jdbcType=VARCHAR}, ",
        "#{address,jdbcType=VARCHAR}, #{cardno,jdbcType=INTEGER})"
    })
    int insert(FileInfo record);

    @InsertProvider(type=FileInfoSqlProvider.class, method="insertSelective")
    int insertSelective(FileInfo record);

    @Select({
        "select",
        "id, filename, address, cardno",
        "from fileinfo",
        "where id = #{id,jdbcType=INTEGER}"
    })
    @Results({
        @Result(column="id", property="id", jdbcType=JdbcType.INTEGER, id=true),
        @Result(column="filename", property="filename", jdbcType=JdbcType.VARCHAR),
        @Result(column="address", property="address", jdbcType=JdbcType.VARCHAR),
        @Result(column="cardno", property="cardno", jdbcType=JdbcType.INTEGER)
    })
    FileInfo selectByPrimaryKey(Integer id);

    @UpdateProvider(type=FileInfoSqlProvider.class, method="updateByPrimaryKeySelective")
    int updateByPrimaryKeySelective(FileInfo record);

    @Update({
        "update fileinfo",
        "set filename = #{filename,jdbcType=VARCHAR},",
          "address = #{address,jdbcType=VARCHAR},",
          "cardno = #{cardno,jdbcType=INTEGER}",
        "where id = #{id,jdbcType=INTEGER}"
    })
    int updateByPrimaryKey(FileInfo record);
}