package com.boot.springdemo1.service;



import com.boot.springdemo1.pojo.News;
import com.boot.springdemo1.pojo.Page;

import java.util.List;

/**
 * @author junkma
 * @date 2019-11-28-17:11
 **/
public interface NewsService {
    List<News> selectNews();

    News selectByPrimaryKey(Integer id);

    int PageCount();
    Page<News> findByPage(int currentPage);
    int insertSelective(News news);
    int deleteByPrimaryKey(Integer id);
    int updateByPrimaryKeySelective(News news);




}
