package com.shubh.advice;

import java.util.HashMap;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import com.shubh.exception.RecordNotFoundException;
@RestControllerAdvice
public class ApplicationExceptionHandler 
{
	@ResponseStatus(value=HttpStatus.BAD_REQUEST)
	@ExceptionHandler(MethodArgumentNotValidException.class)
	public Map<String,String> InvalidException(MethodArgumentNotValidException mx){
		Map<String, String> errorMap = new HashMap<>();
		mx.getBindingResult().getFieldErrors().forEach(error ->{
			errorMap.put(error.getField(), error.getDefaultMessage());
		});
		return errorMap;
	}
	
	
	@ResponseStatus(value=HttpStatus.NOT_FOUND)
	@ExceptionHandler(RecordNotFoundException.class)
	public Map<String, String> ExceptionHandle(RecordNotFoundException ex){
		Map<String, String> errorMap = new HashMap<>();
		errorMap.put("errorMessage",ex.getMessage());
		return errorMap;
	}

}
