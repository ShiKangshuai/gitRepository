/**
 * FileName: CategotyServiceImpl
 * Author:   shikangshuai
 * Date:     2018/12/13 8:47
 * Description:
 */
package com.company.store.service.impl;

import com.company.store.dao.CategotyMapper;
import com.company.store.domain.Categoty;
import com.company.store.domain.CategotyExample;
import com.company.store.service.CategotyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 〈一句话功能简述〉<br> 
 *
 * @author shikangshuai
 * @create 2018/12/13
 */
@Service("categotyService")
public class CategotyServiceImpl implements CategotyService {
    @Autowired
    private CategotyMapper categotyMapper;

    @Override
    public List<Categoty> findCategotyList() {
        CategotyExample example = new CategotyExample();
        CategotyExample.Criteria criteria = example.createCriteria();
        criteria.andCidIsNotNull();
        return categotyMapper.selectByExample(example);
    }
}
