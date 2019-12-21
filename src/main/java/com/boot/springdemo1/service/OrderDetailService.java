package com.boot.springdemo1.service;


import com.boot.springdemo1.pojo.OrderDetail;

/**
 * @author junkma
 * @date 2019-12-02-15:33
 **/
public interface OrderDetailService {
    int insertSelective(OrderDetail record);
}
