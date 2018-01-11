package com.p2p.controller.front;

import java.io.BufferedReader;
import java.io.PrintWriter;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.p2p.controller.back.SendMsgUtil;
import com.p2p.pojo.Chongzhi;
import com.p2p.pojo.Recharge;
import com.p2p.pojo.User;
import com.p2p.pojo.Userbackcard;
import com.p2p.pojo.Userinfo;
import com.p2p.pojo.Users;
import com.p2p.service.back.MessageUtilService;
import com.p2p.service.back.SendMsgService;
import com.p2p.service.front.IUserService;
import com.p2p.service.front.RechargeService;
import com.p2p.service.front.UserbackcardService;
import com.p2p.util.DateUtils;
import com.p2p.util.MessageBenas;
import com.p2p.util.SendServiceUtil;
import com.p2p.util.UUIDCode;

@Controller
@RequestMapping("/recharge")
public class RechargeController {
	
	//用户详情
	@Resource(name="rechargeServiceImpl")
	private RechargeService rechargeService;
	
	//用户
	@Resource(name="IUserServiceImpl")
	private IUserService iUserService;
	
	@Resource(name="userbackcardServiceImpl") 
	private UserbackcardService userbackcardService;  //银行卡
	
	@Resource(name="sendMsgServiceImpl")
	private SendMsgService sendmsg;
	
	@Resource(name="messageUtilServiceImpl")
	private MessageUtilService messageUtil;

	/**
	 * 判断交易密码是否正确
	 * */
	@RequestMapping(value="seleBydalePwd")
	@ResponseBody
	public int seleBydalePwd(Integer uiid,String uidealpwd) {
		int count = 0;
		Userinfo u = new Userinfo();
		u.setUiid(uiid);
		Object results = new SimpleHash("MD5", uidealpwd, ByteSource.Util.bytes("userinfo"), 10);
		u.setUidealpwd(results.toString());
		Userinfo uinfo =rechargeService.getUserinfo(u); 
		if(uinfo!=null) {
			count = 1;
		}else {
			count = 0;
		}
		return count;
	}
	@RequestMapping(value="addRecharge")
	@ResponseBody
	public int addRecharge(Recharge recharge,Userbackcard userbackcard) throws Exception {
		int count = 0;
		String chtime =DateUtils.getDateTimeFormat(new Date());
		
		//服务端充值表设值
		Chongzhi  chongzhi = new Chongzhi();
		chongzhi.setChsuid(recharge.getUid());
		chongzhi.setChbankid(userbackcard.getUbbackcardnum());
		chongzhi.setChstate(1);
		chongzhi.setChmoney(Double.valueOf(recharge.getRemoney()));
		chongzhi.setChtime(chtime);
		chongzhi.setChorder(UUIDCode.produceUID(6));
		
		//向服务端传递对象(url是服务端地址)
		int chongzhicount = SendServiceUtil.list(chongzhi, "192.168.90.47:8080/ServiceP2p/recharge/add");
		if(chongzhicount==1) {
			recharge.setRetime(chtime);
			try {
				User u = new User();
				u.setUid(recharge.getUid());
				User user =iUserService.getModel(u);
				user.setUbalance(user.getUbalance()+Double.valueOf(recharge.getRemoney()));
				iUserService.update(user);
				userbackcard.setUbmoney(userbackcard.getUbmoney()-Double.valueOf(recharge.getRemoney()));
				userbackcardService.update(userbackcard);
				count = rechargeService.addModel(recharge);
				
				
				
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		else {
			count = 0;
		}
		return count;
	}
	@RequestMapping("rechargereplay")
	public void replay(HttpServletRequest request,HttpServletResponse response) throws Exception {
		
	    	//获取接收的报文
			BufferedReader reader=request.getReader();
			
			String line="";
			
			 StringBuffer inputString = new StringBuffer();  
		        while ((line = reader.readLine()) != null) {  
		        inputString.append(line);  
		     }  
	       
		    //jackJson    
	        ObjectMapper o=new ObjectMapper();
	        
	        Chongzhi u=o.readValue(inputString.toString(), Chongzhi.class);
	        System.out.println("接收的报文为= "+u);
	        
	        User use=new User();
	        use.setUid(u.getChsuid());
	        User user=iUserService.getModel(use);
	        
	        //发送短信
	        SendMsgUtil sUtil = new SendMsgUtil();
			Map<String,Object> orther = new HashMap<String,Object>();
			orther.put("userphone",user.getUphone());
			orther.put("money",u.getChmoney());
			
			sUtil.Send(user.getUphone(),MessageBenas.MSG_ADDMONEY,orther,sendmsg,messageUtil);
	        
			// 要返回的报文  
	       StringBuffer resultBuffer = new StringBuffer();  
	       resultBuffer.append("1");
	     
	       // 设置发送报文的格式  
	       response.setContentType("text/xml");  
	       response.setCharacterEncoding("UTF-8");  
	   
	       PrintWriter out = response.getWriter();  
	       out.println(resultBuffer.toString());  
	       out.flush();  
	       out.close();  
		
		
		}
	
}
