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

import java.util.List;

public interface SellProductMapper {
    @Delete({
        "delete from sellproduct",
        "where id = #{id,jdbcType=VARCHAR}"
    })
    int deleteByPrimaryKey(String id);

    @Insert({
        "insert into sellproduct (id, productname, ",
        "price, kernel, thumbnail, ",
        "detailimg, remainingnum, ",
        "totalnum, createtime)",
        "values (#{id,jdbcType=VARCHAR}, #{productname,jdbcType=VARCHAR}, ",
        "#{price,jdbcType=REAL}, #{kernel,jdbcType=INTEGER}, #{thumbnail,jdbcType=VARCHAR}, ",
        "#{detailimg,jdbcType=VARCHAR}, #{remainingnum,jdbcType=INTEGER}, ",
        "#{totalnum,jdbcType=INTEGER}, #{createtime,jdbcType=VARCHAR})"
    })
    int insert(SellProduct record);

    @InsertProvider(type=SellProductSqlProvider.class, method="insertSelective")
    int insertSelective(SellProduct record);

    @Select({
            "select",
            "id, productname, price, kernel, thumbnail, detailimg, remainingnum, totalnum, ",
            "createtime",
            "from sellproduct",
            "where id = #{id,jdbcType=VARCHAR}"
    })
    @Results({
            @Result(column="id", property="id", jdbcType=JdbcType.VARCHAR, id=true),
            @Result(column="productname", property="productname", jdbcType=JdbcType.VARCHAR),
            @Result(column="price", property="price", jdbcType=JdbcType.REAL),
            @Result(column="kernel", property="kernel", jdbcType=JdbcType.INTEGER),
            @Result(column="thumbnail", property="thumbnail", jdbcType=JdbcType.VARCHAR),
            @Result(column="detailimg", property="detailimg", jdbcType=JdbcType.VARCHAR),
            @Result(column="remainingnum", property="remainingnum", jdbcType=JdbcType.INTEGER),
            @Result(column="totalnum", property="totalnum", jdbcType=JdbcType.INTEGER),
            @Result(column="createtime", property="createtime", jdbcType=JdbcType.VARCHAR)
    })
    SellProduct selectByPrimaryKey(String id);



    @Select({
            "select",
            "id, productname, price, kernel, thumbnail, detailimg, remainingnum, totalnum, ",
            "createtime",
            "from sellproduct"
    })
    @Results({
            @Result(column="id", property="id", jdbcType=JdbcType.VARCHAR, id=true),
            @Result(column="productname", property="productname", jdbcType=JdbcType.VARCHAR),
            @Result(column="price", property="price", jdbcType=JdbcType.REAL),
            @Result(column="kernel", property="kernel", jdbcType=JdbcType.INTEGER),
            @Result(column="thumbnail", property="thumbnail", jdbcType=JdbcType.VARCHAR),
            @Result(column="detailimg", property="detailimg", jdbcType=JdbcType.VARCHAR),
            @Result(column="remainingnum", property="remainingnum", jdbcType=JdbcType.INTEGER),
            @Result(column="totalnum", property="totalnum", jdbcType=JdbcType.INTEGER),
            @Result(column="createtime", property="createtime", jdbcType=JdbcType.VARCHAR)
    })
    List<SellProduct> selectAll();


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
          "totalnum = #{totalnum,jdbcType=INTEGER},",
          "createtime = #{createtime,jdbcType=VARCHAR}",
        "where id = #{id,jdbcType=VARCHAR}"
    })
    int updateByPrimaryKey(SellProduct record);
}