package com.example.bootrest.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.bootrest.entity.*;

public interface ProductRepository extends JpaRepository<Product, Integer> {
	
	//Domain-specific language (DSL)
	
	List<Product> findByProductTitle(String s1);
	List<Product> findByProductTitleLike(String s1);

	
	

}