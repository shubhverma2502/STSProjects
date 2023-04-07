package com.shubh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.shubh.dto.BookRequest;
import com.shubh.entity.Books;
import com.shubh.exception.RecordNotFoundException;
import com.shubh.service.BookServices;

import jakarta.validation.Valid;


@RestController
public class BooksController 
{
	@Autowired
	private BookServices bookService;
	
	@PostMapping("/save")
	public ResponseEntity<Books> saveBooks(@RequestBody @Valid BookRequest book)
	{
		return new ResponseEntity<Books>(bookService.saveBook(book), HttpStatus.CREATED);
		
	}
	
	@GetMapping("/get/{id}")
	public ResponseEntity<Books> getBookById(@PathVariable Integer id) throws RecordNotFoundException
	{
		
		return ResponseEntity.ok(bookService.getBookById(id));
	}
	
	@GetMapping("/getAll")
	public ResponseEntity<List<Books>> getAllBooks()
	{
	 
		return ResponseEntity.ok(bookService.getAllBooks());
	}
	
	@DeleteMapping("/delete/{id}")
	public void deleteBookById(@PathVariable Integer id) throws RecordNotFoundException
	{
		bookService.deleteBook(id);
	}
	
	@PutMapping("/update/{id}")
	public ResponseEntity<Books> updateBooks(@RequestBody Books book,@PathVariable Integer id) throws RecordNotFoundException
	{
		return ResponseEntity.ok(bookService.updateBooks(book, id));
	}
}
