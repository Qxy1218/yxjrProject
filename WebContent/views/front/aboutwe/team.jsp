<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
	    <meta name="keywords" content="互联网金融,投资理财平台,投资理财,爱钱帮">
	    <meta name="description" content="如果你有梦想，有冲劲，有创造力和执行力，请你加入我们；爱钱帮投资理财平台将给你带来一次在互联网金融行业中拼搏实现理想的机会；让我们一起实现梦想。">
	    <title>管理团队丨关于我们丨理财产品_为您赚钱的互联网金融理财投资平台-爱钱帮 </title>
	    <!--[if lt IE 9]>
	    <script src="statics/newcommon/js/html5shiv.js"></script>
	    <![endif]-->
	    <link  rel="Shortcut  Icon"  href="/Finances/statics/other/lco/smalllog.png">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-commonNew.css">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/home2/css/m2-main.css">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-common.css">
	    <script type="text/javascript" src="/Finances/statics/front/statics/home/js/jquery.min.js"></script>
	    <script type="text/javascript" src="/Finances/statics/front/statics/newcommon/js/common.js"></script>
	</head>
	<body>
		<div class="m2-teamImgbg" style="display:none;"></div>
	    	<div class="m2-teamImgshow" style="display:none;">
	        <i></i>
	        <h4>123123</h4>
	        <img src="/Finances/statics/front/statics/home2/images/1.jpg" alt="">
	    </div>
    	<!-- 右侧边栏start -->
	    <!-- 右侧登录窗口 -->
	    <!--右侧登录框-->
	    <div class="mo2-indexLoginbox" id="right-fix">
	        <!-- 登录注册start -->
	        <div class="mo2-indLogreg" >				<div class="mo2-indLogtab">
	            <ul>
	                <li class="mo2-logTab-unsel mo2-indTab-reg">
	                    <span>注册</span><b></b>
	                </li>
	                <li class="mo2-logTab-sel mo2-indTab-log">
	                    <span>登录</span><b></b>
	                </li>
	            </ul>
	        </div>
	            <!-- 注册start -->
	            <div class="mo2-indRegboxRight" style="display:none;">
	                <div class="mo2-indLogitem" style="margin-bottom:6px;">
	                    <i class="mo2-indLogicon-tel"></i><input class="mo2-indIpt-all" id="regTelRight" maxlength="11" type="text" placeholder="输入手机号码"><b class="mo2-indLogwarRight"><em class="mo2-indlogWar-arr"></em><u></u></b>
	                </div>
	                <div class="mo2-indLogitem" style="margin-bottom:6px;">
	                    <i class="mo2-indLogicon-psw"></i><input class="mo2-indIpt-all m2-ind-banPsw" id="passRight" type="password" placeholder="6-20位数字与字母组合的密码"><b class="mo2-indLogwarRight"><em class="mo2-indlogWar-arr"></em><u></u></b>
	                </div>
	                <div class="mo2-indLogitem-step1">
	                    <div class="mo2-indLogreg-step1">
	                        <i class="mo2-indLogicon-code"></i><input class="mo2-indIptcod-step1" id="vcodeRight" type="text" placeholder="验证码">
	                    </div>
	                    <img class="mo2-indRegcode" src="/Finances/statics/front/statics/home2/images/home-register-VerifyCode.png" onClick="document.getElementById('reverifyCodeRight').src='home-register-VerifyCode.png?time='+Math.random();void(0);" id="reverifyCodeRight"  alt="点击刷新验证码">
	                    <span class="mo2-indReg-refresh">看不清？换一张</span>
	                    <b class="mo2-indLogwarRight"><em class="mo2-indlogWar-arr"></em><u></u></b>
	                </div>
	                <div class="mo2-indReg-btn" id="verifyregcode" onclick="verifycodeRight();" style="margin-top:8px;">
	                    <a class="mo2-indRegbtn-able" href="#">立即注册</a>
	                </div>
	                <div class="mo2-indRegagree">
	                    <i class="mo2-indReg-sel"></i><span>我已阅读并同意</span><b>《爱钱帮注册服务协议》</b>
	                </div>
	            </div>
	            <!-- 注册end -->
	            <!-- 注册step2 start -->
	            <div class="mo2-indRegbox2Right"  style="display:none;" >
	                <div class="mo2-indReg2-con">
	                    <ul>
	                        <li><i class="mo2-indRegicon-step1"></i><span>为了确保您手机可用，请填写您收到的手机动态码。</span></li>
	                        <li><i class="mo2-indRegicon-step2"></i><span>如收不到短信验证码，可点击下面的获取语音验证码。</span></li>
	                    </ul>
	                </div>
	                <div class="mo2-indLogitem">
	                    <i class="mo2-indLogicon-code"></i><input class="mo2-indIpt-half" id="codeRight" type="text" placeholder="验证码">
	                    <span class="mo2-indRegtim mo2-regTin-able"><u>60秒后</u><span>获取手机验证码</span></span>
	                    <b class="mo2-indLogwarRight" style="width:200px;"><em class="mo2-indlogWar-arr"></em><u>错误提示信息</u></b>
	                </div>
	                <div class="mo2-indRegvoice">
	                    <span class="mo2-indRegvoi-btn mo2-indRegvoi-able"><i></i>获取语音验证码</span>
	                </div>
	                <div class="mo2-indReg-btn" onclick="registerRight();" id="verifyregphone"  style="margin-top:8px;">
	                    <a class="mo2-indRegbtn-able"  href="#">立即注册</a>
	                </div>
	            </div>
	            <!-- 注册step2 end -->
	
	            <!-- 登录start -->
	            <div class="mo2-indLogboxRight">
	                <div class="mo2-indLogitem mo2-indLogitem-use" style="margin-bottom:9px;">
	                    <i class="mo2-indLogicon-use"></i><input class="mo2-indIpt-all" type="text" id="user_nameRight" placeholder="用户名/手机号">
	                    <b class="mo2-indLogwar" id="w_username"><em class="mo2-indlogWar-arr"></em><u id="r_usernameRight"></u></b>
	                </div>
	                <div class="mo2-indLogitem mo2-indLogitem-psw" style="margin-bottom:9px;">
	                    <i class="mo2-indLogicon-psw"></i><input class="mo2-indIpt-all m2-ind-banPsw" maxlength="20" id="pass_wordRight" type="password" id="pass_wordRight" placeholder="输入登录密码">
	                    <b class="mo2-indLogwar" id="w_password"><em class="mo2-indlogWar-arr"></em><u id="r_passwordRight"></u></b>
	                </div>
	                <div class="mo2-indLog-code" style="display:none;margin-bottom:8px;">
	                    <div class="mo2-indLogcod-lef">
	                        <i class="mo2-indLogicon-psw"></i>
	                        <input type="text" id="vcodeRight" placeholder="验证码"></div>
	                    <div class="mo2-indLogcod-rig"><img src="/Finances/statics/front/statics/home2/images/home-register-VerifyCode.png" onClick="document.getElementById('reverifyCode').src='home-register-VerifyCode.png?time='+Math.random();void(0);" alt="点击刷新验证码"></div>
	                </div>
	                <div class="mo2-indLog-forget"><a href="forget.html">忘记密码?</a></div>
	                <div style="padding-left: 24px;line-height: 30px;color:red;" id="error-hint"></div>
	                <div class="mo2-indReg-btn">
	                    <a class="mo2-indRegbtn-able" onclick="loginRight();">登录</a>
	                </div>
	            </div>
	            <!-- 登录end -->
	        </div>
	        <!-- 登录注册end -->
	    </div>
	    <!-- 右侧登录窗口 -->
	    <!--add by zml start-->
	    <!--<div id="fixbar" style="width:50px;position:fixed;top:0;right:0px;background:#ff6666;z-index:5;"></div>-->
	
	    <!--右侧悬浮条-->
	    <div id="fixbar">
	        <!-- 右侧边栏顶部 -->
	        <!--右侧上边栏start -->
	        <div class="m2-commonRight2"  id="m2-commonRight">
	            <ul class="m2-comRiglist myclick">
	                <li class="m2-comRigli m2-comRigli-ewm m2-comRigli_new" style="border-top:1px solid #fff;" data="#fixnavbar_one">
	                    <div></div>
	                    <img src="/Finances/statics/front/statics/home2/images/fixed-r1.png" alt="我的账户">
	                    <div class="toAbs">
	                        <div><img src="/Finances/statics/front/statics/home2/images/fixedl-1_v2.png" alt="我的账户"></div>
	                        <div></div>
	                    </div>
	                </li>
	                <li class="m2-comRigli m2-comRigli-tel m2-comRigli_new" data="#fixnavbar_two">
	                    <img src="/Finances/statics/front/statics/home2/images/fixed-r2.png" alt="我的红包">
	                    <div></div>            	<div class="toAbs">
	                    <div><img src="/Finances/statics/front/statics/home2/images/fixedl-2_v2.png" alt="我的红包"></div>
	                    <div></div>
	                </div>
	                </li>
	                <li class="m2-comRigli m2-comRigli-qq m2-comRigli_new" data="#fixnavbar_three">
	                    <img src="/Finances/statics/front/statics/home2/images/fixed-r3.png" alt="我的加息券">
	                    <div></div>            	<div class="toAbs">
	                    <div><img src="/Finances/statics/front/statics/home2/images/fixedl-3_v2.png" alt="我的加息券"></div>
	                    <div></div>
	                </div>
	                </li>
	                <li class="m2-comRigli m2-comRigli-sug m2-comRigli_new" data="#fixnavbar_four">
	                    <img src="/Finances/statics/front/statics/home2/images/fixed-r4.png" alt="站内信息">
	                    <div></div>            	<div class="toAbs">
	                    <div><img src="/Finances/statics/front/statics/home2/images/fixedl-4_v2.png" alt="站内信息"></div>
	                    <div></div>
	                </div>
	                </li>
	            </ul>
	        </div>
	        <!-- 右边侧栏顶部右边弹出 -->
	        <div class="fixbox_bar">
	            <div class="fixnavbar" id="fixnavbar_one">
	                <div class="sumtop">
	                    <div class="top" style="margin: 18px;text-align: center;font-size: 20px;position: relative;"><span style="position: absolute;top: 0;left:-18px">>></span>我的账户</div>
	                    <div class="bottom">
	                        <img src="/Finances/statics/front/statics/home2/images/user-head.png" alt="我的账户">
	                        <div>
	                            <p id ="right_name_info"></p>
	                            <button id="right_recharge">充值</button>
	                        </div>
	                    </div>
	                </div>
	                <hr style="margin:0 10px;"/>
	                <div class="summiddle">
	                    <ul>
	                        <li style="border-top-left-radius:10px;">
	                            <p><span id="right_account_money"></span>元</p>
	                            <span>可用资金</span>
	                        </li>
	                        <li style="border-top-right-radius:10px;">
	                            <p><span id="right_reward_money"></span>元</p>
	                            <span>可用奖励金</span>
	                        </li>
	                    </ul>
	                    <div class="content">
	                        <p>待收本金：<span id="right_total_capital"></span>元</p>
	                        <p>待收收益：<span id="right_total_wait_interest"></span>元</p>
	                    </div>
	                    <p class="lastcontent">资产总计：<span id="right_total_asset"></span>元</p>
	                    <ul style="margin-top:30px;">
	                        <li style="border-top-left-radius:10px;border-bottom-left-radius:10px;">
	                            <p><span id="right_today_earn"></span>元</p>
	                            <span>今日赚取</span>
	                        </li>
	                        <li style="border-top-right-radius:10px;border-bottom-right-radius:10px;">
	                            <p><span id="right_total_reward_normal_interest"></span>元</p>
	                            <span>累计收益</span>
	                        </li>
	                    </ul>
	                </div>
	                <div class="sumbottom" id ="accountCommon_right">查看更多>></div>
	            </div>
	
	            <div class="fixnavbar common" id="fixnavbar_two">
	
	            </div>
	
	            <div class="fixnavbar common" id="fixnavbar_three">
	
	            </div>
	
	            <div class="fixnavbar" id="fixnavbar_four">
	
	            </div>
	        </div>
	
	        <!-- 右侧边栏底部 -->
	        <div class="m2-commonRight">
	            <ul class="m2-comRiglist">
	                <li class="m2-comRigli m2-comRigli-ewm"  style="border-top:1px solid #fff;">
	                    <i class="m2-comRigli-icon"></i>
	                    <span class="m2-comRigli-hov">关注<br>微信</span>
	                    <div class="m2-comRighide m2-comRighide-ewm"><i></i></div>
	                </li>
	                <li class="m2-comRigli m2-comRigli-tel">
	                    <i class="m2-comRigli-icon"></i>
	                    <span class="m2-comRigli-hov">联系<br>我们</span>
	                    <div class="m2-comRighide m2-comRighide-tel">
	                        <div class="m2-comRighide-telSpace"></div>
	                        <b class="m2-comRighide-telBorder"></b>
	                        <div class="m2-comRigtel-lef">
	                            <div class="m2-comRigtel-lefTop">
	                                <input type="text" placeholder="请输入您的手机号"  id='phonenumber'>
	                            </div>
	                            <div class="m2-comRigtel-lefBot">
	                                <input type="text" placeholder="验证码" id="ivrSecurityCode">
	                                <img id="ivrSecurityCodeImg" onclick="getCode()" src="/Finances/statics/front/statics/home2/images/home-register-VerifyCode.png" alt="验证码" title="点击更新验证码">
	                            </div>
	                        </div>
	                        <div class="m2-comRigtel-rig">
	                            <span  onclick='callback()'>免费<br>拨打</span>
	                        </div>
	                    </div>
	                </li>
	                <li class="m2-comRigli m2-comRigli-qq" style="position:relative;">
	
	                    <div id="BizQQWPA" style="width:50px;height:50px;position:absolute;top:0;left:0;z-index:150;">
	
	                    </div>	                <i class="m2-comRigli-icon" style="z-index:100;"></i>
	                    <span class="m2-comRigli-hov" style="z-index:100;">在线<br>客服</span>
	                </li>
	                <li class="m2-comRigli m2-comRigli-sug" style="border-bottom: 1px solid #fff;">
	                    <i class="m2-comRigli-icon"></i>
	                    <span class="m2-comRigli-hov"><a href="guide.html" style="color:#fff;">帮助<br>中心</a></span>
	                </li>
	
	                <li class="m2-comRigli m2-comRigli-top">
	                    <i class="m2-comRigli-icon"></i>
	                    <span class="m2-comRigli-hov">返回<br>顶部</span>
	                </li>
	            </ul>
	        </div>
	    </div>
	    <script type="text/javascript">
	        $(function(){
	            $('#right_recharge').click(function(){
	                window.location.href="#";
	            });
	
	            $(".fixbox_bar").click(function(event){
	                event.stopPropagation();
	            });
	            $('#accountCommon_right').click(function(){
	                window.location.href="usercenter.html";
	            });
	//			$('#redbagCommon_right').click(function(){
	//				window.location.href="usercenter-rewardcontrol-redpacket.html";
	//			});
	//			$('#percentageCommon_right').click(function(){
	//				window.location.href="usercenter-rewardcontrol-interestcoupon.html";
	//			});
	//			$('#messageCommon_right').click(function(){
	//				window.location.href="usercenter-messagecontrol-sitemsg.html";
	//			});
	        })
	
	
	    </script>
	    <!--首页右侧提示悬浮窗、账户、红包、加息券 user_m_type -->
	    <script type="text/javascript">
	        $(".m2-comRigli").click(function(event){
	            $('#right-fix').animate({ right: '50px'}, "slow");
	            event.stopPropagation();
	        });
	        $("#right-fix").click(function(event){
	            event.stopPropagation();
	        });
	        $("body").click(function(){
	            $('#right-fix').animate({ right: '-290px'}, "slow");
	        });
	    </script>
	    <script>
	        //注册方法
	        function verifycodeRight(){
	            var canSubmit=true;
	            $("#reverifyCodeRight").siblings(".mo2-indLogwarRight").children("u").html('');
	            if($("#vcodeRight").val().length==0){
	                $("#reverifyCodeRight").siblings(".mo2-indLogwarRight").children("u").html("验证码不能为空");
	                $("#reverifyCodeRight").siblings(".mo2-indLogwarRight").show();
	                canSubmit = false;
	            }
	            if($("#passRight").val().length==0){
	                $("#reverifyCodeRight").siblings(".mo2-indLogwarRight").children("u").html("密码不能为空");
	                $("#reverifyCodeRight").siblings(".mo2-indLogwarRight").show();
	                canSubmit = false;
	            }
	            if($("#regTelRight").val().length==0){
	                $("#reverifyCodeRight").siblings(".mo2-indLogwarRight").children("u").html("手机号不能为空");
	                $("#reverifyCodeRight").siblings(".mo2-indLogwarRight").show();
	                canSubmit = false;
	            }
	
	            $(".mo2-indRegbox .mo2-indLogwarRight u").each(function(){
	                if($(this).html().length>0){
	                    canSubmit = false;
	                }
	            });
	            if (canSubmit !== true) return false;
	            var p={"vcode":$("#vcodeRight").val()};
	            postData("/Home-Register-ckcode",p,function(d){
	                if(d.message!=" "){
	                    $("#reverifyCodeRight").siblings(".mo2-indLogwarRight").children("u").html(d.message);
	                    $("#reverifyCodeRight").siblings(".mo2-indLogwarRight").show();
	                    return false;
	                }else{
	                    $("#reverifyCodeRight").siblings(".mo2-indLogwarRight").children("u").html('');
	                    $("#reverifyCodeRight").siblings(".mo2-indLogwarRight").hide();
	                    $('.mo2-indRegboxRight').css('display','none');
	                    $('.mo2-indRegbox2Right').css('display','block');
	                }
	
	            });
	        }
	        //登录方法
	        function loginRight(){
	            var p = makevar(['user_nameRight','pass_wordRight','vcodeRight']);
	            var canSubmit = true;
	            if($('#user_nameRight').val()==""){
	                $('#error-hint').html('用户名不能为空！');
	            }else if($('#user_nameRight').val().lenght <6){
	                $('#error-hint').html('用户名长度错误！');
	            }else {
	                if ($('#pass_wordRight').val() == ""){
	                    $('#error-hint').html('密码不能为空！');
	                }else if ($('#pass_wordRight').val().length < 6 || $('#pass_wordRight').val().length > 20){
	                    $('#error-hint').html('密码长度错误！');
	                }else {
	                    $('#error-hint').html('');
	                    postData("/Home-Login-index_loginRight",p,function(d){
	                        if(d.status==0){
	                            $('#error-hint').html(d.message);
	                        }else if(d.status==1){
	                            window.location.reload();
	                        }else if(d.status==2){
	                            window.location.href = "dashiji_show.html#15319.html";
	                        }
	                    });
	                }
	            }
	        }
	        $(document).keydown(function(event){
	            var e = event || window.event || arguments.callee.caller.arguments[0];
	            if(e && e.keyCode==13){
	                loginRight();
	            }
	        });
	
	        // 注册登录tab切换
	        $('.mo2-indLogtab ul li').click(function(){
	            if ($(this).hasClass('mo2-logTab-unsel')) {
	                $(this).addClass('mo2-logTab-sel').removeClass('mo2-logTab-unsel');
	                $(this).siblings('.mo2-logTab-sel').addClass('mo2-logTab-unsel').removeClass('mo2-logTab-sel');
	            }
	        });
	        // 注册登录显示隐藏
	        $('.mo2-indTab-reg').click(function(){
	            $('.mo2-indRegboxRight').show();
	            $('.mo2-indRegbox2Right').hide();
	            $('.mo2-indLogboxRight').hide();
	        });
	        $('.mo2-indTab-log').click(function(){
	            $('.mo2-indRegboxRight').hide();
	            $('.mo2-indRegbox2Right').hide();
	            $('.mo2-indLogboxRight').show();
	        });
	
	        //右侧悬浮框
	        var aLi=$('.m2-comRigli_new');
	        for(var i=0;i<aLi.length;i++){
	            (function(index){
	                aLi[index].onmouseover=function(){
	                    var oDiv=aLi[index].children[2];
	                    var aDiv=oDiv.children;
	                    oDiv.style.display='block';
	                    //if(flag==1){
	                    var iNum=parseInt(aDiv[1].innerHTML);
	                    if(iNum>=100){
	                        aDiv[1].innerHTML='···';
	                    }
	                    //}
	                };
	            })(i)
	        }
	        for(var i=0;i<aLi.length;i++){
	            (function(index){
	                aLi[index].onmouseout=function(){
	                    var oDiv=aLi[index].children[2];
	                    var aDiv=oDiv.children;
	                    oDiv.style.display='none';
	                    //if(flag==1){
	                    var iNum=parseInt(aDiv[1].innerHTML);
	                    if(iNum>=100){
	                        aDiv[1].innerHTML='···';
	                    }
	                    //}
	                };
	            })(i)
	        }
	
	    </script>
	    <script type="text/javascript">
	        $(function () {
	            var wHei = $(window).height();
	
	            $(document).scroll(function () {
	                // 判断返回顶部是否显示
	                visTop(wHei);
	            });
	
	            $('.m2-comRigli-top').click(function () {
	                $('body,html').animate({scrollTop: 0}, 600);
	                return false;
	            });
	        });
	
	        function visTop(high) {
	
	            if ($(document).scrollTop() > high + 100) {
	                $('.m2-comRigli-top').css('visibility', 'visible');
	            } else {
	                $('.m2-comRigli-top').css('visibility', 'hidden');
	            }
	        }
	    </script>
	    <!-- 右侧边栏end -->
	    
	    <!-- 头部start -->
	    	<jsp:include page="../include/head.jsp"></jsp:include>
	    <!-- 头部end -->
	    
	    <link rel="stylesheet" href="/Finances/statics/front/statics/home2/css/front.css">
    	<script type="text/javascript" src="/Finances/statics/front/statics/home2/js/m2-front.js"></script>
	    
	    <!-- 导航start -->
	    	<jsp:include page="../include/navigation.jsp"></jsp:include>
	    <!-- 导航end -->
	    
	    <!-- 内容start -->
	    <div class="m2-manTeam-bannerCon">
    	</div>
    	<div class="m2-manTeamcon">
	        <div class="m2-manTeambox">
	            <h1>爱钱帮管理团队</h1>
	            <ul  class="m2-manTeamlist">
	                <li>
	                    <div class="m2-manTeamlist-tit">
	                        <img src="/Finances/statics/front/statics/home2/images/manageTeam-photo.png" alt="">
	                        <p><span class="m2-manTeamlist-name">王吉涛：</span><span class="m2-manTeamlist-pos">联合创始人&CEO</span></p>
	                        <p><span class="m2-manTeamlist-name">联系方式：wangjitao@iqianbang.com </span><a href="mailto:wangjitao@iqianbang.com" class="m2-manTeamlist-send"><i></i>发送</a></p>
	                    </div>
	                    <div class="m2-manTeamlist-det">
	                        <p>
	                            毕业于清华大学汽车工程系，硕士学位。曾就职于普华永道管理咨询有限公司，服务了中国建设银行等多个银行业风控类项目；后在航天投资控股有限公司从事金融资产投资、并购、PIPE等多类型股权投资；在国开金融有限公司从事多年夹层投资业务，拥有丰富的金融行业从业经验，主导的项目投融资超过150亿元，担任过多家央企子公司和拟上市公司董监事。
	                        </p>
	                    </div>
	                </li>
	                <li>
	                    <div class="m2-manTeamlist-tit">
	                        <img src="/Finances/statics/front/statics/home2/images/manageTeam-photo-wk.png" alt="">
	                        <p><span class="m2-manTeamlist-name">汪凯：</span><span class="m2-manTeamlist-pos">联合创始人&CTO</span></p>
	                        <p><span class="m2-manTeamlist-name">联系方式：wangkai@iqianbang.com </span><a href="mailto:wangkai@iqianbang.com" class="m2-manTeamlist-send"><i></i>发送</a></p>
	                    </div>
	                    <div class="m2-manTeamlist-det">
	                        <p>
	                            毕业于北京航空航天大学计算机系，硕士学位。参加过多项国家863项目，曾就职于IBM、IGT等国际知名公司，精通大型网站前后端产品设计与开发，在金融大数据、移动应用等大型项目管理和开发方面具有丰富经验。
	                        </p>
	                    </div>
	                </li>
	                <li style="border-bottom: 1px dashed #B7B7B7;">
	                    <div class="m2-manTeamlist-tit">
	                        <img src="/Finances/statics/front/statics/home2/images/manageTeam-photo-wlz.png" alt="">
	                        <p><span class="m2-manTeamlist-name">万良中 ：</span><span class="m2-manTeamlist-pos">联合创始人&COO</span></p>
	                        <p><span class="m2-manTeamlist-name">联系方式：wanliangzhong@iqianbang.com </span><a href="mailto:wanliangzhong@iqianbang.com" class="m2-manTeamlist-send"><i></i>发送</a></p>
	                    </div>
	                    <div class="m2-manTeamlist-det">
	                        <p>
	                            毕业于上海财经大学社会学系，硕士学位。曾就职于中国扶贫基金会旗下的中和农信项目管理有限公司，主要负责小额信贷业务信贷管理与风险控制，各地小额信贷机构创建，培训和监督日常运营，对IPC等小额信贷技术有深入研究。中国青年创业国际计划（YBC）项目评审导师。
	                        </p>
	                    </div>
	                </li>
	                <li style="border-bottom: 1px dashed #B7B7B7;">
	                    <div class="m2-manTeamlist-tit">
	                        <img src="/Finances/statics/front/statics/home2/images/manageTeam-photo-zjt.png" alt="">
	                        <p><span class="m2-manTeamlist-name">赵静婷：</span><span class="m2-manTeamlist-pos">联合创始人&公关总监</span></p>
	                        <p><span class="m2-manTeamlist-name">联系方式：zhaojingting@iqianbang.com </span><a href="mailto:zhaojingting@iqianbang.com" class="m2-manTeamlist-send"><i></i>发送</a></p>
	                    </div>
	                    <div class="m2-manTeamlist-det">
	                        <p>
	                            毕业于上海财经大学经济新闻系，后赴美国印第安纳大学学习，取得新闻学硕士学位。先后就职于财新传媒《新世纪周刊》和财讯传媒集团《财经》杂志，任金融记者。专访过多家世界知名金融机构的高管，在互联网金融报道方面有丰富经验，拥有丰富的媒体资源。
	                        </p>
	                    </div>
	                </li>
	
	            </ul>
	        </div>
	
	        <div class="m2-manageTeam-section">
	            <img src="/Finances/statics/front/statics/home2/images/m2-manageTeam-section.jpg" alt="">
	        </div>
	
	        <div class="m2-manTeamperson-box">
	            <h2>爱钱帮投资人</h2>
	            <div class="m2-manTeamperson-head"></div>
	            <div class="m2-manTeamperson-item">
	                <h3>战略投资</h3>
	                <p class="m2-teamItem-psgNor">
	                    2014年6月，在爱钱帮上线两个月之际，国内知名投资机构——盛大资本完成对爱钱帮千万级别人民币的天使轮投资，创造了中国网贷行业最快融资记录。
	                    盛大资本2011年成立于上海，是从盛大集团的投资部门升级而来。盛大资本专注于中早期的股权投资，投资的领域涉及移动互联网、金融、消费者零售、社交网络、电子商务、传媒和P2P等等。曾经知名投资案例包括格瓦拉生活网、墨迹天气，近期则将目光转向了互联网金融。
	
	                    盛大资本副总裁叶蕙芳表示：“P2P 行业即将迎来监管细则，行业整体洗牌阶段已经开始。我们的投资团队看过国内多家P2P公司，排名靠前的网贷平台都考察过。我们非常看好网际网路金融在中国的发展前景。选择爱钱帮是看中他们安全合规的业务模式和专业优秀、有凝聚力的团队，以及处于还发展早期。”
	
	                    爱钱帮此次获得的资金将会用于产品开发、加强核心风险控制能力，进一步提升平台的安全性和改善用户体验等领域，特别是公司正在开发的具有行业特色、基于大数据的互联网金融产品。未来爱钱帮将专注于P2P模式，为千万中小微企业提高金融解决方案。
	
	                </p>
	            </div>
	
	            <div class="m2-manTeamperson-item">
	                <h3>投资协议</h3>
	                <div class="m2-teamImglist-box">
	                    <ul class="m2-teamImglist">
	                        <li>
	                            <img src="/Finances/statics/front/statics/home2/images/1.jpg" alt="">
	                            <p>投资协议</p>
	                        </li>
	                        <li>
	                            <img src="/Finances/statics/front/statics/home2/images/2.jpg" alt="">
	                            <p>投资协议</p>
	                        </li>
	                        <li>
	                            <img src="/Finances/statics/front/statics/home2/images/3.jpg" alt="">
	                            <p>公示文件</p>
	                        </li>
	                        <li>
	                            <img src="/Finances/statics/front/statics/home2/images/4.jpg" alt="">
	                            <p>公示文件</p>
	                        </li>
	                    </ul>
	                </div>
	            </div>
	
	            <div class="m2-manTeamperson-item">
	                <h3>媒体报道</h3>
	                <i class="m2-teamNewsbtn-lef" style="display:none;"></i>
	                <i class="m2-teamNewsbtn-rig"></i>
	                <div class="m2-teamNewslist-box">
	                    <div class="m2-teamNewslist-con">
	                        <ul class="m2-teamNewslist" style="left:0;">
	                            <li>
	                                <a href="http://www.yicai.com/news/2014/07/3994260.html" target="_blank">
	                                    <img src="/Finances/statics/front/statics/home2/images/mt-1.png" alt="">
	                                    <span>创始团队盛大资本副总裁合影</span>
	                                </a>
	                            </li>
	                            <li>
	                                <a href="http://www.abcs.com.tw/newsDetail.asp?id=12916" target="_blank">
	                                    <img src="/Finances/statics/front/statics/home2/images/mt-2.png" alt="">
	                                    <span>CEO王吉涛回复记者提问</span>
	                                </a>
	                            </li>
	                            <li>
	                                <a href="http://www.mrjjxw.com/shtml/mrjjxw/20140717/54194.shtml" target="_blank">
	                                    <img src="/Finances/statics/front/statics/home2/images/mt-3.png" alt="">
	                                    <span>爱钱帮与乾彭资本合作签约</span>
	                                </a>
	                            </li>
	                            <li>
	                                <a href="http://finance.sina.com.cn/money/bank/hykx/20140717/091719728699.shtml" target="_blank">
	                                    <img src="/Finances/statics/front/statics/home2/images/mt-4.png" alt="">
	                                    <span>爱钱帮新闻发布会发表演讲</span>
	                                </a>
	                            </li>
	
	                        </ul>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	    <script type="text/javascript">
	        $(function(){
	            $('.m2-manTeamlist li:even').css("border-right","1px dashed #b7b7b7");
	
	//新闻列表切换
	            var newsLeft =0;
	            $('.m2-teamNewsbtn-rig').click(function(){
	                if (newsLeft > ($(".m2-teamNewslist li").length-4)*-225) {
	                    newsLeft -=225;
	                    $('.m2-teamNewslist').stop().animate({left:newsLeft},300);
	                    $('.m2-teamNewsbtn-lef').show();
	                    if (newsLeft <= ($(".m2-teamNewslist li").length-4)*-225) {
	                        $(this).fadeOut(200);
	                    }
	
	                }
	                else if (newsLeft <= ($(".m2-teamNewslist li").length-4)*-225) {
	                    $('.m2-teamNewslist').stop().css("left",($(".m2-teamNewslist li").length-4)*-225);
	                }
	            });
	
	            $('.m2-teamNewsbtn-lef').click(function(){
	                if (newsLeft< 0) {
	                    newsLeft +=225;
	                    $('.m2-teamNewslist').stop().animate({left:newsLeft},300);
	                    $('.m2-teamNewsbtn-rig').show();
	                    if (newsLeft >= 0) {$(this).fadeOut(200);}
	                }
	                else{
	                    newsLeft = 0;
	                    $(this).fadeOut(200);
	                }
	            });
	
	
	//关闭弹窗
	            $('.m2-teamImgshow i').click(function(){
	                $('.m2-teamImgshow').hide();
	                $('.m2-teamImgbg').hide();
	            });
	
	//图片列表点击
	            $(".m2-teamImglist li").click(function(){
	                var imgBoxtop =$(document).scrollTop()+120;
	                var imgSrc =$(this).children('img').attr('src');
	                var imgDet =$(this).children('p').html();
	                $('.m2-teamImgshow img').attr("src",imgSrc);
	                $('.m2-teamImgshow h4').html(imgDet);
	                $('.m2-teamImgshow').show();
	                $('.m2-teamImgbg').show();
	                $('.m2-teamImgshow').css('top',imgBoxtop);
	
	            });
	
	
	        });
	    </script>
	    <script type="text/javascript">
	        $(function(){
	            //媒体小于5右箭头隐藏
	            if ($(".m2-teamNewslist li").length<5) {$('.m2-teamNewsbtn-rig').hide()}
	        });
	    </script>
	    
	    <link rel="stylesheet" href="/Finances/statics/front/statics/home/css/newPage.css" />
	    
	    <!-- 足部strat -->
	    	<jsp:include page="../include/floot.jsp"></jsp:include>
	    <!-- 足部end -->
	</body>
</html>