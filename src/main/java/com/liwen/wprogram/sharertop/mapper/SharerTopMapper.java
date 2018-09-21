package com.liwen.wprogram.sharertop.mapper;

import com.liwen.wprogram.sharertop.model.SharerTop;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.InsertProvider;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.annotations.UpdateProvider;
import org.apache.ibatis.type.JdbcType;

public interface SharerTopMapper {
    @Delete({
        "delete from sharertop",
        "where id = #{id,jdbcType=BIGINT}"
    })
    int deleteByPrimaryKey(Long id);

    @Insert({
        "insert into sharertop (id, userid, ",
        "headimg, visits, ",
        "isfriend)",
        "values (#{id,jdbcType=BIGINT}, #{userid,jdbcType=BIGINT}, ",
        "#{headimg,jdbcType=VARCHAR}, #{visits,jdbcType=INTEGER}, ",
        "#{isfriend,jdbcType=TINYINT})"
    })
    int insert(SharerTop record);

    @InsertProvider(type=SharerTopSqlProvider.class, method="insertSelective")
    int insertSelective(SharerTop record);

    @Select({
        "select",
        "id, userid, headimg, visits, isfriend",
        "from sharertop",
        "where id = #{id,jdbcType=BIGINT}"
    })
    @Results({
        @Result(column="id", property="id", jdbcType=JdbcType.BIGINT, id=true),
        @Result(column="userid", property="userid", jdbcType=JdbcType.BIGINT),
        @Result(column="headimg", property="headimg", jdbcType=JdbcType.VARCHAR),
        @Result(column="visits", property="visits", jdbcType=JdbcType.INTEGER),
        @Result(column="isfriend", property="isfriend", jdbcType=JdbcType.TINYINT)
    })
    SharerTop selectByPrimaryKey(Long id);

    @UpdateProvider(type=SharerTopSqlProvider.class, method="updateByPrimaryKeySelective")
    int updateByPrimaryKeySelective(SharerTop record);

    @Update({
        "update sharertop",
        "set userid = #{userid,jdbcType=BIGINT},",
          "headimg = #{headimg,jdbcType=VARCHAR},",
          "visits = #{visits,jdbcType=INTEGER},",
          "isfriend = #{isfriend,jdbcType=TINYINT}",
        "where id = #{id,jdbcType=BIGINT}"
    })
    int updateByPrimaryKey(SharerTop record);
}