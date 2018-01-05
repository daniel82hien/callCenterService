package net.java.account.repository;

import net.java.account.model.Customer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomerRepository extends JpaRepository<Customer, Long> {
	Customer findByName(String name);
	Customer findByPhone(String phone);
	Customer findByEmail(String email);
}
