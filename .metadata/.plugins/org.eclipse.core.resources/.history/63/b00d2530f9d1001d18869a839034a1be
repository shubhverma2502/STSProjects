package com.shubh.dto;


import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor(staticName = "build")
@AllArgsConstructor
public class BookRequest 
{
	@NotEmpty(message="Book Name must not be Null")
	private String bookName;
	@NotBlank(message="Author Name must not be blank")
	private String autherName;
	@NotNull(message="Edition must not be blank")
	private int edition;
}
