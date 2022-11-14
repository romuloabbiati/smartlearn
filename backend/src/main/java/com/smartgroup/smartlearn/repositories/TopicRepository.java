package com.smartgroup.smartlearn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.smartgroup.smartlearn.entities.Topic;

@Repository
public interface TopicRepository extends JpaRepository<Topic, Long> {

}
