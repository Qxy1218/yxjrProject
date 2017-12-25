package com.p2p.util;

import java.util.Date;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.p2p.mapper.MessageUtilMapper;
import com.p2p.mapper.SendMsgMapper;
import com.p2p.pojo.MessageUtil;
import com.p2p.pojo.SendMsg;

/**
 * 此工具类是可从数据库分别获取各运行商的短信接口账号，密码
 * 现在先固定为移动的接口
 * 开发人:汪栋才
 * 2017-11-15
 * */
@Service
public class SendMsgUtil {
	
	@Resource
	private SendMsgMapper sendmsg;
	
	@Resource
	private MessageUtilMapper messageUtilMapper;
	
	private String username ="";
	private String password = "";
	private String method = "";
	
	public SendMsgUtil() {
		SendMsg sMsg  = sendmsg.findUserMsg(1);
		if(sMsg.getMsgid()!=null) {
			username = sMsg.getUsername();
			password = sMsg.getPassword();
			method = sMsg.getMethod();
		}else {
			/**
			 * 防止意外发生
			 * */
			 username = "acgn";
			 password = "ec99f5e2905b462cf9e13aa35988a582";
			 method = "http://api.sms.cn/sms/";
		}
	}
	
	 
	public void Send(String phone,String msg,Map<String,Object> orther) throws Exception{
		SendMsgController smg = new SendMsgController(username, password, method);
		String message = "";
		if(msg.equals("短信注册提示") && !orther.get("yzcode").equals("")){
			/**
			 * 需要的第一个参数:验证码
			 * */
			
			MessageUtil mess = new MessageUtil();
			mess.setMsgkey(msg);
			MessageUtil messa = messageUtilMapper.getModel(mess);
			message =  messa.getMsgvalue();
			message =  message.replaceFirst("a",""+orther.get("yzcode")+"");
			System.out.println("短信注册提示......"+message);
		}else if(msg.equals("短信登入提示")) {
			/**
			 * 需要的第一个参数:用户名
			 * */
			MessageUtil mess = new MessageUtil();
			mess.setMsgkey(msg);
			MessageUtil messa = messageUtilMapper.getModel(mess);
			message =  messa.getMsgvalue();
			message =  message.replaceFirst("a",""+orther.get("userphone")+"");
			System.out.println("短信登入提示......"+message);
			
		}else if(msg.equals("短信充值提示")) {
			/**
			 * 需要的第一个参数:用户名
			 * 需要的第二个参数:当前时间
			 * 需要的第二个参数:充值钱数
			 * */
			MessageUtil mess = new MessageUtil();
			mess.setMsgkey(msg);
			MessageUtil messa = messageUtilMapper.getModel(mess);
			message =  messa.getMsgvalue();
			message =  message.replaceFirst("a",""+orther.get("userphone")+"");
			message =  message.replaceFirst("b",""+DateUtils.getDateTimeFormat(new Date())+"");
			message =  message.replaceFirst("c",""+orther.get("money")+"");
			System.out.println("短信充值提示......"+message);
			
		}else if(msg.equals("短信投资提示")) {
			/**
			 * 需要的第一个参数:用户名
			 * 需要的第二个参数:当前时间
			 * 需要的第三个参数:项目
			 * 需要的第四个参数:投资钱数
			 * */
			MessageUtil mess = new MessageUtil();
			mess.setMsgkey(msg);
			MessageUtil messa = messageUtilMapper.getModel(mess);
			message =  messa.getMsgvalue();
			message =  message.replaceFirst("a",""+orther.get("userphone")+"");
			message =  message.replaceFirst("b",""+DateUtils.getDateTimeFormat(new Date())+"");
			message =  message.replaceFirst("c",""+orther.get("project")+"");
			message =  message.replaceFirst("d",""+orther.get("money")+"");
			System.out.println("短信投资提示......"+message);
			
		}else if(msg.equals("短信收到本金或利息")) {
			/**
			 * 需要的第一个参数:用户名
			 * 需要的第二个参数:项目名
			 * 需要的第三个参数:钱数
			 * 需要的第四个参数:本金/利息
			 * */
			MessageUtil mess = new MessageUtil();
			mess.setMsgkey(msg);
			MessageUtil messa = messageUtilMapper.getModel(mess);
			message =  messa.getMsgvalue();
			message =  message.replaceFirst("a",""+orther.get("userphone")+"");
			message =  message.replaceFirst("b",""+orther.get("project")+"");
			message =  message.replaceFirst("c",""+orther.get("money")+"");
			message =  message.replaceFirst("d",""+orther.get("or")+"");
			System.out.println("短信收到本金或利息......"+message);
			
		}else if(msg.equals("短信提现提示")) {
			/**
			 * 需要的第一个参数:用户名
			 * */
			MessageUtil mess = new MessageUtil();
			mess.setMsgkey(msg);
			MessageUtil messa = messageUtilMapper.getModel(mess);
			message =  messa.getMsgvalue();
			message =  message.replaceFirst("a",""+orther.get("userphone")+"");
			System.out.println("短信收到本金或利息......"+message);
		}else if(msg.equals("短信项目公告提示")) {
			/**
			 * 需要的第一个参数:项目名
			 * 需要的第二个参数:收益率
			 * 需要的第三个参数:回利期限
			 * 需要的第四个参数:点击的URL
			 * */
			MessageUtil mess = new MessageUtil();
			mess.setMsgkey(msg);
			MessageUtil messa = messageUtilMapper.getModel(mess);
			message =  messa.getMsgvalue();
			message =  message.replaceFirst("a",""+orther.get("project")+"");
			message =  message.replaceFirst("b",""+orther.get("rate")+"");
			message =  message.replaceFirst("c",""+orther.get("interes")+"");
			message =  message.replaceFirst("d",""+orther.get("url")+"");
			System.out.println("短信收到本金或利息......"+message);
		}else if(msg.equals("短信活动公告提示")) {
			/**
			 * 需要的第一个参数:项目
			 * */
			MessageUtil mess = new MessageUtil();
			mess.setMsgkey(msg);
			MessageUtil messa = messageUtilMapper.getModel(mess);
			message =  messa.getMsgvalue();
			message =  message.replaceFirst("a",""+orther.get("project")+"");
			System.out.println("短信收到本金或利息......"+message);
		}else {
			return;
		}
		smg.send(phone, message);
	}
	
	
}
