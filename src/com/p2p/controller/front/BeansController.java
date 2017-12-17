package com.p2p.controller.front;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * 开发人:汪栋才
 * 2017-11-13
 * 此conteroller是访问前台页面的
 * */
@Controller
public class BeansController {
	
	/**
	 * 进入首界面(index.jsp)
	 * */
	@RequestMapping(value="/toindex")
	public String toFrontIndex(){
		return "views/front/index";
	}
	
	/**
	 * 访问注册界面(register.jsp)
	 * */
	@RequestMapping(value="/toregirset")
	public String toRegirset(){
		return "views/front/register";
	}
	
	/**
	 * 访问登入界面(login.jsp)
	 * */
	@RequestMapping(value="/tologin")
	public String toLogin(){
		return "views/front/login";
	}
	
	
	/**
	 * 进入 会员商城界面(membermall.jsp)
	 * */
	@RequestMapping(value="/tomembermall")
	public String toFrontMember(){
		return "views/front/membermall";
	}
}
