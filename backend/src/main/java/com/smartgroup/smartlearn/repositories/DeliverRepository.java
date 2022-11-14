package com.smartgroup.smartlearn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.smartgroup.smartlearn.entities.Deliver;

@Repository
public interface DeliverRepository extends JpaRepository<Deliver, Long> {

}
