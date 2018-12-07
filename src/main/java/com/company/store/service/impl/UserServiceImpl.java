/**
 * FileName: UserServiceImpl
 * Author:   shikangshuai
 * Date:     2018/12/7 10:46
 * Description:
 */
package com.company.store.service.impl;

import com.company.store.dao.UserMapper;
import com.company.store.domain.User;
import com.company.store.domain.UserExample;
import com.company.store.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 〈一句话功能简述〉<br> 
 *
 * @author shikangshuai
 * @create 2018/12/7
 */
@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;
    /**
     * 功能描述: <br>
     * 〈注册前检查用户名是否存在〉
     * @return:Long
     * @Author:shikangshuai
     * @Date: 2018/12/7 11:02
     */
    @Override
    public long checkUserName(String username) {
        UserExample example = new UserExample();
        UserExample.Criteria criteria = example.createCriteria();
        criteria.andUsernameEqualTo(username);
        long count = userMapper.countByExample(example);
        return count;
    }

    @Override
    public void saveUser(User user) {
        userMapper.insertSelective(user);
    }
}
