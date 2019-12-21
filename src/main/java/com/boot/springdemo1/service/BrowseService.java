package com.boot.springdemo1.service;



import com.boot.springdemo1.pojo.Browse;

import java.util.List;

/**
 * @author junkma
 * @date 2019-12-02-17:19
 **/
public interface BrowseService {
    int insertSelective(Browse record);
    List<Browse> selectByUserId(int userid);

    //查看是否有浏览过的商品
    Browse selectByProductId(int productid);

    int updateByPrimaryKeySelective(Browse record);
}
