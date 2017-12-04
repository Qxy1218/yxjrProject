package com.p2p.util;

public class MainTest {
	public static void main(String[] args) {
		SendMsgUtil sendMsgUtil = new SendMsgUtil();
		try {
			sendMsgUtil.Send("18296719481","您的验证码是：9090。请不要把验证码泄露给其他人。");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
