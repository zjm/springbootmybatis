package com.liwen.wprogram.sellproduct.mapper;

import com.liwen.wprogram.sellproduct.model.SellProduct;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.InsertProvider;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.annotations.UpdateProvider;
import org.apache.ibatis.type.JdbcType;

public interface SellProductMapper {
    @Delete({
        "delete from sellproduct",
        "where id = #{id,jdbcType=BIGINT}"
    })
    int deleteByPrimaryKey(Long id);

    @Insert({
        "insert into sellproduct (id, productname, ",
        "price, kernel, thumbnail, ",
        "detailimg, remainingnum, ",
        "totalnum)",
        "values (#{id,jdbcType=BIGINT}, #{productname,jdbcType=VARCHAR}, ",
        "#{price,jdbcType=REAL}, #{kernel,jdbcType=INTEGER}, #{thumbnail,jdbcType=VARCHAR}, ",
        "#{detailimg,jdbcType=VARCHAR}, #{remainingnum,jdbcType=INTEGER}, ",
        "#{totalnum,jdbcType=INTEGER})"
    })
    int insert(SellProduct record);

    @InsertProvider(type=SellProductSqlProvider.class, method="insertSelective")
    int insertSelective(SellProduct record);

    @Select({
        "select",
        "id, productname, price, kernel, thumbnail, detailimg, remainingnum, totalnum",
        "from sellproduct",
        "where id = #{id,jdbcType=BIGINT}"
    })
    @Results({
        @Result(column="id", property="id", jdbcType=JdbcType.BIGINT, id=true),
        @Result(column="productname", property="productname", jdbcType=JdbcType.VARCHAR),
        @Result(column="price", property="price", jdbcType=JdbcType.REAL),
        @Result(column="kernel", property="kernel", jdbcType=JdbcType.INTEGER),
        @Result(column="thumbnail", property="thumbnail", jdbcType=JdbcType.VARCHAR),
        @Result(column="detailimg", property="detailimg", jdbcType=JdbcType.VARCHAR),
        @Result(column="remainingnum", property="remainingnum", jdbcType=JdbcType.INTEGER),
        @Result(column="totalnum", property="totalnum", jdbcType=JdbcType.INTEGER)
    })
    SellProduct selectByPrimaryKey(Long id);

    @UpdateProvider(type=SellProductSqlProvider.class, method="updateByPrimaryKeySelective")
    int updateByPrimaryKeySelective(SellProduct record);

    @Update({
        "update sellproduct",
        "set productname = #{productname,jdbcType=VARCHAR},",
          "price = #{price,jdbcType=REAL},",
          "kernel = #{kernel,jdbcType=INTEGER},",
          "thumbnail = #{thumbnail,jdbcType=VARCHAR},",
          "detailimg = #{detailimg,jdbcType=VARCHAR},",
          "remainingnum = #{remainingnum,jdbcType=INTEGER},",
          "totalnum = #{totalnum,jdbcType=INTEGER}",
        "where id = #{id,jdbcType=BIGINT}"
    })
    int updateByPrimaryKey(SellProduct record);
}