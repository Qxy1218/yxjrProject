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
    <title>账户设置--亿信金融</title>
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
                    <b class="m2-wel-levelTip">请通过完善下方信息来提升安全级别</b>
                </div>
            </div>
            <ul>
                <li class="m2-userCentersettings-step1 m2-userSettings-step">
                    <div class="m2-userSettings-stepShow">
                        <i></i>
                        <span class="m2-userSettingsshow-tit m2-userSettingsshow-tit2">手机号码</span>
                        <span class="m2-userSettingsshow-exp">爱钱帮会通过手机号发送各类短信，验证手机号会更加便捷</span>
                        <span class="m2-userSettingsaut m2-userSettingsaut-fal" id='phone_status'><b></b>未绑定</span>
                        <span class="m2-userSettingsshow-link"><a href="javascript:void(0)">添加</a></span>
                    </div>

                    <ul class="m2-userSettings-setpHide" style="display:none;" id='phone_status_1'>
                        <!-- 						<li class="m2-userSettingshide-tit"> -->
                        <!-- 							可添加说明文字可添加说明文字可添加说明文字 -->
                        <!-- 						</li> -->

                        <li>
                            <span class="m2-userSettingshide-nor"><u>*</u>手机号：</span>
                            <input type="text" placeholder="请输新手机号码" type="text" id='vp-phonenum' value="13737301354">
                            <a class="m2-userSettings-telSubmit" href="javascript:void(0)" id='vp-textbtn'>短信验证码</a>
                            <a class="m2-userSettings-telSubmit" href="javascript:void(0)" id='vp-voicebtn'>语音验证码</a>
                            <span class="m2-userSettingshide-warning" style='margin-left: 80px;margin-top: 10px;display: none;' id='vp-warn'><em></em>请输入正确的手机号。</span>
                            <span class="m2-userSettingshide-success m2-userSettingshide-successTel" style='display: none' id='vp-msg'><em></em>验证码已发出,如果您在2分钟之内未收到验证码,请再次获取验证码</span>
                        </li>
                        <li style="display:none;" id='verifyphoneli'>
                            <span class="m2-userSettingshide-nor"><u>*</u>验证图码：</span>
                            <input type="text" placeholder="请输入图片验证码" type="text" id='vp-vpic'>
                            <img src="code.png" width="104" height="42" style="cursor: pointer" onclick="document.getElementById('reverifyCode').src='code.png?time='+Math.random();void(0);" id="reverifyCode">
                            <span class="m2-userSettingshide-warning"></span>
                        </li>
                        <li>
                            <span class="m2-userSettingshide-nor"><u>*</u>验证码：</span>
                            <input type="text" placeholder="请输入收到的验证码" type="text" id='vp-text'>
                            <!-- 							<span class="m2-userSettingshide-warning"><em></em>警示文字警示文字</span> -->
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
                        <span class="m2-userSettingsshow-link"><a href="home-register-openbankid.html" target="_blank">认证</a></span>
                    </div>
                </li>
                <li class="m2-userCentersettings-step3 m2-userSettings-step">
                    <div class="m2-userSettings-stepShow">
                        <i></i>
                        <span class="m2-userSettingsshow-tit">徽商交易密码</span>
						<span class="m2-userSettingsshow-exp">交易密码需跳转徽商交易系统页面输入，适用于投资验证及提现验证
						</span>
                        <span class="m2-userSettingsaut m2-userSettingsaut-fal"  ><b></b>未开户</span>
                        <span class="m2-userSettingsshow-link"><a href="home-register-openbankid.html">开户</a></span>					</div>
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
                        <span class="m2-userSettingsshow-tit">电子邮箱</span>
                        <span class="m2-userSettingsshow-exp">获取最新的投资讯息和账户信息变动通知</span>
                        <span class="m2-userSettingsaut m2-userSettingsaut-fal" id='email_status'><b></b>未认证</span>
                        <span class="m2-userSettingsshow-link"><a href="javascript:void(0)">认证</a></span>
                    </div>
                    <ul class="m2-userSettings-setpHide" style="display:none;" id='email_status_2'>
                        <li class="m2-userSettingshide-tit">
                            请填写您的电子邮箱，点击下面的按钮发送激活邮件，登陆您的电子邮箱，完成验证。						</li>
                        <li>
                            <span class="m2-userSettingshide-nor"><u>*</u>邮箱：</span>
                            <input type="text" placeholder="请输入邮箱地址" type="text" value="" id="verifyemail">
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
                        <span class="m2-userSettingsshow-exp">上次登录时间：</span>
                        <span class="m2-userSettingsaut m2-userSettingsaut-tur"><b></b>已设置</span>
                        <span class="m2-userSettingsshow-link"><a href="javascript:void(0)">修改</a></span>
                    </div>
                    <ul class="m2-userSettings-setpHide">
                        <!-- 						<li class="m2-userSettingshide-tit">可添加说明文字可添加说明文字可添加说明文字</li> -->
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
                    <!--
                        <div class="m2-userSettings-stepShow">
                            <i></i>
                            <span class="m2-userSettingsshow-tit">问卷调查</span>
                            <span class="m2-userSettingsshow-exp" id='questionnaire-text'>
                                                                填满问卷调查立即得到100钱帮币						</span>
                            <span class="m2-userSettingsaut m2-userSettingsaut-fal" id='questionnaire_status'><b></b>未填写</span>
                            <span class="m2-userSettingsshow-link"><a href="javascript:void(0)">填写</a></span>
                        </div>
                        <ul class="m2-userSettings-setpHide" id='questionnaire'>
                            <li class="m2-userSettingshide-tit">爱亲，小爱为您准备了100钱帮币，只需完成下面的问卷就可获得哦O(∩_∩)O~一分钟领100币，想想都划算！</li>
                            <li class="m2-userSettingshide-q">
                                <span class="m2-userSettingshide-nor">1. </span>
                                <span class="m2-userSettingshide-que">您所从事的行业类型？（单选）</span>
                            </li>
                            <li class="m2-userSettingshide-a" id='q-1'>
                                <ul class="m2-userSet-queSelitemUl">
                                    <li class="m2-userSet-queSelitem" >
                                        <input type="radio" name="m2-uque1" id="m2-uque1-1" value="">
                                        <label for="m2-uque1-1">A. 计算机、互联网、通讯、电子</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem" >
                                        <input type="radio" name="m2-uque1" id="m2-uque1-2" value="">
                                        <label for="m2-uque1-2">B. 金融、保险、财务管理</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem">
                                        <input type="radio" name="m2-uque1" id="m2-uque1-3" value="">
                                        <label for="m2-uque1-3">C. 广告、市场、媒体、公关、艺术</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem">
                                        <input type="radio" name="m2-uque1" id="m2-uque1-4" value="">
                                        <label for="m2-uque1-4">D. 政府、非营利机构</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem">
                                        <input type="radio" name="m2-uque1" id="m2-uque1-5" value="">
                                        <label for="m2-uque1-5">E. 咨询、法律、培训、教育、科研</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem">
                                        <input type="radio" name="m2-uque1" id="m2-uque1-6" value="">
                                        <label for="m2-uque1-6">F. 贸易、快消、制造</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem">
                                        <input type="radio" name="m2-uque1" id="m2-uque1-7" value="">
                                        <label for="m2-uque1-7">G. 服务、医疗卫生</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem">
                                        <input type="radio" name="m2-uque1" id="m2-uque1-8" value="">
                                        <label for="m2-uque1-8">H. 学生</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem">
                                        <input type="radio" name="m2-uque1" id="m2-uque1-9" value="">
                                        <label for="m2-uque1-9">I. 退休</label>
                                    </li>
                                        <li class="m2-userSet-queSelitem">
                                        <input type="radio" name="m2-uque1" id="m2-uque1-10" value="">
                                        <label for="m2-uque1-10">J. 其他</label>
                                    </li>
                                </ul>

                            </li>
                            <li class="m2-userSettingshide-q">
                                <span class="m2-userSettingshide-nor">2. </span>
                                <span class="m2-userSettingshide-que">您的主要理财诉求是什么？（单选）</span>
                            </li>
                            <li class="m2-userSettingshide-a" id='q-2'>
                                <ul class="m2-userSet-queSelitemUl" >
                                    <li class="m2-userSet-queSelitem" >
                                        <input type="radio" name="m2-uque2" id="m2-uque2-1" value="">
                                        <label for="m2-uque2-1">A. 小两口理财</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem">
                                        <input type="radio" name="m2-uque2" id="m2-uque2-2" value="">
                                        <label for="m2-uque2-2">B. 三口之家</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem">
                                        <input type="radio" name="m2-uque2" id="m2-uque2-3" value="">
                                        <label for="m2-uque2-3">C. 学生理财</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem">
                                        <input type="radio" name="m2-uque2" id="m2-uque2-4" value="">
                                        <label for="m2-uque2-4">D. 退休理财</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem">
                                        <input type="radio" name="m2-uque2" id="m2-uque2-5" value="">
                                        <label for="m2-uque2-5">E. 其他</label>
                                    </li>
                                </ul>
                            </li>
                            <li class="m2-userSettingshide-q">
                                <span class="m2-userSettingshide-nor">3. </span>
                                <span class="m2-userSettingshide-que">您采用过的理财方式有哪些？（多选）</span>
                            </li>
                            <li class="m2-userSettingshide-a"  id='q-3'>
                                <ul class="m2-userSet-queSelitemUl" >
                                    <li class="m2-userSet-queSelitem" >
                                        <input type="checkbox" name="m2-uque3" id="m2-uque3-1" value="">
                                        <label for="m2-uque3-1">A. 银行理财</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem" >
                                        <input type="checkbox" name="m2-uque3" id="m2-uque3-2" value="">
                                        <label for="m2-uque3-2">B. 股票、外汇、期货</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem" >
                                        <input type="checkbox" name="m2-uque3" id="m2-uque3-3" value="">
                                        <label for="m2-uque3-3">C. 保险理财</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem" >
                                        <input type="checkbox" name="m2-uque3" id="m2-uque3-4" value="">
                                        <label for="m2-uque3-4">D. 基金、债券</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem" >
                                        <input type="checkbox" name="m2-uque3" id="m2-uque3-5" value="">
                                        <label for="m2-uque3-5">E. 信托</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem">
                                        <input type="checkbox" name="m2-uque3" id="m2-uque3-6" value="">
                                        <label for="m2-uque3-6">F. 各类“宝宝”</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem">
                                        <input type="checkbox" name="m2-uque3" id="m2-uque3-7" value="">
                                        <label for="m2-uque3-7">G. 网贷</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem">
                                        <input type="checkbox" name="m2-uque3" id="m2-uque3-8" value="">
                                        <label for="m2-uque3-8">H. 其他</label>
                                    </li>
                                </ul>

                            </li>
                            <li class="m2-userSettingshide-q">
                                <span class="m2-userSettingshide-nor">4. </span>
                                <span class="m2-userSettingshide-que">您是如何了解到爱钱帮的？（单选）</span>
                            </li>
                            <li class="m2-userSettingshide-a"  id='q-4'>
                                <ul class="m2-userSet-queSelitemUl" >
                                    <li class="m2-userSet-queSelitem" >
                                        <input type="radio" name="m2-uque4" id="m2-uque4-1" value="">
                                        <label for="m2-uque4-1">A. 亲戚朋友推荐</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem" >
                                        <input type="radio" name="m2-uque4" id="m2-uque4-2" value="">
                                        <label for="m2-uque4-2">B. 网站搜索</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem">
                                        <input type="radio" name="m2-uque4" id="m2-uque4-3" value="">
                                        <label for="m2-uque4-3">C. 电视媒体</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem" >
                                        <input type="radio" name="m2-uque4" id="m2-uque4-4" value="">
                                        <label for="m2-uque4-4">D. 报纸杂志</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem">
                                        <input type="radio" name="m2-uque4" id="m2-uque4-5" value="">
                                        <label for="m2-uque4-5">E. 微信、微博等新媒体</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem">
                                        <input type="radio" name="m2-uque4" id="m2-uque4-6" value="">
                                        <label for="m2-uque4-6">F. 线下活动</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem">
                                        <input type="radio" name="m2-uque4" id="m2-uque4-7" value="">
                                        <label for="m2-uque4-7">G. 其他</label>
                                    </li>
                                </ul>
                            </li>
                            <li class="m2-userSettingshide-q">
                                <span class="m2-userSettingshide-nor">5. </span>
                                <span class="m2-userSettingshide-que">您在网贷平台投资时，最关心哪些因素？（多选）</span>
                            </li>
                            <li class="m2-userSettingshide-a"  id='q-5'>
                                <ul class="m2-userSet-queSelitemUl">
                                    <li class="m2-userSet-queSelitem">
                                        <input type="checkbox" name="m2-uque5" id="m2-uque5-1" value="">
                                        <label for="m2-uque5-1">A. 投资收益</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem">
                                        <input type="checkbox" name="m2-uque5" id="m2-uque5-2" value="">
                                        <label for="m2-uque5-2">B. 平台安全</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem">
                                        <input type="checkbox" name="m2-uque5" id="m2-uque5-3" value="">
                                        <label for="m2-uque5-3">C. 风险控制</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem" >
                                        <input type="checkbox" name="m2-uque5" id="m2-uque5-4" value="">
                                        <label for="m2-uque5-4">D. 借贷模式</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem">
                                        <input type="checkbox" name="m2-uque5" id="m2-uque5-5" value="">
                                        <label for="m2-uque5-5">E. 操作便利</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem" >
                                        <input type="checkbox" name="m2-uque5" id="m2-uque5-6" value="">
                                        <label for="m2-uque5-6">F. 服务费用</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem" >
                                        <input type="checkbox" name="m2-uque5" id="m2-uque5-7" value="">
                                        <label for="m2-uque5-7">G. 用户体验</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem">
                                        <input type="checkbox" name="m2-uque5" id="m2-uque5-8" value="">
                                        <label for="m2-uque5-8">H. 隐私保护</label>
                                    </li>
                                </ul>
                            </li>
                            <li class="m2-userSettingshide-q">
                                <span class="m2-userSettingshide-nor">6. </span>
                                <span class="m2-userSettingshide-que">您乐意接受的网贷理财收益区间是？（单选）</span>
                            </li>
                            <li class="m2-userSettingshide-a"  id='q-6'>
                                <ul class="m2-userSet-queSelitemUl">
                                    <li class="m2-userSet-queSelitem" >
                                        <input type="radio" name="m2-uque6" id="m2-uque6-1" value="">
                                        <label for="m2-uque6-1">A. 7~8%</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem" >
                                        <input type="radio" name="m2-uque6" id="m2-uque6-2" value="">
                                        <label for="m2-uque6-2">B. 8~10%</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem" >
                                        <input type="radio" name="m2-uque6" id="m2-uque6-3" value="">
                                        <label for="m2-uque6-3">C. 10%~12%</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem" >
                                        <input type="radio" name="m2-uque6" id="m2-uque6-4" value="">
                                        <label for="m2-uque6-4">D. 12%~15%</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem" >
                                        <input type="radio" name="m2-uque6" id="m2-uque6-5" value="">
                                        <label for="m2-uque6-5">E. 15%~18%</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem" >
                                        <input type="radio" name="m2-uque6" id="m2-uque6-6" value="">
                                        <label for="m2-uque6-6">F. 18%以上</label>
                                    </li>
                                </ul>
                            </li>
                            <li class="m2-userSettingshide-q">
                                <span class="m2-userSettingshide-nor">7. </span>
                                <span class="m2-userSettingshide-que">对于一款网贷产品，您偏好的投资期限是多长？（单选）</span>
                            </li>
                            <li class="m2-userSettingshide-a"  id='q-6'>
                                <ul class="m2-userSet-queSelitemUl" >
                                    <li class="m2-userSet-queSelitem" >
                                        <input type="radio" name="m2-uque7" id="m2-uque7-1" value="">
                                        <label for="m2-uque7-1">A. 1个月内</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem" >
                                        <input type="radio" name="m2-uque7" id="m2-uque7-2" value="">
                                        <label for="m2-uque7-2">B. 3-4个月</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem">
                                        <input type="radio" name="m2-uque7" id="m2-uque7-3" value="">
                                        <label for="m2-uque7-3">C. 6-12个月</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem">
                                        <input type="radio" name="m2-uque7" id="m2-uque7-4" value="">
                                        <label for="m2-uque7-4">D. 12个月以上</label>
                                    </li>
                                </ul>
                            </li>
                            <li class="m2-userSettingshide-q">
                                <span class="m2-userSettingshide-nor">8. </span>
                                <span class="m2-userSettingshide-que">您是否愿意推荐爱钱帮给自己的好友，邀请对方一同理财？（单选）</span>
                            </li>
                            <li class="m2-userSettingshide-a"  id='q-8'>
                                <ul class="m2-userSet-queSelitemUl">
                                    <li class="m2-userSet-queSelitem">
                                        <input type="radio" name="m2-uque8" id="m2-uque8-1" value="">
                                        <label for="m2-uque8-1">A. 愿意</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem">
                                        <input type="radio" name="m2-uque8" id="m2-uque8-2" value="">
                                        <label for="m2-uque8-2">B. 不愿意</label>
                                    </li>
                                </ul>
                            </li>
                            <li class="m2-userSettingshide-q">
                                <span class="m2-userSettingshide-nor">9. </span>
                                <span class="m2-userSettingshide-que">您喜欢使用什么工具投标？（单选）</span>
                            </li>
                            <li class="m2-userSettingshide-a"  id='q-9'>
                                <ul class="m2-userSet-queSelitemUl" >
                                    <li class="m2-userSet-queSelitem">
                                        <input type="radio" name="m2-uque9" id="m2-uque9-1" value="">
                                        <label for="m2-uque9-1">A. 电脑</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem">
                                        <input type="radio" name="m2-uque9" id="m2-uque9-2" value="">
                                        <label for="m2-uque9-2">B. 手机APP</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem">
                                        <input type="radio" name="m2-uque9" id="m2-uque9-3" value="">
                                        <label for="m2-uque9-3">C. 电脑和手机APP都可以</label>
                                    </li>
                                </ul>
                            </li>
                                <li class="m2-userSettingshide-q">
                                <span class="m2-userSettingshide-nor">10. </span>
                                <span class="m2-userSettingshide-que">您的家庭年收入规模？（单选）</span>
                            </li>
                            <li class="m2-userSettingshide-a"  id='q-10'>
                                <ul class="m2-userSet-queSelitemUl" >
                                    <li class="m2-userSet-queSelitem">
                                        <input type="radio" name="m2-uque10" id="m2-uque10-1" value="">
                                        <label for="m2-uque10-1">A. 10万元以内</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem">
                                        <input type="radio" name="m2-uque10" id="m2-uque10-2" value="">
                                        <label for="m2-uque10-2">B. 10万元~20万元</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem">
                                        <input type="radio" name="m2-uque10" id="m2-uque10-3" value="">
                                        <label for="m2-uque10-3">C. 20万元~50万元</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem">
                                        <input type="radio" name="m2-uque10" id="m2-uque10-4" value="">
                                        <label for="m2-uque10-4">D. 50万元~100万元</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem">
                                        <input type="radio" name="m2-uque10" id="m2-uque10-5" value="">
                                        <label for="m2-uque10-5">E. 100万元~200万元</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem">
                                        <input type="radio" name="m2-uque10" id="m2-uque10-6" value="">
                                        <label for="m2-uque10-6">F. 200万元以上</label>
                                    </li>
                                </ul>
                            </li>
                            <li class="m2-userSettingshide-q">
                                <span class="m2-userSettingshide-nor">11. </span>
                                <span class="m2-userSettingshide-que">您喜欢的投标时间？（可多选）</span>
                            </li>
                            <li class="m2-userSettingshide-a"  id='q-11'>
                                <ul class="m2-userSet-queSelitemUl" >
                                    <li class="m2-userSet-queSelitem">
                                        <input type="checkbox" name="m2-uque11" id="m2-uque11-1" value="">
                                        <label for="m2-uque11-1">A. 上午8点</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem">
                                        <input type="checkbox" name="m2-uque11" id="m2-uque11-2" value="">
                                        <label for="m2-uque11-2">B. 上午8-10点</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem">
                                        <input type="checkbox" name="m2-uque11" id="m2-uque11-3" value="">
                                        <label for="m2-uque11-3">C. 上午10-12点</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem">
                                        <input type="checkbox" name="m2-uque11" id="m2-uque11-4" value="">
                                        <label for="m2-uque11-4">D. 中午12-14点</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem">
                                        <input type="checkbox" name="m2-uque11" id="m2-uque11-5" value="">
                                        <label for="m2-uque11-5">E. 下午14-18点</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem">
                                        <input type="checkbox" name="m2-uque11" id="m2-uque11-6" value="">
                                        <label for="m2-uque11-6">F. 晚上18-22点</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem">
                                        <input type="checkbox" name="m2-uque11" id="m2-uque11-7" value="">
                                        <label for="m2-uque11-7">G. 晚上22点-24点</label>
                                    </li>
                                    <li class="m2-userSet-queSelitem">
                                        <input type="checkbox" name="m2-uque11" id="m2-uque11-8" value="">
                                        <label for="m2-uque11-8">H. 随时</label>
                                    </li>
                                </ul>
                            </li>
                            <li class="m2-userSettingshide-btn question_subbtn"><a href="javascript:void(0)" id='questionnaire-btn'>提交</a></li>
                        </ul>-->
                    <div class="m2-userSettings-stepShow">
                        <i></i>
                        <span class="m2-userSettingsshow-tit">用户名修改</span>
                        <span class="m2-userSettingsshow-exp">你可以通过此功能修改用户名</span>
                        <span class="m2-userSettingsaut m2-userSettingsaut-tur"><b></b>未修改</span>
                        <span class="m2-userSettingsshow-link"><a href="javascript:void(0)">修改</a></span>
                    </div>

                    <ul class="m2-userSettings-setpHide">
                        <li class="m2-userSettingshide-tit">用户名只允许字母、数字、下划线组成，首位只能为字母，且至少需要 6 个字符。</li>
                        <li>
                            <span class="m2-userSettingshide-nor">用户名：</span><input placeholder="请输入用户名" type="text" id='usernametext'>
                            <span class="m2-userSettingshide-warning" id='usernamewarn'></span>
                        </li>
                        <li class="m2-userSettingshide-btn"><a href="javascript:void(0)" onclick='changeUserName()'>修改</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <script type="text/javascript" src="statics/home2/js/HMZCity.json?20160520"></script>
    <script type="text/javascript">
        $(function(){
            $user_type=1;
            //点击修改按钮展开选项
            $('.m2-userSettings-setpHide').hide();
            $('.m2-userSettingsshow-link a').click(function(){
                $(this).parents('.m2-userSettings-stepShow').siblings('.m2-userSettings-setpHide').toggle(500);
            });
            setVerifyStatus();
            bindphone();
            setPassword();
            setAddress();
            verifyemail();
            getQuestionnaire();
            hsChangePassWord();

            function getQueryString(name) {
                var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
                var r = window.location.search.substr(1).match(reg);
                if (r != null) {
                    return unescape(r[2]);
                }
                return null;
            }


            var xl=getQueryString("isXl");
            if(xl=="1"){
                $("#hsmmsz").trigger("click");
            }
            var xg=getQueryString("isXg");
            if(xg=="1"){
                $("#hsmmxg").trigger("click");
            }
        });

        function setVerifyStatus(){

            var id_status = 0;
            var address_status = 0;
            var email_status = 0;
            var phone_status = 1;
            var questionnaire_status = 0;
            var setword_status=0;
            var i = Number(id_status)+Number(phone_status)+Number(email_status);

            if(i == 1){
                $('#safe_level').text('低');
            }else if (i == 2){
                $('#safe_level').text('中');
            }else if (i == 3){
                $('#safe_level').text('高');
            }else{
                $('#safe_level').text('极低');
            }
            var j = 0;
            $('.m2-levelIcon-fal').each(function(){
                if(j < i){
                    $(this).prop('class','m2-levelIcon-tur');
                    j++;
                }
            });
            if(id_status == 1){
                $('#id_status').removeClass('m2-userSettingsaut-fal');
                $('#id_status').addClass('m2-userSettingsaut-tur');
                $('#id_status').html('<b></b>已认证');
                $('#id_status').next('span').find('a').text('查看');
                $('#id_status').next('span').find('a').prop('href','#');
                $('#tid_status').removeClass('m2-userSettingsaut-fal');
                $('#tid_status').addClass('m2-userSettingsaut-tur');
                $('#tid_status').html('<b></b>已认证');
                $('#tid_status').next('span').find('a').text('查看');
                $('#tid_status').next('span').find('a').prop('href','#');
            }
            if(phone_status == 1){
                $('#phone_status').removeClass('m2-userSettingsaut-fal');
                $('#phone_status').addClass('m2-userSettingsaut-tur');
                $('#phone_status').html('<b></b>已绑定');
                $('#phone_status').next('span').find('a').text('修改');
                $('#phone_status_2').remove();
                if(3 < 0){
                    $('#verifyphoneli').show();
                }
            }
            if(3 < 0){
                $('#verifyphoneli').show();
            }
            if(email_status == 1){
                $('#email_status').removeClass('m2-userSettingsaut-fal');
                $('#email_status').addClass('m2-userSettingsaut-tur');
                $('#email_status').html('<b></b>已验证');
                $('#email_status').next('span').find('a').text('修改');
            }
            if(address_status == 1){
                $('#address_status').removeClass('m2-userSettingsaut-fal');
                $('#address_status').addClass('m2-userSettingsaut-tur');
                $('#address_status').html('<b></b>已添加');
                $('#address_status').next('span').find('a').text('修改');
            }
            if(questionnaire_status == 1){
                $('#questionnaire_status').removeClass('m2-userSettingsaut-fal');
                $('#questionnaire_status').addClass('m2-userSettingsaut-tur');
                $('#questionnaire_status').html('<b></b>已填写');
                $('#questionnaire_status').next('span').find('a').text('查看');
                $('#questionnaire-text').text('因时制宜，期待每一次改变');
                $('.question_subbtn').hide();
            }
            if(getParam('phone')==1){
                $('#phone_status').next('span').find('a').click();
            }
            if(getParam('email')==1){
                $('#email_status').next('span').find('a').click();
            }
            if(getParam('hspassword')==1){
                $('#email_status').next('span').find('a').click();
            }
        }

        function bindphone(){

            var flag = false;
            var t1=0,t2=0;
            var reg = /^1\d{10}$/;

            if(reg.test($('#vp-phonenum').val())){
                flag = true;
            }else{
                flag = false;
            }
            $('#vp-phonenum').keyup(function(){
                if(reg.test($('#vp-phonenum').val())){
                    $('#vp-warn').hide();
                    flag = true;
                }else{
                    $('#vp-warn').show();
                    flag = false;
                }
            });
            $('#vp-textbtn').click(function(){
                t2 = Date.now();
                if(t2-t1 > 60*1000 && flag){
                    t1 = Date.now();
                    $.ajax({
                        url:"/usercenter-Accountcontrol-sendphone",
                        type:"POST",
                        data:{
                            cellphone:$('#vp-phonenum').val(),
                            vcode:$('#vp-vpic').val()
                        },
                        success:function(data){
                            var obj = eval('('+data+')');
                            if(obj.status == 2){
                                $('#vp-msg').show();
                                dialog(obj);
                            }else{
                                dialog(obj);
                            }
                        }
                    });
                    if($(this).hasClass('m2-userSettings-telSubmit')){
                        $(this).removeClass('m2-userSettings-telSubmit');
                        $(this).addClass('m2-userSettings-telSubmit-disabled');
                        setTimeout(function(){
                            $('#vp-textbtn').removeClass('m2-userSettings-telSubmit-disabled');
                            $('#vp-textbtn').addClass('m2-userSettings-telSubmit');
                            $('#vp-msg').hide();
                        },60000);
                    }
                }
            });
            $('#vp-voicebtn').click(function(){
                t2 = Date.now();
                if(t2-t1 > 60*1000 && flag){
                    t1 = Date.now();
                    $.ajax({
                        url:"/usercenter-Accountcontrol-sendvoice",
                        type:"POST",
                        data:{
                            cellphone:$('#vp-phonenum').val(),
                            vcode:$('#vp-vpic').val()
                        },
                        success:function(data){
                            obj = eval('('+data+')');
                            if(obj.status == 2){
                                $('#vp-msg').show();
                                dialog(obj);
                            }else{
                                dialog(obj);
                            }
                        }
                    });
                    if($(this).hasClass('m2-userSettings-telSubmit')){
                        $(this).removeClass('m2-userSettings-telSubmit');
                        $(this).addClass('m2-userSettings-telSubmit-disabled');
                        setTimeout(function(){
                            $('#vp-voicebtn').removeClass('m2-userSettings-telSubmit-disabled');
                            $('#vp-voicebtn').addClass('m2-userSettings-telSubmit');
                            $('#vp-msg').hide();
                        },60000);
                    }
                }
            });
            $('#vp-submit').click(function(){
                if(flag){
                    t1 = Date.now();
                    $.ajax({
                        url:"/usercenter-Accountcontrol-verifyPhone",
                        type:"POST",
                        data:{
                            cellphone:$('#vp-phonenum').val(),
                            code:$('#vp-text').val()
                        },
                        success:function(data){
                            obj = eval('('+data+')');
                            dialog(obj);
                        }
                    });
                }
            });
        }

        function setAddress(){

            var flag = false;

            $('.addr_info').keyup(function(){
                var addrMsg=$(this).attr('id');
                var addrMsgValue=$(this).val();
                if(addrMsg == 'addr_consignee'){
                    if(isNaN(addrMsgValue)){
                        $(this).next('span').html('');
                        flag = true;
                    }else{
                        $(this).next('span').html('<em></em>收货人格式不正确。');
                        flag = false;
                    }
                } else if(addrMsg == 'addr_address'){
                    if(isNaN(addrMsgValue)){
                        $(this).next('span').html('');
                        flag = true;
                    }else{
                        $(this).next('span').html('<em></em>请输入正确的地址。');
                        flag = false;
                    }
                } else if(addrMsg == 'addr_phone'){
                    re = /^1\d{10}$/;
                    if(re.test(addrMsgValue)){
                        $(this).next('span').html('');
                        flag = true;
                    }else{
                        $(this).next('span').html('<em></em>请输入正确的手机号。');
                        flag = false;
                    }
                }
            });

            $('#newaddress-btn').click(function(){
                if($("#lmkselect1 option:selected").attr("data") == 'all'){
                    return false;
                }
                if($("#lmkselect2 option:selected").attr("data") == 'all'){
                    return false;
                }
                if($("#lmkselect3 option:selected").attr("data") == 'all'){
                    return false;
                }
                if(flag){
                    $.ajax({
                        url:"/usercenter-Accountcontrol-setAddress",
                        type:"POST",
                        data:{
                            addr_consignee:$('#addr_consignee').val(),
                            addr_province:$("#lmkselect1 option:selected").text(),
                            addr_city:$("#lmkselect2 option:selected").text(),
                            addr_area:$("#lmkselect3 option:selected").text(),
                            addr_address:$('#addr_address').val(),
                            addr_phone:$('#addr_phone').val()
                        },
                        success:function(data){
                            obj = eval('('+data+')');
                            dialog(obj);
                        }
                    });
                }
            });
        }


        function setPassword(){

            var flag1 = false;
            var flag2 = false;
            var flag3 = false;

            $('#oldpass').keyup(function(){
                if($('#oldpass').val().length > 5 && $('#oldpass').val().length < 16){
                    $('#oldpass').next('span').html('');
                    flag1 = true;
                }else{
                    $('#oldpass').next('span').html('<em></em>密码需为6-15常用英文字母或数字。');
                    flag1 = false;
                }
            });
            $('#newpass1').keyup(function(){
                if($('#newpass1').val().length > 5 && $('#newpass1').val().length < 16){
                    $('#newpass1').next('span').html('');
                    flag2 = true;
                }else{
                    $('#newpass1').next('span').html('<em></em>密码需为6-15常用英文字母或数字。');
                    flag2 = false;
                }
            });
            $('#newpass2').keyup(function(){
                if($('#newpass2').val() == $('#newpass1').val()){
                    $('#newpass2').next('span').html('');
                    flag3 = true;
                }else{
                    $('#newpass2').next('span').html('<em></em>两次输入密码须一致！');
                    flag3 = false;
                }
            });
            $('#setpass-btn').click(function(){

                if(flag1 && flag2 && flag3){
                    $.ajax({
                        url:"/usercenter-Accountcontrol-setPassWord",
                        type:"POST",
                        data:{
                            oldpass:$('#oldpass').val(),
                            newpass:$('#newpass2').val()
                        },
                        success:function(data){
                            obj = eval('('+data+')');
                            dialog(obj);
                            $('#oldpass').val('');
                            $('#newpass1').val('');
                            $('#newpass2').val('');
                        }
                    });
                }
            });
        }

        function verifyemail(){

            var flag = false;
            var reg = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;

            if(reg.test($('#verifyemail').val())){
                flag = true;
            }else{
                flag = false;
            }

            $('#verifyemail').keyup(function(){
                if(reg.test($('#verifyemail').val())){
                    $('#verifyemail').next('span').html('');
                    flag = true;
                }else{
                    $('#verifyemail').next('span').html('<em></em>请输入正确的邮箱地址！');
                    flag = false;
                }
            });

            $('#verifyemail-btn').click(function(){
                if(flag){
                    $.ajax({
                        url:"/usercenter-Accountcontrol-sendEmail",
                        type:"POST",
                        data:{
                            user_email:$('#verifyemail').val()
                        },
                        success:function(data){
                            obj = eval('('+data+')');
                            dialog(obj);
                        }
                    });
                }
            });
        }
        //问卷调查
        function getQuestionnaire(){

            $('#questionnaire-btn').click(function(){
                var anwser = '';
                var flag = true;
                $('#questionnaire ul').each(function(){
                    if($(this).find('input:checked').size()==0){
                        flag = false;
                        var obj = {};
                        obj['status'] = 0;
                        obj['msg'] = '您需要填写全部问题才能提交';
                        dialog(obj);
                        return;
                    }
                });
                $('#questionnaire li').has('ul').each(function(){
                    $(this).find('input').each(function(){
                        if($(this).prop("checked")){
                            anwser += $(this).next('label').text().substr(0,1)+':';
                        }
                    });
                    anwser += ',';
                });
                if(flag){
                    $.ajax({
                        url:"/usercenter-Accountcontrol-setQuestionnaire",
                        type:"POST",
                        data:{
                            anwser:anwser
                        },
                        success:function(data){
                            obj = eval('('+data+')');
                            dialog(obj);
                        }
                    });
                }
            });

            oldanwser = '';
            anwserobj = oldanwser.split(',');
            $('#questionnaire li').has('ul').each(function(i){
                if(anwserobj[i]){
                    var subanwser = anwserobj[i].split(':');
                    $(this).find('input').each(function(){
                        for(var j in subanwser){
                            if(subanwser[j] == $(this).next('label').text().substr(0,1)){
                                $(this).prop("checked","checked");
                            }
                        }
                    });
                }
            });


        }

        function closeDialog(){
            $('.m2-userCentercommon-confirm').hide();
            $('.m2-userCentercommon-bg').hide();
        }

        function dialog(obj){
            var dom = '<span class="m2-userCentercommon-confirmClose" onclick="closeDialog()"></span>';
            if(obj['status']==1 || obj['status']==2){
                dom += '<p class="m2-userCommon-confirmSuc"><i></i>';
            }else{
                dom += '<p class="m2-userCommon-confirmWar"><i></i>';
            }
            if(obj['msg']){
                dom += obj['msg']+'</p>';
            }else if(obj['message']){
                dom += obj['message']+'</p>';
            }else{
                return;
            }
            if(obj['status']==1){
                dom += '<p class="m2-userCommon-confirmBtn"><a class="m2-user-confirmBtn" onclick="window.location.reload();">确&nbsp;定</a></p>';
            }else if(obj['status']==2){
                dom += '<p class="m2-userCommon-confirmBtn"><a class="m2-user-confirmBtn" onclick="closeDialog()">确&nbsp;定</a></p>';
            }else{
                dom += '<p class="m2-userCommon-confirmBtn"><a class="m2-user-confirmBtn" onclick="closeDialog()">确&nbsp;定</a></p>';
            }
            $('.m2-userCentercommon-confirm').html(dom);
            $('.m2-userCentercommon-confirm').show();
            $('.m2-userCentercommon-bg').show();
        }

        //修改用户名
        function changeUserName(){

            var username = $('#usernametext').val().trim();
            if(!userNameCheck(username)){
                return;
            }
            $.ajax({
                url: '/usercenter-Accountcontrol-setUserName',
                data: {
                    username: username
                },
                success: function(data){
                    var obj = eval('('+data+')');
                    if(obj['success']){
                        obj['status'] = 1;
                        dialog(obj);
                    }else{
                        userNameWarn(obj['msg']);
                    }
                }
            });
        }

        //用户名变化
        $('#usernametext').keyup(function(){
            userNameCheck($(this).val());
        });

        //用户名检查
        function userNameCheck(username){

            var patten1 = /^([0-9]|[a-z]|[A-Z]|_)+$/;
            var patten2 = /^([a-z]|[A-Z])/;
            var patten3 = /^.{6,15}$/;
            username.trim();

            if(!patten1.test(username)){
                userNameWarn('用户名只允许字母、数字、下划线组成');
                return false;
            }else if(!patten2.test(username)){
                userNameWarn('用户名首位只能为字母');
                return false;
            }else if(!patten3.test(username)){
                userNameWarn('用户名长度应为6-15位');
                return false;
            }else{
                userNameWarn('')
                return true;
            }
        }

        //修改用户名错误
        function userNameWarn(msg){
            if(msg){
                $('#usernamewarn').html('<em></em>'+msg);
            }else{
                $('#usernamewarn').html('');
            }
        }

        function hsChangePassWord(){
            var t1=0
            $('#hsvp-textbtn').click(function(){
                t2 = Date.now();
                if(t2-t1 > 60*1000 ){
                    t1 = Date.now();
                    $.ajax({
                        url:"/usercenter-Accountcontrol-hs_sendphone",
                        type:"POST",
                        data:{
                            cellphone:$('#hsvp-phonenum').val(),
                        },
                        success:function(data){
                            var obj = eval('('+data+')');
                            mo2_regTim();
                            dialog(obj);
                        }
                    });
                    if($(this).hasClass('m2-userSettings-telSubmit')){
                        $(this).removeClass('m2-userSettings-telSubmit');
                        $(this).addClass('m2-userSettings-telSubmit-disabled');
                        setTimeout(function(){
                            $('#hsvp-textbtn').removeClass('m2-userSettings-telSubmit-disabled');
                            $('#hsvp-textbtn').addClass('m2-userSettings-telSubmit');
                        },60000);
                    }
                }
            });
            $('#hsChange-btn').click(function(){
                var hsvp_phonenum=$("#hsvp-phonenum").val();
                var hs_code=$("#hs_code").val();
                var hs_name=$("#hs_name").val();
                var hs_idCard=$("#hs_idCard").val();

                if( $user_type==1){
                    var regu =/(^[0-9]{15}$)|([0-9]{17}([0-9]|X|x)$)/;
                    var re = new RegExp(regu);
                    if (!re.test(hs_idCard)) {
                        var obj=new Array();
                        obj['msg']="身份证格式不正确";
                        obj['status']=0;
                        dialog(obj);
                        return false;
                    }
                }

                if(hs_code==""||hs_name==""|| hs_idCard=="" ){
                    var obj=new Array();
                    obj['msg']="您需要填写全部信息才能提交";
                    obj['status']=0;
                    dialog(obj);
                    return;
                }else{

                    $.ajax({
                        url:"usercenter-Accountcontrol-hs_changePassWord",
                        type:"POST",
                        dataType: "json",
                        data:{
                            hs_code:hs_code,
                            hs_name:hs_name,
                            hs_idCard:hs_idCard,
                            hsvp_phonenum:hsvp_phonenum
                        },
                        success:function(data){
                            if(data.status == 3){
                                window.location.href="/cupdata-Capital-setting";
                            }else{
                                dialog(data);
                            }
                        }
                    });
                }
            });

            // 注册倒计时
            var regTim =60; //剩余时间
            function mo2_regTim(){
                if (regTim>0) {
                    $('#hsvp-textbtn').html(regTim+'秒后重新发送');
                    regTim--;
                    setTimeout(function(){
                        mo2_regTim();
                    } , 1000);
                }
                else if (regTim<=0) {
                    regTim =60;
                    $('#hsvp-textbtn').removeClass('m2-userSettings-telSubmit-disabled');
                    $('#hsvp-textbtn').addClass('m2-userSettings-telSubmit');
                    //$('.mo2-indRegtim').addClass('mo2-regTin-able').removeClass('mo2-regTin-unable');
                    $('#hsvp-textbtn').html('重新发送');
                }
            }


        }
    </script>
    <script type="text/javascript">
        $(function(){
            //初始化省级下拉框
            var str="";
            for(var i=0;i<china.length;i++){
                str+="<option data=" + i +">" + china[i].name + "</option>";
            }
            $("#lmkselect1").append(str);

            //省级下拉框的change事件
            $("#lmkselect1").change(function(){
                $("#lmkselect2").attr("disabled",false);
                $("#lmkselect3").attr("disabled",true);
                var data=$("#lmkselect1").find("option:selected").attr("data");
                $("#lmkselect2 option:not(.all),#lmkselect3 option:not(.all)").remove();
                if(data=="all"){
                    $("#lmkselect2,#lmkselect3").attr("disabled",true);
                }else{
                    data=parseInt(data);
                    str="";
                    for(var i=0;i<china[data].city.length;i++){
                        str+="<option data=" + i + " provice=" + data + ">" + china[data].city[i].name + "</option>";
                    }
                    $("#lmkselect2").append(str);
                }

            });
            //市级下拉框的事件
            $("#lmkselect2").change(function(){
                $("#lmkselect3").attr("disabled",false);
                var data=$("#lmkselect2").find("option:selected").attr("data");
                var provice=parseInt($("#lmkselect2").find("option:selected").attr("provice"));
                $("#lmkselect3 option:not(.all)").remove();
                if(data=="all"){
                    $("#lmkselect3").attr("disabled",true);
                }else{
                    data=parseInt(data);
                    str="";
                    for(var i=0;i<china[provice].city[data].area.length;i++){
                        str+="<option>" + china[provice].city[data].area[i] + "</option>";
                    }
                    $("#lmkselect3").append(str);
                }
            });
            //初始化默认值
            var provice="";
            var city="";
            var area="";
            if(provice!=""){
                // 循环省
                for(var i=0;i<china.length;i++){
                    if(china[i].name==provice){
                        $("#lmkselect1 option[data=" + i +"]").attr("selected",true);
                        //循环得到市
                        str="";
                        for(var j=0;j<china[i].city.length;j++){
                            if (china[i].city[j].name==city) {
                                str+="<option data=" + j + " provice=" + i + " selected>" + china[i].city[j].name + "</option>";
                            }else {
                                str+="<option data=" + j + " provice=" + i + ">" + china[i].city[j].name + "</option>";
                            }
                        }
                        $("#lmkselect2").append(str);
                        //循环得到区
                        str="";
                        var data=parseInt($("#lmkselect2").find("option:selected").attr("data"));
                        for(var j=0;j<china[i].city[data].area.length;j++){
                            if (china[i].city[data].area[j]==area) {
                                str+="<option selected>" + china[i].city[data].area[j] + "</option>";
                            }else {
                                str+="<option>" + china[i].city[data].area[j] + "</option>";
                            }
                        }
                        $("#lmkselect3").append(str);
                        $("#lmkselect2,#lmkselect3").attr("disabled",false);
                        return false;
                    }
                }
            }

        })
    </script>
    </body>
</html>