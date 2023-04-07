package com.shubh.dto;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.shubh.entity.Invoice;

import jakarta.persistence.CascadeType;
import jakarta.persistence.OneToMany;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductRequest 
{
	private String productName;
	private double price;
	private Date MFG;
	
}
