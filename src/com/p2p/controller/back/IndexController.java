package com.p2p.controller.back;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.p2p.pojo.AuthebDetais;
import com.p2p.service.back.AuthebDetaisService;

@RequestMapping(value="backindex")
@Controller
public class IndexController {
	@Resource(name="authebDetaisServiceImpl")
	private AuthebDetaisService authebDetaisService;  //消息
	
	
	
	@RequestMapping(value="indexall")
	public String indexall(HttpSession session) {
		List<AuthebDetais> authebDetais =authebDetaisService.getAllModel();
		session.setAttribute("audetailsSize", authebDetais.size());
		session.setAttribute("authebDetais", authebDetais);
		return "redirect:/back/toindex";
	}
	
	
}
