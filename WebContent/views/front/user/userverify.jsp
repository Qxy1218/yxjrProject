<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!--[if lt IE 9]>
    	<script src="<%=path%>/statics/front/statics/newcommon/js/html5shiv.js"></script>
    <![endif]-->
    <meta name="keywords" content="网贷平台,网络借贷，网络赚钱项目,理财产品">
    <meta name="description" content="爱钱帮网贷平台为您提供网络赚钱项目；为此相继推出了许多新的理财产品，在为您创造高收益的同时也优化了理财产品模式。网络借贷，就选爱钱帮。">
    <title>账户设置 | 亿信金融</title>
    <link rel="Shortcut  Icon" href="/Finances/statics/other/lco/smalllog.png">
   	<link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-commonNew.css">
    <link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-common.css">
    <link rel="Shortcut  Icon" href="/Finances/statics/front/statics/newcommon/images/minilogo.png">
    <link rel="stylesheet" href="/Finances/statics/front/statics/usercenter/css/userCenter.css">
    <link rel="stylesheet" href="/Finances/statics/front/statics/usercenter/css/jquery.datetimepicker.css" />
    
    <script type="text/javascript" src="/Finances/statics/front/statics/newcommon/js/jquery.min.js"></script>
    <script type="text/javascript" src="/Finances/statics/front/statics/newcommon/js/common.js"></script>
    <script type="text/javascript" src="/Finances/statics/front/statics/usercenter/js/esl.js"></script>
    <script type="text/javascript" src="/Finances/statics/front/statics/usercenter/js/jquery.datetimepicker.js"></script>
    
    <!-- 图形验证码 -->
	<script src="/Finances/statics/front/js/gVerify.js"></script>
	
	<!-- 弹出框 -->
	<script src="/Finances/statics/front/js/jquery-1.7.1.min.js"></script>
	<script src="/Finances/statics/front/js/ui.js"></script>
	<link href="/Finances/statics/front/css/style.css" rel="stylesheet" />
