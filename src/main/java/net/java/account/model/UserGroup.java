package net.java.account.model;

import javax.persistence.*;

@Entity
@Table(name = "t_user_groups")
public class UserGroup {
    private Long id;
    private String name;    

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }    
}
