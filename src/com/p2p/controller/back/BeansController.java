package com.p2p.controller.back;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 开发人:汪栋才
 * 2017-11-13
 * 此conteroller是访问后台页面的
 * */
@Controller
@RequestMapping("/back")
public class BeansController {
	
	/**
	 * 进入后台登陆界面
	 * */
	@RequestMapping(value="/tologin")
	public String toBackLogin(){
		return "views/back/login";
	}
	
	/**
	 * 进入后台主界面
	 * */
	@RequestMapping(value="/toindex")
	public String toBackIndex(){
		return "views/back/index";
	}
	
}
