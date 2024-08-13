package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.entity.BatchEntity;

public interface BatchRepository extends JpaRepository<BatchEntity, Integer> {

}
