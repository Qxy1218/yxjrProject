package com.p2p.shiro;



import javax.annotation.Resource;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;

import com.p2p.pojo.Employe;
import com.p2p.service.back.EmpService;


/**
 * shiro自定义拦截器
 * */
public class MyRealm extends AuthorizingRealm{
	@Resource(name="empServiceImpl")
	private EmpService empService;
	//用于权限
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		return null;
	}

	//用于授权
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		
		
		String username = (String)token.getPrincipal();
		System.out.println("当前用户名："+username);
		String password2 = new String((char[])token.getCredentials());
		System.out.println("当前用户密码是："+password2);
		
		
		Employe employe = empService.getByemployname(username);
		AuthenticationInfo au = new SimpleAuthenticationInfo(username,employe.getEpassword(), ByteSource.Util.bytes(username),this.getName());
		
		return au;
	}
	
	public static void main(String[] args) {
        Object password = "123";
		
		Object result = new SimpleHash("MD5", password, ByteSource.Util.bytes("admin"), 1);
		
		System.out.println(result.toString());
		
	}

}

