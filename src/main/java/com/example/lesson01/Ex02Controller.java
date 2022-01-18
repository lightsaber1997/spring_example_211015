package com.example.lesson01;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Ex02Controller {
	@RequestMapping("/lesson01/ex02/1")
	public String ex02() {
		// If string is returned without 'ResponseBody' annotation,
		// ViewResolver automatically finds path by the returned string and makes the view.
		return "lesson01/ex02";
	}
}
