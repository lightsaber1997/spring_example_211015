package com.example.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.lesson04.bo.UserBO;
import com.example.lesson04.model.User;


@RequestMapping("/lesson04/ex01")
@Controller
public class UserController {
	@Autowired
	UserBO userBO;
	@RequestMapping(path="/add_user_view", method=RequestMethod.GET)
	public String addUserView() {
		return "lesson04/addUser";
	}
	
	@PostMapping("/add_user")
	public String addUser(
			@RequestParam("name") String name,
			@RequestParam("yyyymmdd") String yyyymmdd,
			@RequestParam("email") String email,
			@RequestParam(value="introduce", required=false) String introduce
			) {
		userBO.addUser(name, yyyymmdd, email, introduce);
		return "lesson04/afterAddUser";
	}
	
	@GetMapping("/get_last_user")
	public String getLastUser(Model model) {
		User lastUser = userBO.getLastUser();
		model.addAttribute("result", lastUser);
		model.addAttribute("subject", "회원 정보");
		return "lesson04/getLastUser";
	}
}
