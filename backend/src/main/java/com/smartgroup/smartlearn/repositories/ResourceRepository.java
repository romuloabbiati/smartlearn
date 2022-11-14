package com.smartgroup.smartlearn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.smartgroup.smartlearn.entities.Resource;

@Repository
public interface ResourceRepository extends JpaRepository<Resource, Long> {

}
