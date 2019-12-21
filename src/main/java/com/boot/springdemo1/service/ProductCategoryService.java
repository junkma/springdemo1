package com.boot.springdemo1.service;



import com.boot.springdemo1.pojo.ProductCategory;

import java.util.List;

/**
 * @author junkma
 * @date 2019-11-28-17:37
 **/
public interface ProductCategoryService {
    List<ProductCategory> selectParentCategorys();
    int deleteByPrimaryKey(Integer id);
    int insertSelective(ProductCategory record);

    ProductCategory selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ProductCategory record);


}
