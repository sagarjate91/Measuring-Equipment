package com.measuring.equipment.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.measuring.equipment.common.UserModel;
import com.measuring.equipment.services.ConstantService;

@Controller
@RequestMapping("/measuring/equipment")
public class HomeController {

	@GetMapping({ "/", "/home.htm" })
	private String index(Model model) {
		model.addAttribute(ConstantService.NAME, ConstantService.TITLE);
		model.addAttribute(ConstantService.TITLE, "Home");
		return "page";
	}

	@GetMapping({ "/login", "/customer.htm" })
	public String loginUser(Model model, @ModelAttribute("message") String message) {
		model.addAttribute(ConstantService.NAME, ConstantService.TITLE);
		model.addAttribute(ConstantService.TITLE, "Customer");
		model.addAttribute("userClickUser", true);
		model.addAttribute(ConstantService.ACTION, "customer/login-validate");
		model.addAttribute(ConstantService.COMMAND, new UserModel());
		if (message != null) {
			model.addAttribute(ConstantService.MESSAGE, message + "");
		}
		return "page";
	}

	@GetMapping("/error")
	public String error() {
		return "error.jsp";
	}

	@GetMapping({ "signup.htm" })
	public String signup(Model model, @ModelAttribute("message") String message) {
		model.addAttribute(ConstantService.NAME, ConstantService.TITLE);
		model.addAttribute(ConstantService.TITLE, "Signup");
		model.addAttribute("userClickRegister", true);
		model.addAttribute(ConstantService.ACTION, "customer/signup-add");
		model.addAttribute(ConstantService.COMMAND, new UserModel());
		if (message != null) {
			model.addAttribute(ConstantService.MESSAGE, message + "");
		}
		return "page";
	}

	@GetMapping({ "/admin.htm" })
	public String adminUser(@ModelAttribute("message") String message, Model model) {
		model.addAttribute(ConstantService.NAME, ConstantService.TITLE);
		model.addAttribute(ConstantService.TITLE, "Admin");
		model.addAttribute("userClickAdmin", true);
		model.addAttribute(ConstantService.ACTION, "admin/admin-validate");
		model.addAttribute(ConstantService.COMMAND, new UserModel());
		if (message != null) {
			model.addAttribute(ConstantService.MESSAGE, message);
		}
		return "page";
	}

}
