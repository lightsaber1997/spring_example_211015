package com.example.lesson03;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.lesson03.bo.ReviewBO;

@RequestMapping("/lesson03/ex03")
@RestController
public class Lesson03Ex03RestController {
	@Autowired
	ReviewBO reviewBO;
	
	@RequestMapping("/1")
	public String ex03(
			@RequestParam(value="id") int id,
			@RequestParam(value="review") String review) {
		int rowCount = reviewBO.updateReviewById(id, review);
		return "# of changed rows = " + rowCount;
	}
}
