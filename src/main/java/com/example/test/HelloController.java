package com.example.test;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@EnableAutoConfiguration(exclude={DataSourceAutoConfiguration.class})
@Controller
public class HelloController {
	@ResponseBody
	@RequestMapping("/test1")
	public String test1() {
		return "hello world!!!";
	}
}
