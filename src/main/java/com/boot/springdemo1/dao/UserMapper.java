package com.boot.springdemo1.dao;


import com.boot.springdemo1.pojo.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
@Repository
@Mapper
public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);
//注册用户
    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
//登录验证
    User selectLogin(@Param("name") String loginname, @Param("pwd") String password);

    int PageCount();
    List<User> findByPage(HashMap<String, Object> map);

    List<User> selectAll();
}