package com.example.lesson03;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.lesson03.bo.ReviewBO;
import com.example.lesson03.model.Review;

@RequestMapping("/lesson03/ex01")
@RestController
public class Lesson03Ex01RestController {
	@Autowired
	private ReviewBO reviewBO;
	
	@RequestMapping("/1")
	public Review ex01(@RequestParam(value="id", required=true) int id) {
		System.out.println("########### " + id);
		return reviewBO.getReview(id);
	}
	
	// @RequestParam(value="id", required=false) int id
	// @RequestParam(value="id", defaultValue="1") int id
}
