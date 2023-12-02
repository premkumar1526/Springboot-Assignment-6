package com.example.bootrest.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.bootrest.*;
import com.example.bootrest.entity.Category;

public interface CategoryRepository extends JpaRepository<Category,Integer> {

}