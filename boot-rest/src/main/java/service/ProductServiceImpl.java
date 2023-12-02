package com.example.bootrest.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.bootrest.entity.Product;
import com.example.bootrest.repository.*;

@Service
public class ProductServiceImpl {
	
	@Autowired
	private ProductRepository productRepository;

	public ProductRepository getProductRepository() {
		return productRepository;
	}

	public void setProductRepository(ProductRepository productRepository) {
		this.productRepository = productRepository;
	}

	public static Map<String, List<String>> getCategoriesWithBrands() {
		// TODO Auto-generated method stub
		return null;
	}

	public static List<String> getAllCategories() {
		// TODO Auto-generated method stub
		return null;
	}

	public static List<Product> getProductsInPriceRange(double min, double max) {
		// TODO Auto-generated method stub
		return null;
	}

	public static List<Product> getAllProducts() {
		// TODO Auto-generated method stub
		return null;
	}
	
}