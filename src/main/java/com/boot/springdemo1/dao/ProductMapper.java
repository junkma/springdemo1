package com.boot.springdemo1.dao;


import com.boot.springdemo1.pojo.Product;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
@Repository
@Mapper
public interface ProductMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Product record);

    int insertSelective(Product record);

    Product selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Product record);

    int updateByPrimaryKey(Product record);

    //查询所有商品
    List<Product> selectAllProducts();
    //分页查询所有商品
    List<Product> selectAllByPage(int page);

    //根据catechildid查询商品
    List<Product> selectbyChildId(int catechildid);

    //分页查询商品
    List<Product> selectByPage(@Param("childid") int catechildid, @Param("page") int page);

    int PageCount();
    List<Product> findByPage(HashMap<String, Object> map);
}