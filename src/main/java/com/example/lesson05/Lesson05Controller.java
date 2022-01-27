package com.example.lesson05;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/lesson05")
@Controller
public class Lesson05Controller {
	@RequestMapping("/ex01")
	public String ex01() {
		return "lesson05/ex01";
	}
	@RequestMapping("/ex02")
	public String ex02(Model model) {
		// List
		List<String> fruits = new ArrayList<>();
		fruits.add("apple");
		fruits.add("melon");
		fruits.add("grape");
		fruits.add("peach");
		fruits.add("mango");
		// List map
		List<Map<String, Object>> users = new ArrayList<>();
		
		Map<String, Object> user = new HashMap<>();
		user.put("name", "peter parker");
		user.put("age", "20");
		user.put("hobby", "거미줄 쏘기");
		users.add(user);
		
		user = new HashMap<>();
		user.put("name", "Gwn stacy");
		user.put("age", "20");
		user.put("hobby", "사진찍기");
		users.add(user);
		
		model.addAttribute("fruits", fruits);
		model.addAttribute("users", users);
			
		return "lesson05/ex02";
	}
	
	@RequestMapping("/ex03")
	public String ex03(Model model) {
		Date today = new Date();
		model.addAttribute("today", today);
		return "lesson05/ex03";
	}
}
