package com.p2p.controller.back;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.p2p.util.Demo;

/**
 * 开发人:汪栋才
 * 2017-11-13
 * 此conteroller是访问后台页面的
 * */
@Controller
@RequestMapping("/back")
public class BeansBackController {
	  
	/**
	 * 进入后台登陆界面
	 * */
	@RequestMapping(value="/tologin")
	public String toBackLogin(HttpServletRequest request){
		String ip =  Demo.getIpFromRequest(request);
		System.out.println("ip地址是。。。。。。。。"+ip);
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
