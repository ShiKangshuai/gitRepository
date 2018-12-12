package com.company.store.service;

import com.company.store.domain.User;

import java.util.List;

public interface UserService {
    long checkUserName(String username);

    int saveUser(User user);

    int updateState(String code);

    List<User> getUser(User user);
}
