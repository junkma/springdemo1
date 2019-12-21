package com.boot.springdemo1.service;


import com.boot.springdemo1.dao.OrderDetailMapper;
import com.boot.springdemo1.pojo.OrderDetail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author junkma
 * @date 2019-12-02-15:33
 **/
@Service
public class OrderDetailServiceImp implements OrderDetailService {
    @Autowired
    OrderDetailMapper orderDetailMapper;
    @Override
    public int insertSelective(OrderDetail record) {
        return orderDetailMapper.insertSelective(record);
    }
}
