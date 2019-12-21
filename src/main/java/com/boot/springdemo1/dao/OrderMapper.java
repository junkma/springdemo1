package com.boot.springdemo1.dao;


import com.boot.springdemo1.pojo.Order;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
@Repository
@Mapper
public interface OrderMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Order record);

    int insertSelective(Order record);

    Order selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Order record);

    int updateByPrimaryKey(Order record);

    Order selectByTime();

    int PageCount();
    List<Order> findByPage(HashMap<String, Object> map);
    List<Order> selectby(@Param("serialnumber") String serialnumber, @Param("username") String username);
}