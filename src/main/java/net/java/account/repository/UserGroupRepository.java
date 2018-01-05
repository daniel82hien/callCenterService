package net.java.account.repository;

import net.java.account.model.UserGroup;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserGroupRepository extends JpaRepository<UserGroup, Long>{
	
}
