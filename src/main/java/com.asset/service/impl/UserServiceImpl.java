package com.asset.service.impl;

import com.asset.entity.User;

import com.asset.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service(value = "UserService")
public class UserServiceImpl implements UserService {

    @Resource
    private com.asset.dao.UserDao UserDao;



    public User selectUser(long username) {
        return this.UserDao.selectUser(username);
    }
}