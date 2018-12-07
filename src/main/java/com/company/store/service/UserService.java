package com.company.store.service;

import com.company.store.domain.User;

public interface UserService {
    long checkUserName(String username);

    void saveUser(User user);
}
