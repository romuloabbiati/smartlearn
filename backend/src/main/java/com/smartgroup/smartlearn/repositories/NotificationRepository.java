package com.smartgroup.smartlearn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.smartgroup.smartlearn.entities.Notification;

@Repository
public interface NotificationRepository extends	JpaRepository<Notification, Long>{

}
