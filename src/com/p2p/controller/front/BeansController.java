package com.p2p.controller.front;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * 开发人:饶磊
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
	 * 进入 会员商城界面(membermall.jsp)
	 * */
	@RequestMapping(value="/tomembermall")
	public String toFrontMember(){
		return "views/front/membermall";
	}
}
