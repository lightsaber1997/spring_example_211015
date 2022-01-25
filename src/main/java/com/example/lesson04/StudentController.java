package com.example.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.lesson04.bo.StudentBO;
import com.example.lesson04.model.Student;

@RequestMapping("/lesson04/ex02")
@Controller
public class StudentController {
	@Autowired
	StudentBO studentBO;
	
	@GetMapping("/1")
	public String ex02_1() {
		return "lesson04/addStudent";
	}
	@PostMapping("/add_student")
	public String addStudent(
			@ModelAttribute Student student, Model model) {
		studentBO.addStudent(student);
		Student result = studentBO.getStudentById(student.getId());
		model.addAttribute("result", result);
		model.addAttribute("subject", "학생 정보");
		
		return "lesson04/afterAddStudent";
	}
}
