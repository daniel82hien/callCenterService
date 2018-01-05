package net.java.account.service;

import net.java.account.model.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
    User findByUsernameAndPassword(String username, String password);
}
