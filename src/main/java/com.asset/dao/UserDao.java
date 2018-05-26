package com.asset.dao;

import com.asset.entity.User;

public interface UserDao {
    /**
     * 添加用户实体
     * @param username
     * @return
     */
    User selectUser(long username);

}