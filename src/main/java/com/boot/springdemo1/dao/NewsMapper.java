package com.boot.springdemo1.dao;



import com.boot.springdemo1.pojo.News;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
@Repository
@Mapper
public interface NewsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(News record);

    int insertSelective(News record);

    News selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(News record);

    int updateByPrimaryKey(News record);

    //查询所有新闻
    List<News> selectNews();

    int PageCount();
    List<News> findByPage(HashMap<String, Object> map);
}