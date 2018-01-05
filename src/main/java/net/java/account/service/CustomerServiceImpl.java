package net.java.account.service;

import net.java.account.model.Customer;
import net.java.account.repository.CustomerRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.HashSet;

@Service
public class CustomerServiceImpl implements CustomerService {
    @Autowired
    private CustomerRepository customerRepository;
    @Autowired
    
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public void save(Customer customer) {
    	customer.setPassword(bCryptPasswordEncoder.encode(customer.getPassword()));        
    	customerRepository.save(customer);
    }

    @Override
    public Customer findByName(String name) {
        return customerRepository.findByName(name);
    }
    
    @Override
    public Customer findByPhone(String phone) {
        return customerRepository.findByPhone(phone);
    }
    
    @Override
    public Customer findByEmail(String email) {
        return customerRepository.findByEmail(email);
    }
}
