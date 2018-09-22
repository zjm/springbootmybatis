package com.liwen.wprogram.order.mapper;

import com.liwen.wprogram.order.model.SellOrder;
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

public interface SellOrderMapper {
    @Delete({
        "delete from sellorder",
        "where id = #{id,jdbcType=BIGINT}"
    })
    int deleteByPrimaryKey(Long id);

    @Insert({
        "insert into sellorder (id, userid, ",
        "addressid, productid, ",
        "buynum, status, ",
        "sendtype, createtime)",
        "values (#{id,jdbcType=BIGINT}, #{userid,jdbcType=BIGINT}, ",
        "#{addressid,jdbcType=BIGINT}, #{productid,jdbcType=BIGINT}, ",
        "#{buynum,jdbcType=INTEGER}, #{status,jdbcType=TINYINT}, ",
        "#{sendtype,jdbcType=TINYINT}, #{createtime,jdbcType=VARCHAR})"
    })
    int insert(SellOrder record);

    @InsertProvider(type=SellOrderSqlProvider.class, method="insertSelective")
    int insertSelective(SellOrder record);

    @Select({
        "select",
        "id, userid, addressid, productid, buynum, status, sendtype, createtime",
        "from sellorder",
        "where id = #{id,jdbcType=BIGINT}"
    })
    @Results({
        @Result(column="id", property="id", jdbcType=JdbcType.BIGINT, id=true),
        @Result(column="userid", property="userid", jdbcType=JdbcType.BIGINT),
        @Result(column="addressid", property="addressid", jdbcType=JdbcType.BIGINT),
        @Result(column="productid", property="productid", jdbcType=JdbcType.BIGINT),
        @Result(column="buynum", property="buynum", jdbcType=JdbcType.INTEGER),
        @Result(column="status", property="status", jdbcType=JdbcType.TINYINT),
        @Result(column="sendtype", property="sendtype", jdbcType=JdbcType.TINYINT),
        @Result(column="createtime", property="createtime", jdbcType=JdbcType.VARCHAR)
    })
    SellOrder selectByPrimaryKey(Long id);

    @Select({
            "select",
            "id, userid, addressid, productid, buynum, status, sendtype, createtime",
            "from sellorder",
            "where userid = #{userid,jdbcType=BIGINT}"
    })
    @Results({
            @Result(column="id", property="id", jdbcType=JdbcType.BIGINT, id=true),
            @Result(column="userid", property="userid", jdbcType=JdbcType.BIGINT),
            @Result(column="addressid", property="addressid", jdbcType=JdbcType.BIGINT),
            @Result(column="productid", property="productid", jdbcType=JdbcType.BIGINT),
            @Result(column="buynum", property="buynum", jdbcType=JdbcType.INTEGER),
            @Result(column="status", property="status", jdbcType=JdbcType.TINYINT),
            @Result(column="sendtype", property="sendtype", jdbcType=JdbcType.TINYINT),
            @Result(column="createtime", property="createtime", jdbcType=JdbcType.VARCHAR)
    })
    List<SellOrder> selectByUseridKey(Long userid);

    @UpdateProvider(type=SellOrderSqlProvider.class, method="updateByPrimaryKeySelective")
    int updateByPrimaryKeySelective(SellOrder record);

    @Update({
        "update sellorder",
        "set userid = #{userid,jdbcType=BIGINT},",
          "addressid = #{addressid,jdbcType=BIGINT},",
          "productid = #{productid,jdbcType=BIGINT},",
          "buynum = #{buynum,jdbcType=INTEGER},",
          "status = #{status,jdbcType=TINYINT},",
          "sendtype = #{sendtype,jdbcType=TINYINT},",
          "createtime = #{createtime,jdbcType=VARCHAR}",
        "where id = #{id,jdbcType=BIGINT}"
    })
    int updateByPrimaryKey(SellOrder record);
}