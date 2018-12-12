package com.company.store.service;

import com.company.store.domain.User;

public interface UserService {
    long checkUserName(String username);

    int saveUser(User user);

    int updateState(String code);
}
