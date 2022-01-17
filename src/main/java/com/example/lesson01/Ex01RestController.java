package com.example.lesson01;

import java.util.HashMap;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("/lesson01/ex01")
@RestController
public class Ex01RestController {
	@RequestMapping("/3")
	public String printString() {
		return "return String using Rescontroller";
	}
	
	@RequestMapping("/4")
	public Map<String, String> print_map() {
		Map<String, String> map = new HashMap<>();
		map.put("a", "aaa");
		map.put("b", "bbb");
		map.put("c", "cccc");
		return map;
	}
	
	@RequestMapping("/5")
	public Data printData() {
		Data data = new Data();
		data.setId(1);
		data.setName("신보람");
		return data;
	}
	
	@RequestMapping("/6")
	public ResponseEntity<Data> printEntity() {
		Data data = new Data();
		data.setId(2);
		data.setName("신보람");
		return new ResponseEntity<>(data, HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	
	
	
	
	
	
	
	
	
}