</head>
<body>
	<div class="m2-userCentercommon-bg" style='display: none'></div>
	<div class="m2-userCentercommon-confirm" style='display: none'></div>
	
	<!-- 右侧边栏start -->
	<jsp:include page="../include/userside.jsp"></jsp:include>
	<!-- 右侧边栏end -->
	
	<!-- headerStart -->
	<jsp:include page="../include/head.jsp"></jsp:include>
	<!-- headerEnd -->
	
	<!-- 树start -->
	<jsp:include page="../include/tree.jsp"></jsp:include>
	<!-- 树end -->

    <div class="m2-userCentersettings-con">
        <!--您现在的安全级别-->
        <div class="m2-userCentersettings-bg">
            <div class="m2-wel-level m2-userSettings-level">
                <div class="m2-level-image">
                    <b class="m2-wel-levelTip">您现在的安全级别</b>
                    <b class="m2-userSettingslevel-low" id='safe_level'></b>
                    <i class="m2-levelIcon-fal"></i>
                    <i class="m2-levelIcon-fal"></i>
                    <i class="m2-levelIcon-fal"></i>
                    <i class="m2-levelIcon-fal"></i>
                    <b class="m2-wel-levelTip">请通过完善下方信息来提升安全级别</b>
                </div>
            </div>
            <ul>
                <li class="m2-userCentersettings-step1 m2-userSettings-step">
                    <div class="m2-userSettings-stepShow">
                        <i></i>
                        <span class="m2-userSettingsshow-tit m2-userSettingsshow-tit2">手机号码</span>
                        <span class="m2-userSettingsshow-exp">亿信金融会通过手机号发送各类短信，验证手机号会更加便捷</span>
                        <span class="m2-userSettingsaut m2-userSettingsaut-fal" id='phone_status'><b></b>未绑定</span>
                        <span class="m2-userSettingsshow-link"><a href="javascript:void(0)">添加</a></span>
                    </div>

                    <ul class="m2-userSettings-setpHide" style="display:none;" id='phone_status_1'>
                        <!--<li class="m2-userSettingshide-tit"> -->
                        <!--可添加说明文字可添加说明文字可添加说明文字 -->
                        <!--</li> -->
                        <li>
                        	<input type="hidden" id='vp-uid' value="${sessionScope.user.uid }">
                        	<input type="hidden" id='vp-uphone' value="${sessionScope.user.uphone }">
                        	
                            <span class="m2-userSettingshide-nor"><u>*</u>手机号：</span>
                            <input type="text" placeholder="请输新手机号码" id='vp-phonenum' value="${sessionScope.user.uphone }">
                            <a class="m2-userSettings-telSubmit" href="javascript:void(0)" id='vp-textbtn'>短信验证码</a>
                            <a class="m2-userSettings-telSubmit" href="javascript:void(0)" id='vp-voicebtn'>语音验证码</a>
                            <span class="m2-userSettingshide-warning" style='margin-left: 80px;margin-top: 10px;display: none;' id='vp-warn'><em></em>请输入正确的手机号。</span>
                            <span class="m2-userSettingshide-success m2-userSettingshide-successTel" style='display: none' id='vp-msg'><em></em>验证码已发出,如果您在2分钟之内未收到验证码,请再次获取验证码</span>
                        </li>
                        <li style="display:none;" id='verifyphoneli'>
                            <span class="m2-userSettingshide-nor"><u>*</u>验证图码：</span>
                            <input type="text" placeholder="请输入图片验证码" type="text" id='vp-vpic'>
                           	<span  style="cursor: pointer;width: 104;height: 40" id="reverifyCode"></span>                           
                            <span class="m2-userSettingshide-warning" style='margin-left: 80px;margin-top: 10px;display: none;' id='vpic-warn'><em></em>请输入正确的图形验证码</span>
                        </li>
                        <li>
                            <span class="m2-userSettingshide-nor"><u>*</u>验证码：</span>
                            <input type="text" placeholder="请输入收到的验证码" type="text" id='vp-text'>
                            <input type="hidden" id="userCode">
                            <span class="m2-userSettingshide-warning" style='margin-left: 10px;margin-top: 10px;display: none;' id='code-warn'><em></em>请输入正确的短信验证码</span>
                        </li>
                        <li class="m2-userSettingshide-btn"><a href="javascript:void(0)" id='vp-submit'>修改</a></li>
                    </ul>
                </li>
                <li class="m2-userCentersettings-step2 m2-userSettings-step">
                    <div class="m2-userSettings-stepShow">
                        <i></i>
                        <span class="m2-userSettingsshow-tit m2-userSettingsshow-tit2">徽商存管账户</span>
                        <span class="m2-userSettingsshow-exp">投资合同需要实名签署，实名合同才有法律效应，爱钱帮通过徽商银行完成实名认证</span>
                        <span class="m2-userSettingsaut m2-userSettingsaut-fal"  id='id_status'><b></b>未认证</span>
                        <span class="m2-userSettingsshow-link"><a href="<%=path %>/views/front/openbankid.jsp" target="_blank">认证</a></span>
                    </div>
                </li>
                <li class="m2-userCentersettings-step3 m2-userSettings-step">
                    <div class="m2-userSettings-stepShow">
                        <i></i>
                        <span class="m2-userSettingsshow-tit">徽商交易密码</span>
						<span class="m2-userSettingsshow-exp">交易密码需跳转徽商交易系统页面输入，适用于投资验证及提现验证
						</span>
                        <span class="m2-userSettingsaut m2-userSettingsaut-fal"  ><b></b>未开户</span>
                        <span class="m2-userSettingsshow-link"><a href="javascript:void(0)">开户</a></span>					
                    </div>
                    <ul class="m2-userSettings-setpHide" style="display:none;" id=''>
                        <li>
                            <input type="text" placeholder="请输手机号码" type="text" style="display:none;  readonly="readonly" id='hsvp-phonenum' value="13737301354">
                            <span class="m2-userSettingshide-nor"><u>*</u>手机验证码：</span>
                            <input type="text" placeholder="请输手机验证码" type="text"  id='hs_code' >
                            <a class="m2-userSettings-telSubmit" href="javascript:void(0)" id='hsvp-textbtn'>短信验证码</a>
                        </li>
                        <li>
                            <span class="m2-userSettingshide-nor"><u>*</u>姓名：</span>
                            <input type="text" placeholder="请输入您的姓名" type="text"  id="hs_name">
                            <span class="m2-userSettingshide-warning"></span>
                        </li>
                        <li>
                            <span class="m2-userSettingshide-nor"><u>*</u>身份证：</span>
                            <input type="text" placeholder="请输入您的身份证号码" type="text"  id="hs_idCard">
                            <span class="m2-userSettingshide-warning"></span>
                        </li>
                        <li class="m2-userSettingshide-btn"><a href="javascript:void(0)" id='hsChange-btn'>下一步</a></li>
                    </ul>

                </li>

                <li class="m2-userCentersettings-step4 m2-userSettings-step">
                    <div class="m2-userSettings-stepShow">
                        <i></i>
                        <input type="hidden" id='getemailstatus' value="${sessionScope.user.userinfo.uiemailstatus }">
                        <input type="hidden" id='vp-uiname' value="${sessionScope.user.userinfo.uiname }">
                        <span class="m2-userSettingsshow-tit">电子邮箱</span>
                        <span class="m2-userSettingsshow-exp">获取最新的投资讯息和账户信息变动通知</span>
                        
                        <span class="m2-userSettingsaut m2-userSettingsaut-fal" id='email_status'><b></b>未认证</span>
                        <span class="m2-userSettingsshow-link"><a href="javascript:void(0)">认证</a></span>
                    </div>
                    <ul class="m2-userSettings-setpHide" style="display:none;" id='email_status_2'>
                        <li class="m2-userSettingshide-tit">请填写您的电子邮箱，点击下面的按钮发送激活邮件，登陆您的电子邮箱，完成验证。</li>
                        <li>
                            <span class="m2-userSettingshide-nor"><u>*</u>邮箱：</span>
	                        <input type="text" placeholder="请输入邮箱地址" type="text" value="${sessionScope.user.userinfo.uiemail}" id="verifyemail">
                            <span class="m2-userSettingshide-warning"></span>
                        </li>
                        <li class="m2-userSettingshide-btn"><a href="javascript:void(0)" id='verifyemail-btn'>发送验证邮件</a></li>
                    </ul>
                </li>
                <li class="m2-userCentersettings-step5 m2-userSettings-step">
                    <div class="m2-userSettings-stepShow">
                        <i></i>
                        <span class="m2-userSettingsshow-tit">联系地址</span>
                        <span class="m2-userSettingsshow-exp">用于邮寄资料或礼品</span>
                        <span class="m2-userSettingsaut m2-userSettingsaut-fal"  id='address_status'><b></b>未添加</span>
                        <span class="m2-userSettingsshow-link"><a href="javascript:void(0)">添加</a></span>
                    </div>

                    <ul class="m2-userSettings-setpHide">
                        <li>
                            <span class="m2-userSettingshide-nor"><u>*</u>收货人：</span>
                            <input type="text" placeholder="长度不超过25个字符" name="consignee" id="addr_consignee" class="addr_info" type="text" style='width: 350px;' value="">
                            <span class="m2-userSettingshide-warning"></span>
                        </li>
                        <li>
                            <span class="m2-userSettingshide-nor"><u>*</u>省市区：</span>
                            <select id="lmkselect1" name="province" style="width:140px;height:30px;">
                                <option data="all" class="all">请选择</option>
                            </select>
                            <select id="lmkselect2" name="city" id="addr_city" disabled="true" style="width:120px;height:30px;">
                                <option data="all" class="all">请选择</option>
                            </select>
                            <select id="lmkselect3" name="area" id="addr_area" disabled="true" style="width:120px;height:30px;">
                                <option data="all" class="all">请选择</option>
                            </select>
                            <span class="m2-userSettingshide-warning"></span>
                        </li>
                        <li>
                            <span class="m2-userSettingshide-nor"><u>*</u>详细地址：</span>
                            <input type="text" placeholder="请填写详细收货地址" id="addr_address" class="addr_info" type="text" style='width: 350px;' value="">
                            <span class="m2-userSettingshide-warning"></span>
                        </li>
                        <li>
                            <span class="m2-userSettingshide-nor"><u>*</u>手机号码：</span>
                            <input type="text" name='phone' id="addr_phone" class="addr_info" placeholder="请填写收货人的手机号码" type="text" style='width: 350px;' value="">
                            <span class="m2-userSettingshide-warning"></span>
                        </li>
                        <li class="m2-userSettingshide-btn"><a href="javascript:void(0)" id='newaddress-btn'>确认</a></li>
                    </ul>
                </li>

                <li class="m2-userCentersettings-step6 m2-userSettings-step">
                    <div class="m2-userSettings-stepShow">
                        <i></i>
                        <span class="m2-userSettingsshow-tit">登录密码</span>
                        <span class="m2-userSettingsshow-exp">上次登录时间：${sessionScope.user.uloginTime }</span>
                        <span class="m2-userSettingsaut m2-userSettingsaut-tur"><b></b>已设置</span>
                        <span class="m2-userSettingsshow-link"><a href="javascript:void(0)">修改</a></span>
                    </div>
                    <ul class="m2-userSettings-setpHide">
                        <!--<li class="m2-userSettingshide-tit">可添加说明文字可添加说明文字可添加说明文字</li> -->
                        <li>
                            <span class="m2-userSettingshide-nor"><u>*</u>原密码：</span>
                            <input type="password" placeholder="请输入原密码" type="text" id='oldpass'>
                            <span class="m2-userSettingshide-warning"></span>
                        </li>
                        <li>
                            <span class="m2-userSettingshide-nor"><u>*</u>新密码：</span>
                            <input type="password" placeholder="请输入新密码" type="text" id='newpass1'>
                            <span class="m2-userSettingshide-warning"></span>
                        </li>
                        <li>
                            <span class="m2-userSettingshide-nor"><u>*</u>确认密码：</span>
                            <input type="password" placeholder="请再次输入新密码" type="text" id='newpass2'>
                            <span class="m2-userSettingshide-warning"></span>
                        </li>
                        <li class="m2-userSettingshide-btn"><a href="javascript:void(0)" id='setpass-btn'>确认</a></li>
                    </ul>
                </li>
                <li class="m2-userCentersettings-step7 m2-userSettings-step" >
                	<input type="hidden" id='vp-uiid' value="${sessionScope.user.userinfo.uiid }">
                	<input type="hidden" id='vp-icid' value="${sessionScope.userinfo.idCard.icid }">
                	<input type="hidden" id='icstatus' value="${userinfo.idCard.icstatus }">
                    <div class="m2-userSettings-stepShow">
                        <i></i>
                        <span class="m2-userSettingsshow-tit">实名认证</span>
                        <span class="m2-userSettingsshow-exp">通过此功能对用户进行实名<br/>及身份证认证管理</span>
                        
                        <span class="m2-userSettingsaut m2-userSettingsaut-fal" id='name_number'><b></b>未认证</span>
                        <span class="m2-userSettingsshow-link"><a href="javascript:void(0)">认证</a></span>
                    </div>
                    <ul class="m2-userSettings-setpHide">
                        <li class="m2-userSettingshide-tit">用户名只允许中文、字母、数字、下划线组成，首位只能为字母，且至少需要 2 个字符。</li>
                        <li>
                            <span class="m2-userSettingshide-nor"><u>*</u>用户名：</span>
                            <input placeholder="请输入真实姓名" type="text" id='usernametext' value="${sessionScope.userinfo.idCard.icname}">
                            <span class="m2-userSettingshide-warning" id='usernamewarn'></span>
                        </li>
                        <li>
                        	<span class="m2-userSettingshide-nor"><u>*</u>身份证号：</span>
                            <input placeholder="请输入身份证号" type="text" id='icnumbertext' value="${sessionScope.userinfo.idCard.icnumber}">
                            <span class="m2-userSettingshide-warning" id='usericidwarn'></span>
                        </li>
                        <li class="m2-userSettingshide-btn"><a href="javascript:void(0)" onclick='changeUserName()'>确定</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <script type="text/javascript" src="<%=path %>/statics/front/statics/home2/js/HMZCity.json"></script>
    <!-- 需要具体实现的js(修改验证的ajax) -->
    <script type="text/javascript" src="<%=path %>/statics/front/js/useraccount.js"></script>
    </body>
</html>