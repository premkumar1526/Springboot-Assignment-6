package com.example.bootrest.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.bootrest.entity.*;
import com.example.bootrest.repository.CategoryRepository;

@Service
public class CategoryServiceImpl {
	
	@Autowired
	private CategoryRepository catRepo;
	
	// find all categories only
	
	public List<Category> findcategories(){
		@SuppressWarnings("unused")
		List<Category> categories = catRepo.findAll();
		// filter categories object here...
		
		
		return null;
	}
	

}
