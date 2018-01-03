<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
			<div class="m2-userCentermain">
			<div class="m2-userCentermain-aside">
	        <ul>
	            <li class="m2-asideListitem">
	                <a class="m2-aside-item" href="/Finances/tousercenter"><i class="m2-asideIcon1"></i>我的账户</a>
	            </li>
	            <li class="m2-asideListitem">
	                <a class="m2-aside-item" href="/Finances/togrowth"><i class="m2-asideIcon-vip"></i>成长值中心</a>
	            </li>
	            <li class="m2-asideListitem">
	                <a class="m2-aside-item m2-aside-toggle" ><i class="m2-asideIcon2"></i>投资管理<b class="m2-asideIcon-new"></b></a>
	                <ul class="m2-aside-secItem" style="display:none">
                    <!--             取消自动投标-->
                    <!--                   <li>-->
                    <!--                        <a class="m2-aside-secLink-item" href="/usercenter-investcontrol-autoinvest"><b class="m2-asideIcon-new"></b>自动投标</a>-->
                    <!--                    </li>-->
						<li>
	                        <a class="m2-aside-secLink-item" href="/Finances/toinvestrecord">投资记录</a>
	                    </li>
	                    <li>
	                        <a class="m2-aside-secLink-item" href="/Finances/topayment">回款计划</a>
	                    </li>
	                    <li>
	                        <a class="m2-aside-secLink-item" href="/Finances/totransfer">债权转让</a>
	                    </li>
	                    <li>
	                        <a class="m2-aside-secLink-item" href="/Finances/toinvest" target="_blank">立即投资</a>
	                    </li>
	
	                </ul>
	            </li>
	
	            <li class="m2-asideListitem">
	                <a class="m2-aside-item" href="/Finances/toinviting">
	                    <i class="m2-asideIcon-invit"></i>
	                    <b class="m2-asideIcon-prize"></b>
	                    邀请好友
	                </a>
	            </li>
	            <li class="m2-asideListitem">
	                <a class="m2-aside-item m2-aside-toggle" href="/Finances/toopen"><i class="m2-asideIcon3"></i>徽商资金管理</a>            <ul class="m2-aside-secItem" style="display:none">
	                <li><a class="m2-aside-secLink-item" href="#">充&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;值</a></li>
	                <li><a class="m2-aside-secLink-item" href="#">提&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;现</a></li>
	                <li><a class="m2-aside-secLink-item" href="#">资金流水</a></li>
	
	            </ul>
	            </li>
	            <li class="m2-asideListitem">
	                <a class="m2-aside-item m2-aside-toggle" ><i class="m2-asideIcon4"></i>奖励管理</a>
	                <ul class="m2-aside-secItem" style="display:none">
	                    <li>
	                        <a class="m2-aside-secLink-item" href="/Finances/toreward">奖励金流水</a>
	                    </li>
	                    <li>
	                        <a class="m2-aside-secLink-item" href="/Finances/toredpack">我的红包</a>
	                    </li>
	                    <li>
	                        <a class="m2-aside-secLink-item" href="/Finances/tointerest">我的加息券</a>
	                    </li>
	                    <li>
	                        <a class="m2-aside-secLink-item" href="/Finances/tomycoin">我的钱帮币</a>
	                    </li>
	                </ul>
	            </li>
	            <li class="m2-asideListitem">
	                <a class="m2-aside-item m2-aside-toggle" ><i class="m2-asideIcon5"></i>消息管理 </a>
	                <ul class="m2-aside-secItem" style="display:none">
	                    <li>
	                        <a class="m2-aside-secLink-item" href="/Finances/tomsg">站内消息</a>
	                    </li>
	                    <li>
	                        <a class="m2-aside-secLink-item" href="/Finances/tosetmsg">通知设置</a>
	                    </li>
	                </ul>
	            </li>
	            <li class="m2-asideListitem">
	                <a class="m2-aside-item m2-aside-toggle" ><i class="m2-asideIcon6"></i>账户管理</a>
	                <ul class="m2-aside-secItem" style="display:none" id='aaa'>
	                    <li>
	                        <a class="m2-aside-secLink-item" href="/Finances/userverify?uiid=${sessionScope.user.userinfo.uiid }">账户设置</a>
	                    </li>
	                </ul>
	            </li>
	        </ul>
	    </div>
	    <script>
	        // 		$(document).ready(function(){
	        var href = window.location.href;
	        var search = window.location.search;
	        $('.m2-asideListitem ul a').each(function () {
	            if ($(this).prop('href') + search == href) {
	                if ($(this).prop('href') == "/usercenter-wangbaoqiang" || $(this).prop('href') == "/usercenter-sirendingqi") {
	                } else {
	                    $(this).parent().parent('ul').show();
	                    $(this).parent().parent('ul').prev('a').removeClass('m2-aside-item');
	                    $(this).parent().parent('ul').prev('a').addClass('m2-aside-cur');
	                    $(this).css('text-decoration', 'underline');
	                    $(this).css('color', '#0996CC');
	                }
	            }
	        });
	        $('.m2-asideListitem a:not(.m2-asideListitem ul a)').each(function () {
	            if ($(this).prop('href') + search == href) {
	                if ($(this).prop('href').search("usercenter-wangbaoqiang") > -1) {
	                    $(this).removeClass('m2-aside-wbq');
	                    $(this).addClass('m2-aside-cur');
	                } else if ($(this).prop('href').search("usercenter-sirendingqi") > -1) {
	                    $(this).removeClass('m2-aside-wbq');
	                    $(this).addClass('m2-aside-cur');
	                } else {
	                    $(this).removeClass('m2-aside-item');
	                    $(this).addClass('m2-aside-cur');
	                }
	            }
	        });
	        $('.m2-asideListitem a:not(.m2-asideListitem ul a)').click(function () {
	            if ($(this).prop('href') == '') {
	                $(this).siblings('ul').slideToggle();
	                $(this).parent().siblings('.m2-asideListitem').children('.m2-aside-secItem').slideUp();
	            }
	        });
	        // 		});
	    </script>
	</body>
</html>