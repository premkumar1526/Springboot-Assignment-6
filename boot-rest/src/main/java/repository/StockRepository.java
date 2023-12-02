package com.example.bootrest.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.bootrest.entity.*;

public interface StockRepository extends JpaRepository<Stock, Integer> {

}