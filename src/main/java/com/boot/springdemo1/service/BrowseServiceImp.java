package com.boot.springdemo1.service;


import com.boot.springdemo1.dao.BrowseMapper;
import com.boot.springdemo1.pojo.Browse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author junkma
 * @date 2019-12-02-17:19
 **/
@Service
public class BrowseServiceImp implements BrowseService {
    @Autowired
    BrowseMapper browseMapper;
    @Override
    public int insertSelective(Browse record) {
        return browseMapper.insertSelective(record);
    }

    @Override
    public List<Browse> selectByUserId(int userid) {
        return browseMapper.selectByUserId(userid);
    }

    @Override
    public Browse selectByProductId(int productid) {
        return browseMapper.selectByProductId(productid);
    }

    @Override
    public int updateByPrimaryKeySelective(Browse record) {
        return browseMapper.updateByPrimaryKeySelective(record);
    }
}
