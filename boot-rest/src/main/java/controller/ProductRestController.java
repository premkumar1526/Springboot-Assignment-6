package com.example.bootrest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.bootrest.entity.Category;
import com.example.bootrest.entity.Product;
import com.example.bootrest.repository.CategoryRepository;
import com.example.bootrest.repository.ProductRepository;

@RestController
@RequestMapping(value = "/api/products")
public class ProductRestController<prodRepo> {
	
	@Autowired
	private ProductRepository prodRepo;
	@Autowired
	private CategoryRepository catRepo;
	
	@SuppressWarnings("hiding")
	@GetMapping
	public <prodRepo> List<Product> findAll(){
		return prodRepo.findAll();
	}
	
	@GetMapping("/{id}")
	public Product findById(@PathVariable int id) {
		return prodRepo.findById(id).orElse(null);
	}
	
	@GetMapping("/filter/{title}")
	public List<Product> findByProductByName(@PathVariable String title){
		return prodRepo.findByProductTitleLike(title);
	}
	
	//list all categories
	@GetMapping("/categories")
	List<Category> findAllCategories(){
		return catRepo.findAll();
	}
	
	

}
