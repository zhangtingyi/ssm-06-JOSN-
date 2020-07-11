package com.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.springmvc.entity.User;

@Controller
public class JsonController {
	
	@RequestMapping(value="index")
	public String index(){
		return "json";
	}
	
	@RequestMapping(value="json")
	@ResponseBody 
	public User json(@RequestBody User user){
		System.out.println(user);
		return user;
	}
}
