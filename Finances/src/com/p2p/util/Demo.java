package com.p2p.util;

import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;

public class Demo {
	public static void main(String[] args) {
		Object result = new SimpleHash("MD5","admin", ByteSource.Util.bytes("123456"), 10);
		System.out.println(result.toString());
	}
}
