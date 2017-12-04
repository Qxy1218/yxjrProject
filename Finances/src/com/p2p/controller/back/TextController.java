package com.p2p.controller.back;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.p2p.service.back.TextbService;

@Controller
@RequestMapping(value="/back")
public class TextController {
	/*@Resource(name="textbServiceImpl")
	private TextbService textService;*/
	
	@RequestMapping(value="/index")
	private String text() {
		return "/back/text";
	}

	
	
}
