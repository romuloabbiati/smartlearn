package com.smartgroup.smartlearn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.smartgroup.smartlearn.entities.Section;

@Repository
public interface SectionRepository extends JpaRepository<Section, Long> {

}
