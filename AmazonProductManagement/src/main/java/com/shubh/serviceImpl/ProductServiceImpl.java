package com.shubh.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shubh.entity.Product;
import com.shubh.repository.ProductRepo;
import com.shubh.service.ProductService;
@Service
public class ProductServiceImpl implements ProductService
{
	@Autowired
	private ProductRepo productRepo;

	
	public Product saveProduct(Product product) 
	{
		Product p1 = productRepo.save(product);
		return p1;
	}

}
