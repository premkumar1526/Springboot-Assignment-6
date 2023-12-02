package com.example.bootrest;

import java.util.List;
import java.util.Map;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.bootrest.entity.Product;
import com.example.bootrest.service.ProductServiceImpl;


@SpringBootApplication
public class RestDataJpaApplication {

	public static void main(String[] args) {
		SpringApplication.run(RestDataJpaApplication.class, args);
	}
	@GetMapping
    public static List<Product> getAllProducts() {
        return ProductServiceImpl.getAllProducts();
    }
 
    @GetMapping("/filter")
    public static List<Product> getProductsInPriceRange(@RequestParam double min, @RequestParam double max) {
        return ProductServiceImpl.getProductsInPriceRange(min, max);
    }
 
    @GetMapping("/categories")
    public static List<String> getAllCategories() {
        return ProductServiceImpl.getAllCategories();
    }
 
    @GetMapping("/categories-with-brands")
    public static Map<String, List<String>> getCategoriesWithBrands() {
        return ProductServiceImpl.getCategoriesWithBrands();
	
	

}

}
