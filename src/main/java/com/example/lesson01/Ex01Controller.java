package com.example.lesson01;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class Ex01Controller {
	// print String
	@ResponseBody // this means to send the returned value to the Response
	@RequestMapping("/lesson01/ex01/1") // mapping the address
	public String printString() {
		String text = "<h1>예제 1번 </h1> 문자열을 response body로 보내는 예제";
		return text;
	}
	
	@ResponseBody
	@RequestMapping("/lesson01/ex01/2")
	public Map<String, Object> printMap() {
		Map<String, Object> map = new HashMap<>();
		map.put("apple", 4);
		map.put("banana",10);
		map.put("orage", 125);
		map.put("grape", 167);
		
		return map;
	}
	
	
}
