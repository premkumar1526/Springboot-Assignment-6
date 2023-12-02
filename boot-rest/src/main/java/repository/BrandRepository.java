package com.example.bootrest.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.bootrest.*;
import com.example.bootrest.entity.Brand;

public interface BrandRepository extends JpaRepository<Brand, Integer> {

}
