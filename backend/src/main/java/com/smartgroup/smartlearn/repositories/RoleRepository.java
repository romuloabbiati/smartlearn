package com.smartgroup.smartlearn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.smartgroup.smartlearn.entities.Role;

@Repository
public interface RoleRepository extends JpaRepository<Role, Long> {

}
