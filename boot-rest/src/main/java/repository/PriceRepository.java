package com.example.bootrest.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.bootrest.*;
import com.example.bootrest.entity.Price;

public interface PriceRepository extends JpaRepository<Price, Integer> {

}