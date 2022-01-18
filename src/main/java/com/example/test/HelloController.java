package com.example.test;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class HelloController {
	@Autowired
	private TestDAO testDAO;
	
	@ResponseBody
	@RequestMapping("/test1")
	public String test1() {
		return "hello world!!!";
	}
	@ResponseBody
	@RequestMapping("/db_test")
	public List<Map<String, Object>>  test2() {
		return testDAO.selectUser();
	}
}
