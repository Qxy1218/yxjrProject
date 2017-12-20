package com.p2p.controller.front;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.p2p.pojo.User;
import com.p2p.service.front.IUserService;
import com.p2p.util.SendMsgUtil;

/**
 * 开发人:汪栋才
 * 2017-11-16
 * AJAX注册登入高级验证的controller的
 * */
@Controller
@RequestMapping(value="/front")
public class AjaxController {
	
		@Resource(name="IUserServiceImpl")
		private IUserService iUserService;
	
		//注册界面把电话号码发送过来查询数据库是否存在
		@RequestMapping(value="/getregpdphishave")
		@ResponseBody
		public String RegpdPhishave(@RequestParam String phone) throws JsonProcessingException {
			ObjectMapper mapper = new ObjectMapper(); //转换器  
			Map<String, Object> map = new HashMap<String, Object>();
			
			System.out.println(phone);

			User user = new User();
			user.setUphone(phone);
			User user2 =  iUserService.getModel(user);
			if(user2!=null){
				map.put("message","此用户已存在");
			}
			map.put("verify_nums",4); 
			String aa = mapper.writeValueAsString(map);
			System.out.println(aa);
			ModelAndView model = new ModelAndView();
			model.setViewName("/views/front/register");
			model.addObject(aa);
			return aa;
		}
		
		
		
		
		/**
		 * 注册时检查邀请码是否存在用户
		 * */
		@RequestMapping(value="/ishaveyqcode")
		@ResponseBody
		public String ishaveyqcode(@RequestParam String mycode) throws JsonProcessingException {
			ObjectMapper mapper = new ObjectMapper(); //转换器  
			Map<String, Object> map = new HashMap<String, Object>();
			
			System.out.println(mycode);

			User user = new User();
			user.setUinvite(mycode);
			User user2 =  iUserService.getModel(user);
			if(user2==null){
				map.put("message","请检测您的邀请码是否正确");
			}else {
				map.put("verify_nums",4); 
			}
			
			String aa = mapper.writeValueAsString(map);
			System.out.println(aa);
			ModelAndView model = new ModelAndView();
			model.setViewName("/views/front/register");
			model.addObject(aa);
			return aa;
		}

		
		
		
		//发送验证码
		@RequestMapping(value="/getregsendphone")
		@ResponseBody
		public String RegSendPhone(@RequestParam String phone) throws JsonProcessingException {
		
			ObjectMapper mapper = new ObjectMapper(); //转换器  
			Map<String, Object> map = new HashMap<String, Object>();
			
			System.out.println(phone);
			Integer ranks = (int)((Math.random()*9+1)*100000); 
			/**
			 * 这里省略发送
			 * */
			SendMsgUtil sUtil = new SendMsgUtil();
			String msg = "您好,手机注册验证码为"+ranks+"，请尽快填写以完成注册,祝您生活愉快【忆信财富】";
//			try {
//				sUtil.Send(phone, msg);
//			} catch (Exception e) {
//				//日志打印
//				map.put("status", 2);
//				map.put("msg","发送异常");
//				e.printStackTrace();
//			}
			map.put("status",1);
			map.put("ranks", ranks);
			String aa = mapper.writeValueAsString(map);
			System.out.println(aa);
			ModelAndView model = new ModelAndView();
			model.setViewName("/views/front/register");
			model.addObject(aa);
			return aa;
		}
}
