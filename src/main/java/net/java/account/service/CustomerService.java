package net.java.account.service;

import net.java.account.model.Customer;

public interface CustomerService {
    void save(Customer customer);

    Customer findByName(String name);
    Customer findByPhone(String phone);
    Customer findByEmail(String email);
}
