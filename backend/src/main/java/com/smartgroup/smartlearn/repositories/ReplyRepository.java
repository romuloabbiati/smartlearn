package com.smartgroup.smartlearn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.smartgroup.smartlearn.entities.Reply;

@Repository
public interface ReplyRepository extends JpaRepository<Reply, Long>{

}
