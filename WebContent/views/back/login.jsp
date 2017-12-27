<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getContextPath();
%>  
<html>
	<head>
			<link rel="Shortcut  Icon" href="/Finances/statics/other/lco/smalllog.png">
			<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
			<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
			<title>亿信金融</title>
			<link href="/Finances/statics/back/assets/css/style.css" rel="stylesheet" type="text/css" />
			<script type="text/javascript" src="/Finances/statics/back/assets/js/jquery-1.8.3.min.js"></script>
			<!-- <title>Insert title here</title> -->
	</head>
	<body onLoad="sendRequest()" >
	<div class="videozz"></div>
	<!--  
		<video  autoplay muted loop poster="/Finances/statics/back/assets/images/fallba1ck.jpg">
			<source src="/Finances/statics/back/assets/images/mov.mp4">		
			你的游览器不支持video支持
		</video>
	-->
		<div class="box">
			<div class="box-a">
			    <div class="m-2">
			          <div class="m-2-1">
			            <form action="<%=path%>/back/loginindex" method="post">
			                <div class="m-2-2">
			                   <input type="text" name="name" placeholder="请输入账号" />
			                </div>
			                <div class="m-2-2">
			                   <input type="password" name="password" placeholder="请输入密码"/>
			                </div>
			                <div class="m-2-2-1">
			                   <input type="text" placeholder="请输入验证码"/>
			                   <img src="/Finances/statics/back/assets/images/1.png"/>
			                </div>
			                <div class="m-2-2">
			                   <button type="submit" value="登录" /> 登录
			                   	   <h4 style="color: red;">${sessionScope.message_login}</h4>
	                  	  	<%
		                    	if(session.getAttribute("message_login")!=null){
		                    		session.removeAttribute("message_login");
		                            
		                    	}
	                    	%>
			                </div>
			            </form>
			        </div>
			    </div>
			    <div class="m-5"> 
				    <div id="m-5-id-1"> 
					    <div id="m-5-2"> 
					    	<div id="m-5-id-2"></div> 
					    	<div id="m-5-id-3"></div> 
					    </div> 
				    </div> 
			    </div>   
			    <div class="m-10"></div>
			    <div class="m-xz7"></div>
			    <div class="m-xz8 xzleft"></div>
			    <div class="m-xz9"></div>
			    <div class="m-xz9-1"></div>
			    <div class="m-x17 xzleft"></div>
			    <div class="m-x18"></div>
			    <div class="m-x19 xzleft"></div>
			    <div class="m-x20"></div>  
			    <div class="m-8"></div>
			    <div class="m-9">
			    	<div class="masked1" id="sx8">亿信金融</div>
			    </div> 
			    <div class="m-11">
			    	<div class="m-k-1"><div class="t1"></div></div>
			        <div class="m-k-2"><div class="t2"></div></div>
			        <div class="m-k-3"><div class="t3"></div></div>
			        <div class="m-k-4"><div class="t4"></div></div>
			        <div class="m-k-5"><div class="t5"></div></div>
			        <div class="m-k-6"><div class="t6"></div></div>
			        <div class="m-k-7"><div class="t7"></div></div>
			    </div>   
			    <div class="m-14">
			    	<div class="ss"></div>
			    </div>
			    <div class="m-15-a">
				    <div class="m-15-k">
				    	<div class="m-15xz1">
				            <div class="m-15-dd2"></div>
				        </div>
				    </div>
			    </div>
			    <div class="m-16"></div>
			    <div class="m-17"></div>
			    <div class="m-18 xzleft"></div>
			    <div class="m-19"></div>
			    <div class="m-20 xzleft"></div>
			    <div class="m-21"></div>
			    <div class="m-22"></div>
			    <div class="m-23 xzleft"></div>
			    <div class="m-24" id="localtime"></div>
		    </div>
		</div>
		<script src="/Finances/statics/back/assets/js/common.min.js"></script>
		<div style="text-align:center;"></div>
	</body>
</html>