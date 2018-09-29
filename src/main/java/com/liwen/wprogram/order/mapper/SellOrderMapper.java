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
        "where id = #{id,jdbcType=VARCHAR}"
    })
    int deleteByPrimaryKey(String id);

    @Insert({
        "insert into sellorder (id, userid, ",
        "addressid, productid, ",
        "price, totalcost, realcost, ",
        "buynum, status, ",
        "sendtype, createtime, ",
        "paytime, paysuccesstime)",
        "values (#{id,jdbcType=VARCHAR}, #{userid,jdbcType=VARCHAR}, ",
        "#{addressid,jdbcType=VARCHAR}, #{productid,jdbcType=VARCHAR}, ",
        "#{price,jdbcType=REAL}, #{totalcost,jdbcType=REAL}, #{realcost,jdbcType=REAL}, ",
        "#{buynum,jdbcType=INTEGER}, #{status,jdbcType=TINYINT}, ",
        "#{sendtype,jdbcType=TINYINT}, #{createtime,jdbcType=VARCHAR}, ",
        "#{paytime,jdbcType=VARCHAR}, #{paysuccesstime,jdbcType=VARCHAR})"
    })
    int insert(SellOrder record);

    @InsertProvider(type=SellOrderSqlProvider.class, method="insertSelective")
    int insertSelective(SellOrder record);

    @Select({
        "select",
        "id, userid, addressid, productid, price, totalcost, realcost, buynum, status, ",
        "sendtype, createtime, paytime, paysuccesstime",
        "from sellorder",
        "where id = #{id,jdbcType=VARCHAR}"
    })
    @Results({
        @Result(column="id", property="id", jdbcType=JdbcType.VARCHAR, id=true),
        @Result(column="userid", property="userid", jdbcType=JdbcType.VARCHAR),
        @Result(column="addressid", property="addressid", jdbcType=JdbcType.VARCHAR),
        @Result(column="productid", property="productid", jdbcType=JdbcType.VARCHAR),
        @Result(column="price", property="price", jdbcType=JdbcType.REAL),
        @Result(column="totalcost", property="totalcost", jdbcType=JdbcType.REAL),
        @Result(column="realcost", property="realcost", jdbcType=JdbcType.REAL),
        @Result(column="buynum", property="buynum", jdbcType=JdbcType.INTEGER),
        @Result(column="status", property="status", jdbcType=JdbcType.TINYINT),
        @Result(column="sendtype", property="sendtype", jdbcType=JdbcType.TINYINT),
        @Result(column="createtime", property="createtime", jdbcType=JdbcType.VARCHAR),
        @Result(column="paytime", property="paytime", jdbcType=JdbcType.VARCHAR),
        @Result(column="paysuccesstime", property="paysuccesstime", jdbcType=JdbcType.VARCHAR)
    })
    SellOrder selectByPrimaryKey(String id);


    @Select({
            "select",
            "id, userid, addressid, productid, price, totalcost, realcost, buynum, status, ",
            "sendtype, createtime, paytime, paysuccesstime",
            "from sellorder",
            "where userid = #{userid,jdbcType=VARCHAR}"
    })
    @Results({
            @Result(column="id", property="id", jdbcType=JdbcType.VARCHAR, id=true),
            @Result(column="userid", property="userid", jdbcType=JdbcType.VARCHAR),
            @Result(column="addressid", property="addressid", jdbcType=JdbcType.VARCHAR),
            @Result(column="productid", property="productid", jdbcType=JdbcType.VARCHAR),
            @Result(column="price", property="price", jdbcType=JdbcType.REAL),
            @Result(column="totalcost", property="totalcost", jdbcType=JdbcType.REAL),
            @Result(column="realcost", property="realcost", jdbcType=JdbcType.REAL),
            @Result(column="buynum", property="buynum", jdbcType=JdbcType.INTEGER),
            @Result(column="status", property="status", jdbcType=JdbcType.TINYINT),
            @Result(column="sendtype", property="sendtype", jdbcType=JdbcType.TINYINT),
            @Result(column="createtime", property="createtime", jdbcType=JdbcType.VARCHAR),
            @Result(column="paytime", property="paytime", jdbcType=JdbcType.VARCHAR),
            @Result(column="paysuccesstime", property="paysuccesstime", jdbcType=JdbcType.VARCHAR)
    })
    List<SellOrder> selectByUserid(String userid);


    @UpdateProvider(type=SellOrderSqlProvider.class, method="updateByPrimaryKeySelective")
    int updateByPrimaryKeySelective(SellOrder record);

    @Update({
        "update sellorder",
        "set userid = #{userid,jdbcType=VARCHAR},",
          "addressid = #{addressid,jdbcType=VARCHAR},",
          "productid = #{productid,jdbcType=VARCHAR},",
          "price = #{price,jdbcType=REAL},",
          "totalcost = #{totalcost,jdbcType=REAL},",
          "realcost = #{realcost,jdbcType=REAL},",
          "buynum = #{buynum,jdbcType=INTEGER},",
          "status = #{status,jdbcType=TINYINT},",
          "sendtype = #{sendtype,jdbcType=TINYINT},",
          "createtime = #{createtime,jdbcType=VARCHAR},",
          "paytime = #{paytime,jdbcType=VARCHAR},",
          "paysuccesstime = #{paysuccesstime,jdbcType=VARCHAR}",
        "where id = #{id,jdbcType=VARCHAR}"
    })
    int updateByPrimaryKey(SellOrder record);
}