<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
	String path = request.getContextPath();
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

    <head>
        <meta charset="UTF-8">
        <!--[if lt IE 9]>
        <script src="https://www.iqianbang.com/statics/newcommon/js/html5shiv.js"></script>
        <![endif]-->
        <meta name="keywords" content="投资理财平台，个人理财，新型投资理财，网上理财平台，理财产品P2P，正规理财产品">
        <meta name="description" content="爱钱帮网贷平台为您提供网络赚钱项目；为此相继推出了许多新的理财产品，在为您创造高收益的同时也优化了理财产品模式。网络理财，就选爱钱帮。">
        <meta charset="UTF-8">
        <meta property="og:type" content="image" />
		<meta property="og:image" content="https://www.iqianbang.com/statics/home/images/logo_brief.jpg" />
        <link  rel="Shortcut  Icon"  href="https://www.iqianbang.com/statics/home/images/minilogo.png">
        <link rel="stylesheet" href="https://www.iqianbang.com/statics/newcommon/css/m2-commonNew.css?20160520">
        <link rel="stylesheet" href="https://www.iqianbang.com/statics/newcommon/css/m2-common.css?20160520">
        <link rel="Shortcut  Icon" href="https://www.iqianbang.com/statics/newcommon/images/minilogo.png?20160520">
        <link rel="stylesheet" href="https://www.iqianbang.com/statics/usercenter/css/userCenter.css?20160520">
        <link rel="stylesheet" href="https://www.iqianbang.com/statics/home2/styles/newreg.css?20160520">
        <link rel="stylesheet" href="https://www.iqianbang.com/statics/usercenter/css/common.css?20160520">
        <script type="text/javascript" src="https://www.iqianbang.com/statics/newcommon/js/jquery.min.js?20160520"></script>
        <script type="text/javascript" src="https://www.iqianbang.com/statics/newcommon/js/common.js?t=1506418932570"></script>
        <script type="text/javascript" src="https://www.iqianbang.com/statics/usercenter/js/esl.js?20160520"></script>
        <link rel="stylesheet" href="https://www.iqianbang.com/statics/usercenter/css/jquery.datetimepicker.css?20160520" />
        <script type="text/javascript" src="https://www.iqianbang.com/statics/usercenter/js/jquery.datetimepicker.js?20160520"></script>

    </head>
<title>会员提现--爱钱帮</title>
<body>
<!-- 右侧边栏start -->
	<jsp:include page="../include/userside.jsp"></jsp:include>		
	<!-- 右侧边栏end -->
	
	<!-- 头部start -->
		<jsp:include page="../include/head.jsp"></jsp:include>
	<!-- 头部end -->
	
	<!-- 内容 -->
		
		<!-- 树start -->
	    <jsp:include page="../include/tree.jsp"></jsp:include>
<div class="m2-userCentercommon-bg" style="display:none;"></div>
<div class="m2-userAjax-loading" style="display:none;">
    <img src="https://www.iqianbang.com/statics/usercenter/images/ajax-loading.gif" alt="">
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

<body>
    <!-- 绑定银行卡弹窗start -->
    <div class="m2-charge2Confirm" style="display:none;">
        <b class="m2-cha2Con-close"></b>
        <div class="m2-cha2Bank" style="display:none;">
            <div class="m2-cha2Conf-tit">
                <span>选择银行卡</span>
            </div>
            <ul class="m2-cha2Banklist">
                <li class="m2-cha2Bank-item m2-cha2Bank-sel"><i class="m2-userBank-1"></i><span>**5601</span><b></b></li>
                <li class="m2-cha2Bank-item m2-cha2Bank-unsel"><i class="m2-userBank-2"></i><span>**5602</span><b></b></li>
                <li class="m2-cha2Bank-item m2-cha2Bank-unsel"><i class="m2-userBank-3"></i><span>**5603</span><b></b></li>
                <li class="m2-cha2Bank-item m2-cha2Bank-unsel"><i class="m2-userBank-4"></i><span>**5604</span><b></b></li>
                <li class="m2-cha2Bank-item m2-cha2Bank-unsel"><i class="m2-userBank-5"></i><span>**5604</span><b></b></li>
                <li class="m2-cha2Bank-item m2-cha2Bank-unsel"><i class="m2-userBank-6"></i><span>**5604</span><b></b></li>
                <li class="m2-cha2Bank-item m2-cha2Bank-unsel"><i class="m2-userBank-7"></i><span>**5604</span><b></b></li>
                <li class="m2-cha2Bank-item m2-cha2Bank-unsel"><i class="m2-userBank-8"></i><span>**5604</span><b></b></li>
                <li class="m2-cha2Bank-item m2-cha2Bank-unsel"><i class="m2-userBank-9"></i><span>**5604</span><b></b></li>
                <li class="m2-cha2Bank-item m2-cha2Bank-unsel"><i class="m2-userBank-10"></i><span>**5604</span><b></b></li>
                <li class="m2-cha2Bank-item m2-cha2Bank-unsel"><i class="m2-userBank-11"></i><span>**5604</span><b></b></li>
                <li class="m2-cha2Bank-item m2-cha2Bank-unsel"><i class="m2-userBank-12"></i><span>**5604</span><b></b></li>
                <li class="m2-cha2Bank-item m2-cha2Bank-unsel"><i class="m2-userBank-13"></i><span>**5604</span><b></b></li>
                <li class="m2-cha2Bank-item m2-cha2Bank-unsel"><i class="m2-userBank-14"></i><span>**5604</span><b></b></li>
                <li class="m2-cha2Bank-item m2-cha2Bank-unsel"><i class="m2-userBank-15"></i><span>**5604</span><b></b></li>
                <li class="m2-cha2Bank-item m2-cha2Bank-unsel"><i class="m2-userBank-16"></i><span>**5604</span><b></b></li>
                <li class="m2-cha2Bank-item m2-cha2Bank-unsel"><i class="m2-userBank-17"></i><span>**5604</span><b></b></li>
                <li class="m2-cha2Bank-item m2-cha2Bank-unsel"><i class="m2-userBank-18"></i><span>**5604</span><b></b></li>
                <li class="m2-cha2Bank-item m2-cha2Bank-unsel"><i class="m2-userBank-19"></i><span>**5604</span><b></b></li>
                <li class="m2-cha2Bank-item m2-cha2Bank-unsel"><i class="m2-userBank-20"></i><span>**5604</span><b></b></li>
                <li class="m2-cha2Bank-item m2-cha2Bank-unsel"><i class="m2-userBank-21"></i><span>**5604</span><b></b></li>
                <li class="m2-cha2Bank-item m2-cha2Bank-unsel"><i class="m2-userBank-22"></i><span>**5604</span><b></b></li>
            </ul>
        </div>
        <div class="m2-cha2Conf-bind">
            <div class="m2-cha2Conf-tit">
                <span>切换银行卡</span>
            </div>
            <table cellpadding="0" cellspacing="0">
                <tbody>
                    <tr>
                        <td class="m2-chaConf-tit">
                            <i class="m2-chaConf-user"></i>
                            <span>真实姓名</span>
                        </td>
                        <td class="m2-chaConf-con">
                            <span></span>
                        </td>
                    </tr>
                    <tr>
                        <td class="m2-chaConf-tit">
                            <i class="m2-chaConf-tel"></i>
                            <span>手机号</span>
                        </td>
                        <td class="m2-chaConf-con">
                           <span>17370134046</span>
                            <a href="/usercenter-accountcontrol-userverify?phone=1">修改</a>
                           
                            <b class="m2-chaConf-warn"  style='color:#999;'>认证手机号须与银行卡预留手机号一致 否则无法绑卡</b>
                        </td>
                    </tr>
                    <tr>
                        <td class="m2-chaConf-tit">
                            <i class="m2-chaConf-card"></i>
                            <span>借记卡</span>
                        </td>
                        <td class="m2-chaConf-con">
                            <input type="text" style="width:265px;" placeholder="" id='cardinput' maxlength='19'>
                            <b class="m2-chaConf-warn"  style='color:#999;'>该银行卡开户姓名必须为，否则会提现失败！</b>
                        </td>
                    </tr>
<!--                    <tr>
                        <td class="m2-chaConf-tit">
                            <i class="m2-chaConf-psw"></i>
                            <span>验证码</span>
                        </td>
                        <td class="m2-chaConf-con">
                            <input type="text" style="width:173px;" placeholder=""><img class="m2-chaConf-code" src="" alt="">
                        </td>
                    </tr>-->
                </tbody>
            </table>
        </div>
        <!-- 	<div class="m2-cha2Conf-head">
            <span class="m2-cha2Confhead-other">绑定其他银行卡</span>
          </div> -->
        <div class="m2-cha2Confsubmit">
            <span class="m2-cha2Confsub-sure" onclick="changeCard()">确&nbsp;&nbsp;&nbsp;认</span>
        </div>
    </div>
    <script type="text/javascript">
        // 点击切换银行卡弹出弹窗
        $(function () {
            $('.m2-userCentermanagedraw-addArea-hs,#addother').click(function () {
                $('#cardinput').val('');
                card_no = '';
                new_card = '';
                $('.m2-userCentercommon-bg,.m2-charge2Confirm').show();
                chaContop();
            });
        })
        /*
         var oldBank =$('.m2-userBankitem').children('i').attr('class');
         var newBank="";
         $('.m2-cha2Bank-item').click(function(){
         oldBank =$('.m2-userCentermanage-drawBox2 .m2-userCentermanage-drawBox-bank').children('i').attr('class');
         newBank = $(this).children('i').attr('class');
         
         if($(this).hasClass('m2-cha2Bank-unsel')){
         $(this).addClass('m2-cha2Bank-sel').removeClass('m2-cha2Bank-unsel');
         $(this).siblings('.m2-cha2Bank-sel').addClass('m2-cha2Bank-unsel').removeClass('m2-cha2Bank-sel');
         }
         });
         */
        // 绑定、选择银行卡
        $('.m2-cha2Conf-head span').click(function () {
            // 绑定银行卡显示
            if ($(this).hasClass('m2-cha2Confhead-other')) {
                $(this).addClass('m2-cha2Confhead-bind').removeClass('m2-cha2Confhead-other');
                $(this).html('选择已有银行卡');
                $('.m2-cha2Bank').hide();
                $('.m2-cha2Conf-bind').show();
                chaContop();
            } else if ($(this).hasClass('m2-cha2Confhead-bind')) {
                // 选择银行卡显示
                $(this).addClass('m2-cha2Confhead-other').removeClass('m2-cha2Confhead-bind');
                $(this).html('绑定其他银行卡');
                $('.m2-cha2Bank').show();
                $('.m2-cha2Conf-bind').hide();
                chaContop();
            }
        });


        // 关闭
        $('.m2-cha2Con-close,.m2-cha2Confsub-sure').click(function () {
            $('.m2-charge2Confirm,.m2-userCentercommon-bg').hide();
        });

        // 点击确认按钮
        function binkSubmit() {
            $('.m2-cha2Confsub-sure').click(function () {
                // $('.m2-userCentermanage-drawBox2 .m2-userCentermanage-drawBox-bank').children('i').removeClass(oldBank).addClass(newBank);
                $('.m2-userCentercommon-bg').hide();
                $('.m2-charge2Confirm').hide();
                if (newBank == 'm2-userBank-1') {
                    $('.m2-userCentermanage-drawBox2 .m2-userCentermanage-drawBox-bankName').html('中国银行');
                } else if (newBank == 'm2-userBank-2') {
                    $('.m2-userCentermanage-drawBox2 .m2-userCentermanage-drawBox-bankName').html('中国农业银行');
                } else if (newBank == 'm2-userBank-3') {
                    $('.m2-userCentermanage-drawBox2 .m2-userCentermanage-drawBox-bankName').html('交通银行');
                } else if (newBank == 'm2-userBank-4') {
                    $('.m2-userCentermanage-drawBox2 .m2-userCentermanage-drawBox-bankName').html('浦发银行');
                } else if (newBank == 'm2-userBank-5') {
                    $('.m2-userCentermanage-drawBox2 .m2-userCentermanage-drawBox-bankName').html('中国邮政储蓄银行');
                } else if (newBank == 'm2-userBank-6') {
                    $('.m2-userCentermanage-drawBox2 .m2-userCentermanage-drawBox-bankName').html('中国光大银行');
                } else if (newBank == 'm2-userBank-7') {
                    $('.m2-userCentermanage-drawBox2 .m2-userCentermanage-drawBox-bankName').html('招商银行');
                } else if (newBank == 'm2-userBank-8') {
                    $('.m2-userCentermanage-drawBox2 .m2-userCentermanage-drawBox-bankName').html('兴业银行');
                } else if (newBank == 'm2-userBank-9') {
                    $('.m2-userCentermanage-drawBox2 .m2-userCentermanage-drawBox-bankName').html('上海银行');
                } else if (newBank == 'm2-userBank-10') {
                    $('.m2-userCentermanage-drawBox2 .m2-userCentermanage-drawBox-bankName').html('中国民生银行');
                } else if (newBank == 'm2-userBank-11') {
                    $('.m2-userCentermanage-drawBox2 .m2-userCentermanage-drawBox-bankName').html('中国建设银行');
                } else if (newBank == 'm2-userBank-12') {
                    $('.m2-userCentermanage-drawBox2 .m2-userCentermanage-drawBox-bankName').html('中国工商银行');
                } else if (newBank == 'm2-userBank-13') {
                    $('.m2-userCentermanage-drawBox2 .m2-userCentermanage-drawBox-bankName').html('中信银行');
                } else if (newBank == 'm2-userBank-14') {
                    $('.m2-userCentermanage-drawBox2 .m2-userCentermanage-drawBox-bankName').html('华夏银行');
                } else if (newBank == 'm2-userBank-15') {
                    $('.m2-userCentermanage-drawBox2 .m2-userCentermanage-drawBox-bankName').html('广发银行');
                } else if (newBank == 'm2-userBank-16') {
                    $('.m2-userCentermanage-drawBox2 .m2-userCentermanage-drawBox-bankName').html('深圳发展银行');
                } else if (newBank == 'm2-userBank-17') {
                    $('.m2-userCentermanage-drawBox2 .m2-userCentermanage-drawBox-bankName').html('平安银行');
                } else if (newBank == 'm2-userBank-18') {
                    $('.m2-userCentermanage-drawBox2 .m2-userCentermanage-drawBox-bankName').html('恒丰银行');
                } else if (newBank == 'm2-userBank-19') {
                    $('.m2-userCentermanage-drawBox2 .m2-userCentermanage-drawBox-bankName').html('渤海银行');
                } else if (newBank == 'm2-userBank-20') {
                    $('.m2-userCentermanage-drawBox2 .m2-userCentermanage-drawBox-bankName').html('浙商银行');
                } else if (newBank == 'm2-userBank-21') {
                    $('.m2-userCentermanage-drawBox2 .m2-userCentermanage-drawBox-bankName').html('北京银行');
                } else if (newBank == 'm2-userBank-22') {
                    $('.m2-userCentermanage-drawBox2 .m2-userCentermanage-drawBox-bankName').html('其他银行');
                }
            });
        }

        //调整弹窗top值
        function chaContop() {
            $('.m2-charge2Confirm').css('top', $(document).scrollTop() + 150);
        }
    </script>
    <!-- 绑定银行卡弹窗end -->
    <!-- 提现弹窗start -->
<style type="text/css">
	.mo2-userDarwcon{
		position: fixed;
		z-index: 121;
		position: fixed;
		left: 50%;
		top:50%;
		margin-left: -245px;
		margin-top: -100px;
		width: 490px;
		min-height: 65px;
		z-index: 121;
		background-color: #fff;
		border: 6px solid #616161;
		padding: 40px 0 22px 0;
	}
	.mo2-confBig{
		font-size: 26px;
		line-height: 40px;
		color: #5f5e5e;
		text-align: center;
	}
	.mo2-confClose{
		position: absolute;
		display: block;
		width: 20px;
		height: 20px;
		right: 0;
		top: 5px;
		cursor: pointer;
		background: url(https://www.iqianbang.com/statics/usercenter/images/m2-userCenter-icon.png) no-repeat -300px -20px;
	}
	.mo2-confLink{
		display: block;
		text-align: center;
		color: #39adf7;
		font-size: 15px;
		line-height: 26px;
	}
	.mo2-confLink:hover,.mo2-confLink:active{
		color: #299DE7;
	}
	.mo2-confBtn{
		width: 370px;
		height: 42px;
		line-height: 42px;
		margin: 20px auto 0 auto;
	}
	.mo2-confBtn span,.mo2-confBtn a{
		display: inline-block;
		width: 155px;
		height: 40px;
		border: 1px solid #F59451;
		font-size: 18px;
		text-align: center;
		border-radius: 4px;
		cursor: pointer;
	}
	.btn_lef{
		float: left;
		color: #F59451;
		background-color: #FFF;
	}
	.btn_lef:hover,.btn_lef:active{color: #E58441;}
	.btn_rig{
		float: right;
		color: #fff;
		background-color: #F59451;
	}
	.btn_rig:hover,.btn_rig:active{background-color: #E58441;}
</style>
<!-- 提现提示活动下线 -->
		<!--<div class="mo2-userDarwcon" style="display:none;">
			<div class="mo2-confClose"></div>
			<p class="mo2-confBig">领新年红包，得更高收益。</p>
			<a href="/market-newyear" class="mo2-confLink" style="margin-top:15px;">点击查看详情</a>
			<div class="mo2-confBtn">
				<span class="btn_lef">狠心提现</span>
				<a href="#" class="btn_rig">马上投资</a>
			</div>
		</div>
<script type="text/javascript">
	$(function(){
		// 关闭
		$('.mo2-confClose').click(function(){
			$('.mo2-userDarwcon,.m2-userCentercommon-bg').hide();
		})
	})
</script>-->
<!-- 提现弹窗end -->
    <!--公用提示框start-->
    <div class="m2-userCentercommon-confirm" style='display: none;' id='msgdialog1'>
        <span class="m2-userCentercommon-confirmClose"></span>
        <p class="m2-userCommon-confirmWar"><i></i></p>
        <p class="m2-userCommon-confirmBtn"><a class="m2-user-confirmBtn" href="javascript:void(0)">确&nbsp;定</a></p>		
    </div>
    <div class="m2-userCentercommon-confirm" style='display: none;' id='msgdialog2'>
        <span class="m2-userCentercommon-confirmClose"></span>
        <p class="m2-userCommon-confirmSuc"><i></i></p>
        <p class="m2-userCommon-confirmBtn"><a class="m2-user-confirmBtn" href="javascript:void(0)">确&nbsp;定</a></p>		
    </div>
    <script type="text/javascript">
        $('.m2-userCentercommon-confirmClose,.m2-user-confirmBtn').click(function () {
            $('.m2-userCentercommon-confirm').hide();
            $('.m2-userCentercommon-bg').hide();
        });
    </script>
    <!--公用提示框end-->

    <div class="m2-userCentermanageDarw-con">
        <div class="m2-userCentermanageDarw-head">
            <h3><i></i>提现</h3>
            <!--  <a href="#">查看提现记录</a>-->
        </div>

<!--        <div class="m2-userCentermanage-accNum">
            <div class="m2-userCentermanage-accNumlef">
                <p class="m2-userCentermanage-accNumtit">
                    <span>账户余额（元）</span>
                    <b class="m2-userCentermanagedraw-moreDetail">
                        <u style="top:-10px;line-height:26px;">
                            <em style="top:8px" class="m2-draw-arr"></em>
                            <em style="top:8px" class="m2-draw-arrBg"></em>
                            账户余额
                        </u>
                    </b>
                </p>
                <p class="m2-userCentermanage-accNum-leave">0</p>
            </div>
            <div class="m2-userCentermanage-accNumrig">
                <p class="m2-userCentermanage-accNumtit">
                    <span>徽商余额（元）</span>
                    <b class="m2-userCentermanagedraw-moreDetail">
                        <u style="top:-10px;line-height:26px;">
                            <em  style="top:8px" class="m2-draw-arr"></em>
                            <em  style="top:8px" class="m2-draw-arrBg"></em>
                            徽商银行账户余额
                        </u>
                    </b>
                </p>
                <p class="m2-userCentermanage-accNum-return">0</p>
            </div>
        </div>-->

        <div class="m2-userCentermanage-drawBox" style='margin-top: 10px;'>

            <!-- 徽商银行start -->
            <div class="m2-userCentermanage-drawBox2" style="border:none;">

                <!--无银行卡start-->
                <div class="m2-userCentermanage-drawBox-cardFalse">
                    <div class="m2-userCentermanagedraw-addCard m2-userCentermanagedraw-addCard-hs" style="position:relative;">

                            <div class="m2-userCentermanage-drawBox-cardTit m2-txtRig">
                                <span>添加银行卡：</span>
                            </div>
                            <!-- 
                                    <script type="text/javascript">
                                    //添加银行卡点击事件
                                      $(function(){
                                        $('.m2-userCentermanagedraw-addArea-hs').click(function(){
                                          $('.m2-userCentermanagedraw-addCard-hs').hide();
                                          $('.m2-recharge-banklist-hs').show();
                                        });
                                      });
                                    </script>
                            -->
                            <div class="m2-userCentermanagedraw-addArea m2-userCentermanagedraw-addArea-hs">
                                <i></i>
                                <span>添加银行卡</span>
                            </div>
                            <!--<div class="m2-userDar-cardTips">*徽商银行电子交易账户采用原卡进出设置，您有只有在账户余额与在投资金均为0元时，才能切换银行卡</div>-->
                        </div>
                        
                    <div class="m2-recharge-banklist m2-recharge-banklist-hs" style="display:none;">
                        <script>
                            $(document).ready(function () {
                                $(".m2-recharge-banklist-hs li").each(function () {
                                    $(this).click(function () {
                                        $(this).children('b').addClass('m2-bank-chooseput');
                                        $(this).siblings('li').children('b').removeClass('m2-bank-chooseput');
                                    });
                                });
                            });
                        </script>
                        <ul>
                            <li><b class="m2-bank-chooseput"></b><i class="m2-bank-bank01"></i></li>
                            <li><b></b><i class="m2-bank-bank02"></i></li>
                            <li><b></b><i class="m2-bank-bank03"></i></li>
                            <li><b></b><i class="m2-bank-bank04"></i></li>
                            <li><b></b><i class="m2-bank-bank05"></i></li>
                            <li><b></b><i class="m2-bank-bank06"></i></li>
                            <li><b></b><i class="m2-bank-bank07"></i></li>
                            <li><b></b><i class="m2-bank-bank08"></i></li>
                            <li><b></b><i class="m2-bank-bank09"></i></li>
                            <li><b></b><i class="m2-bank-bank10"></i></li>
                            <li><b></b><i class="m2-bank-bank11"></i></li>
                            <li><b></b><i class="m2-bank-bank12"></i></li>
                            <li><b></b><i class="m2-bank-bank13"></i></li>
                            <li><b></b><i class="m2-bank-bank14"></i></li>
                            <li><b></b><i class="m2-bank-bank15"></i></li>
                            <li><b></b><i class="m2-bank-bank16"></i></li>
                            <li><b></b><i class="m2-bank-bank17"></i></li>
                            <li><b></b><i class="m2-bank-bank18"></i></li>
                            <li><b></b><i class="m2-bank-bank19"></i></li>
                            <li><b></b><i class="m2-bank-bank20"></i></li>
                            <li><b></b><i class="m2-bank-bank21"></i></li>
                            <li><b></b><i class="m2-bank-bank22"></i></li>
                            <li class="m2-bank-chooseput-submit"><a href="#">确定</a></li>
                        </ul>
                    </div>

                </div>
                <!--无银行卡end-->



                <!--已经有银行卡start-->
                <div class="m2-userCentermanage-drawBox-cardTure"  style="display:none">
                    <div class="m2-userCentermanage-drawBox-cardTit m2-txtRig">
                        <span>提现银行卡：</span>
                    </div>
                    <ul class="m2-userCentermanage-drawBox-cardSel" style="position:relative;">
                        <div class="m2-userBank-chose" style="position: absolute; left: 250px;top:5px;">
                            <span id='addother'>选择其他银行卡&raquo;</span>
                            <!-- <a href="#">查看充值限额&raquo;</a> -->
                            <b class="m2-userBank-choWarn" style="display:inline-block;width:320px; height:44px; line-height: 22px;top:28px;">您只有在徽商银行电子交易账户余额与在投资金均为零时<br>才能切换银行卡</b>
                        </div>  
                        <li class="m2-userCentermanage-drawBox-bank">
                            <i class=""></i>
                            <p class="m2-userCentermanage-drawBox-bankName" id="card_name"></p>
                            <span class="m2-userCentermanage-drawBox-cardNumber"></span>
                            <em class="m2-userCentermanage-bank-sel"></em>
                            <!-- <b class="m2-userCentermanage-bank-close"></b> -->
                        </li>

                    </ul>
              </div>
                    
                    
                    <div class="m2-userCentermanage-explainBox" style="border:none;">
                        <ul>
<!--                        <li style="margin:10px 0;">
                                <span class="m2-txtRig" style="width:265px;">徽商银行电子交易账户号：</span>
                            <span class="m2-userCenterdraw-serTot" style="font-size:15px;"></span>
                                                            </li>-->
                            <li style="margin:10px 0;">
                                <span class="m2-txtRig">账户余额：</span>
                                <span class="m2-userCenterdraw-serTot" style="color:#f5944f;">${sessionScope.user.ubalance}元</span>
                            </li>
                        </ul>
                    </div>
                    <div class="m2-userCentermanagedraw-numInput">
                        <div class="m2-userCentermanage-drawBox-cardTit m2-txtRig">
                            <span>提现金额：</span>
                        </div>
                        <div class="m2-userCentermanage-drawNum">
                            <input type="text" class="m2-userCentermanagedraw-num" placeholder="请输入提现金额" id='withdrawals'
                            onkeyup="var p2 = parseFloat(value).toFixed(2);value = p2>=0?(/\.0?$/.test(value)?value:p2.replace(/0$/,'').replace(/\.0$/,'')):''" onblur="value = value.replace(/\.0*$/,'')"/>
                            <input type="button" class="m2-userCentermanagedraw-submit" value="提&nbsp;现" id='withdrawbuttons'>
                            <!-- <b class="m2-userCentermanagedraw-moreDetail">
                              <u>
                                <em class="m2-draw-arr"></em>
                                <em class="m2-draw-arrBg"></em>
                                    文字说明文字说明文字说明文字说明文字说明
                              </u>
                            </b> -->
                        </div>
                    </div>
                    <div class="m2-userCentermanagedraw-numInput m2-userHs-bankName" style="display:none;">
                        <div class="m2-userCentermanage-drawBox-cardTit m2-txtRig">
                            <span>开户支行：</span>
                        </div>
                        <div class="m2-userCentermanage-drawNum">
                            <div style="position:relative;">
                                <input type="text" class="m2-userCentermanagedraw-num" placeholder="开户支行名称" id="bankname">
                                <b class="m2-userHs-iptWarn"><!-- 错误提示信息 --></b>
                                <a href="http://www.lianhanghao.com/" target="_blank" class="m2-userHs-drawForget">忘记开户支行？</a>
                            </div>
                        </div>
                    </div>
                    <div class="m2-userHs-selBox">
                        <ul class="m2-userHs-selList">
                            <li class="m2-userHslist-sel m2-userHs-list1"><i></i><span>实时</span></li>
                            <li class="m2-userHslist-unsel m2-userHs-list2" id='dae'><i></i><span>大额</span></li>
                        </ul>
                        <p class="m2-userHs-exp"><i></i>
                        	<span>支持单笔5万及以下，单日20万及以下实时提现到账。单日20万以上请用大额提现。</span>
                        </p>
                        <p class="m2-userHs-exp"><i></i>
                        	<span>提现越多手续费越低,五万以下1%,20万以下0.8%,20万以上0.6%的手续费。</span>
                        </p>
                    </div>

                <!--已经有银行卡end-->

                <div class="m2-userCentermanage-explainBox">
                    <ul>
                        <li>
                            <span class="m2-txtRig">手续费：</span>
                            <span class="m2-userCenterdraw-serTot" id="wfee">0元</span>
                        </li>
                         <li>
                            <span class="m2-txtRig">实际到账：</span>
                            <span class="m2-userCenterdraw-serTot" id="wnowMoney">0元</span>
                        </li>
                       
                    </ul>
                </div>
              

                <div class="m2-recharge-tips">
                    <h3><i></i>温馨提示：</h3>
                    <ul>
                        <li><i class="m2-recharge-tips01"></i><b>请勿使用360浏览器兼容模式进行提现操作。</b></li>
                        <li><i class="m2-recharge-tips02"></i><b>徽商银行电子交易账户采用原卡进出设置，资金只能提现至您本人绑定的银行卡，提现无需支付任何手续费。</b></li>
                        <li><i class="m2-recharge-tips03"></i><b>实时提现：支持单笔5万及以下，单日20万及以下实时提现到账。</b></li>
                        <li><i class="m2-recharge-tips04"></i><b>大额提现：支持单日20万以上资金提现，工作日9:00-16:00。到账时间为30分钟左右，依据发卡行不同可能略有差异。</b><li>
                        <li><i class="m2-recharge-tips05"></i><b>提现页面暂不支持360浏览器兼容模式，请切换至急速模式，推荐使用火狐浏览器访问。</b></li>
                    </ul>
                </div>


            </div>
            <!-- 徽商银行end -->


        </div>
    </div>
</div>

<script type="text/javascript">

$(document).ready(function(){
	 $('#withdrawals').blur(function(){
		 var withdrawals=$('#withdrawals').val();
		 var wfee=0;
		 var count=0;
		 if(${user.ubalance }<withdrawals){
			 alert("余额不足");
			 $('#withdrawals').val("");
			 return;
		 }
		 if(100>withdrawals){
			 alert("提现金额需要大于100");
			 $('#withdrawals').val("");
			 return;
		 }
		 if(withdrawals<50000){
			wfee = withdrawals * 0.01;
			count = withdrawals-wfee;
		 }else if(50000<withdrawals&&withdrawals<200000){
			wfee = withdrawals * 0.008;
			count = withdrawals-wfee;
		 }else if(withdrawals>200000){
			 wfee = withdrawals* 0.006;
			 count = withdrawals-wfee;
		 }
		 document.getElementById('wfee').innerText=Math.round(wfee*100)/100;
		 document.getElementById('wnowMoney').innerText=Math.round(count*100)/100;
		// ('#wfee').html(wfee);
		 //('#wnowMoney').html(count);
	 });
	 $('#cardinput').blur(function(){
		 $.ajax({
			 url:'${pageContext.request.contextPath }/front/withdrawals/selectBankcard',
			 data:{"wmoneytowhere":$('#cardinput').val()},
			 type:'post',
			 dataType:'json',
			 success:function(data){
				 alert(data)
				 if(data==1){
					 alert("卡号和默认卡号相同,不能进行切换");
					 $('#cardinput').val("");
					 return;
				 }else if(data==0){
					 alert("该卡号未绑定,不能提现到这张卡");
					 $('#cardinput').val("");
					 return;
				 }
				 
			 }
		 });
	 });
	 $('#withdrawbuttons').click(function(){
		 var withdrawals=$('#withdrawals').val();
		 var wfee=document.getElementById("wfee").innerHTML;
		 var wnowMoney=document.getElementById("wnowMoney").innerHTML;
		 var cardinput=$('#cardinput').val();
		 if(withdrawals=""){
			 alert("请输入提现金额");
		 }
		 $.ajax({
			 url:'${pageContext.request.contextPath }/front/withdrawals/insertWithdrawals',
			 data:{
				 "wmoney":$('#withdrawals').val(),
				 "wfee":document.getElementById("wfee").innerHTML,
				 "wnowMoney":document.getElementById("wnowMoney").innerHTML,
				 "wmoneytowhere":$('#cardinput').val()
		 },
			 type:'post',
			 dataType:'json',
			 success:function(data){
				 if(data==1){
					 alert("提现成功");
				 }else if(data==2){
					 alert("");
				 }
			 }
		 });
	 });
	 
});


    $(function () {
        //汇付点击关闭隐藏银行卡
        $('.m2-userCentermanage-drawBox1 .m2-userCentermanage-bank-close').bind("click", function (event) {
            $(this).parent().hide();
            $(this).siblings('.m2-userCentermanage-bank-sel').addClass('m2-userCentermanage-bank-unsel').removeClass('m2-userCentermanage-bank-sel');
            event.stopPropagation();
        });
        //汇付点击银行卡加对钩
        $('.m2-userCentermanage-drawBox1 .m2-userCentermanage-drawBox-bank').click(function () {

            if ($(this).children('em').hasClass('m2-userCentermanage-bank-unsel')) {
                $(this).siblings('.m2-userCentermanage-drawBox-bank').children('.m2-userCentermanage-bank-sel').removeClass('m2-userCentermanage-bank-sel').addClass('m2-userCentermanage-bank-unsel');
                $(this).children('em').removeClass('m2-userCentermanage-bank-unsel').addClass('m2-userCentermanage-bank-sel');
            }
            ;
        });
        /*
         //徽商点击关闭隐藏银行卡
         $('.m2-userCentermanage-drawBox2 .m2-userCentermanage-bank-close').bind("click",function(event){
         $(this).parent().hide();
         $(this).siblings('.m2-userCentermanage-bank-sel').addClass('m2-userCentermanage-bank-unsel').removeClass('m2-userCentermanage-bank-sel');
         event.stopPropagation();
         });
         //徽商点击银行卡加对钩
         $('.m2-userCentermanage-drawBox2 .m2-userCentermanage-drawBox-bank').click(function(){
         console.log('123');
         if ($(this).children('em').hasClass('m2-userCentermanage-bank-unsel')) {
         $(this).siblings('.m2-userCentermanage-drawBox-bank').children('.m2-userCentermanage-bank-sel').removeClass('m2-userCentermanage-bank-sel').addClass('m2-userCentermanage-bank-unsel');
         $(this).children('em').removeClass('m2-userCentermanage-bank-unsel').addClass('m2-userCentermanage-bank-sel');
         };
         });
         */
        // tab切换徽商汇付
        $('.m2-userCentermanage-drawBoxtab span').click(function () {
            if ($(this).hasClass('m2-userCentermanage-drawBoxtab-unsel')) {
                $(this).addClass('m2-userCentermanage-drawBoxtab-sel').removeClass('m2-userCentermanage-drawBoxtab-unsel');
                $(this).siblings('span').addClass('m2-userCentermanage-drawBoxtab-unsel').removeClass('m2-userCentermanage-drawBoxtab-sel');
            }
        });

        $('.m2-userCentermanage-drawBoxtab1').click(function () {
            $('.m2-userCentermanage-drawBox1').show();
            $('.m2-userCentermanage-drawBox2').hide();
        });

        $('.m2-userCentermanage-drawBoxtab2').click(function () {
            $('.m2-userCentermanage-drawBox1').hide();
            $('.m2-userCentermanage-drawBox2').show();
        });

        // 大额、时事提现切换
        $('.m2-userHs-selList li').click(function () {
            if ($(this).hasClass('m2-userHslist-unsel')) {
                $(this).siblings('.m2-userHslist-sel').addClass('m2-userHslist-unsel').removeClass('m2-userHslist-sel');
                $(this).addClass('m2-userHslist-sel').removeClass('m2-userHslist-unsel');
                
            }
        });
        $('.m2-userHs-list1').click(function () {
        	var cardInfo="支持单笔5万及以下，单日20万及以下实时提现到账。单日20万以上请用大额提现。";
            $('.m2-userHs-exp span').html(cardInfo);
            $('.m2-userHs-bankName').hide();
    	      cleanAmount();
        });
        $('.m2-userHs-list2').click(function () {
            $('.m2-userHs-exp span').html('工作日9:00-16:00。到账时间为30分钟，依据发卡行不同可能略有差异。');
            $('.m2-userHs-bankName').show();
        });
    });
</script>
<script>
    'use strict';
    //国庆期间不允许大额提现
    var guoqing_time = '1515069112';

    //提现金额
    var amount = 0;
    //账户余额
    var account_balance = Number('0');
    //每日大额限额
    var day_limit = Number('50000');
    //当日累计提现金额
    var have_withdraw = Number('');
    //当前银行卡
    var card = '';
    //新银行卡
    var new_card = '';
    //开户行
    var bank_name = '';
    //开户支行号
    var bank_no;
    //工作时间
    var isworking = '-1';
	//不让提现原因
    var prompt_message='';
    var limit_amount='';
    var ishide_money='';
    var big_master_switch='1';//大额提现总开关
    var big_tipMsg='';//提现提示语
    var master_switch='1';//实时提现总开关
    var tipMsg='';//提现提示语
	 
  
    //金额变化
    $('#withdrawmoney').keyup(function () {
        checkAmount();
    });

    //提交提现(活动提醒，新增马上投资。狠心提现按钮)
    $('#withdrawbutton').click( function () {
    	//提现活动提示下线
      //$('.mo2-userDarwcon').show();
             //马上投资，跳转，投资列表页面
            //$( '.mo2-userDarwcon .btn_rig').click(function(){
                 // $( '.mo2-userDarwcon').hide();
                 // $('#withdrawmoney').val(""); //如果跳转马上投资，那么将金额域赋值为空，防止点击回退键的时候，显示提现页面，但是金额依然存在
                 // window.location.href = '/touzi_licai_chanpin.html';
            //});

             // 狠心提现调用提现function   cupwithdraw
           // $( '.mo2-userDarwcon .btn_lef').click(function(){
                //  $( '.mo2-userDarwcon').hide();
                  cupwithdraw();
            //});
    });
	//提现方法
	/* function cupwithdraw(){
		var withdrawmoney = $('#withdrawmoney').val();
		if (!card) {
            showMsg( '请先绑卡！' );
            return;
        }
        if(amount<=0){
            showMsg( '请输入有效的提现金额！' );
            return;
        }
       if(ishide_money==1){
           if(limit_amount!="" && account_balance<amount ){
               showMsg( prompt_message );
               return;
           }
       }else{
           if(limit_amount!="" && account_balance-limit_amount<amount ){
               showMsg( prompt_message );
               return;
           }
       }

        var is_chinabank = Number('' );
  
        var isdae = $('#dae' ).hasClass('m2-userHslist-sel');
        if (isdae) {
        	 if(big_master_switch==2){
    			showMsg(big_tipMsg);
    			return;
    		} 
            //国庆10.1零点至10.8零点期间禁止大额提现
            if(guoqing_time>1475251200 && guoqing_time<1475856000){
                showMsg( '国庆期间，大额提现暂停服务，详情见公告' );
                return;
            }
            //大额提现
            if(isworking == -1){
                showMsg( '大额提现只能在工作日9:00-16:00使用，请谅解！' );
                return;
            }
            bank_name = $( '#bankname').val();
            $.ajax({
                url: '/cupdata-capital-getBankNo',
                data: {
                    bankname: bank_name
                },
                success: function (data) {
                    var obj = eval('(' + data + ')');
                    if (obj === null) {
                        showMsg( '提现失败');
                        return;
                    }
                    if (obj['c' ] == 1) {
                        bank_name = obj[ 'name'];
                        bank_no = obj[ 'no'];
                        window.location.href = '/cupdata-capital-withdrawRouter?type=2&amount=' + amount + '&bankno=' + bank_no;
                    } else if (obj['c'] > 1) {
                        showMsg( '请输入具体的开户支行' );
                        return;
                    } else {
                        showMsg( '请输入正确的开户支行' );
                        return;
                    }
                }
            });
        } else {
        	 if(master_switch==2){
    			showMsg(tipMsg);
    			return;
    		} 
            //普通提现
             if (is_chinabank && amount>50000){
                        showMsg( '根据中国银行要求，5万元（不含）以上提现请使用大额提现功能' );
                         return;
             }
        	 if (withdrawmoney>day_limit){
       			showMsg('实时提现不能大于5万');
       			return;
              }
            window.location.href = '/cupdata-capital-withdrawRouter?type=1&amount=' + amount;
        }
		

		
	} */
    
    function cleanAmount() {
        $('#withdrawmoney').val('');
    }
    
    function checkAmount() {

        var val = $('#withdrawmoney').val();
        if (!isNaN(val)) {
            if (val.toString() === '') {
                amount = '';
                return;
            }
            if (val.toString().lastIndexOf('.') === val.toString().length - 1) {
                return;
            }
            if (val.toString().lastIndexOf('.0') === val.toString().length - 2 && val.toString().lastIndexOf('.') !== -1) {
                return;
            }
            amount = Number(val);
            if (val.toString().indexOf('0') === 0) {
            	$('#withdrawmoney').val(amount);
                return;
            }
            
            //余额
            if (amount > account_balance) {
                amount = account_balance;
		        $('#withdrawmoney').val(amount);
            }
            //大额限额
            if (amount > day_limit - have_withdraw) {
                $('.m2-userHs-list2').click();
            } 
        }else{
	        $('#withdrawmoney').val(amount);
        }
    }

    $('#cardinput').keyup(function () {

        var val = $('#cardinput').val();
        if (!isNaN(val)) {
            if (val.toString() === '') {
                new_card = '';
                return;
            }
            if (val.toString().lastIndexOf('.') === val.toString().length - 1) {

            } else {
                new_card = val;
            }
        }
        $('#cardinput').val(new_card);
    });

    function changeCard() {

        if (new_card == '') {
            showMsg('卡号不能为空');
            return;
        } else if (new_card == card) {
            showMsg('卡号不能与原卡相同');
            return;
        }

        $.ajax({
            url: '/cupdata-card-changeCard',
            data: {
                card: new_card
            },
            success: function (data) {
                var obj = eval('(' + data + ')');
                if (obj === null) {
                    showMsg('绑卡失败');
                    return;
                }

                if (obj['success'] == 1) {
                    card = new_card;
                    showMsg('绑卡完成', true);
                    $('#carddiv1').hide();
                    $('#carddiv2').show();
                    if (obj['iqbresult']['class']) {
                        $('#bankclass').removeClass($('#bankclass').prop('class'));
                        $('#bankclass').addClass('mo2-userChabank-common ' + obj['iqbresult']['class']);
                    } else {
                        $('#bankclass').removeClass($('#bankclass').prop('class'));
                        $('#bankclass').addClass('mo2-userChabank-common m2-userBankhf-22');
                    }
                    $('#cardshow').text(card.substr(0, 4) + '************' + card.substr(-4, 4));
                } else {
                    showMsg('绑卡失败：' + obj['iqbresult']['promptInfo']);
                }
            }
        });
    }

    function showMsg(msg, flag) {
        if (!flag) {
            $('.m2-userCommon-confirmWar').html('<i></i>' + msg);
            $('#msgdialog1').show();
            $('.m2-userCentercommon-bg').show();
        } else {
            $('.m2-userCommon-confirmSuc').html('<i></i>' + msg);
            $('#msgdialog2').show();
            $('.m2-userCentercommon-bg').show();
        }
    }

</script>
<script>

    var send_flag = true;
    var show_flag = true;
    var card_no;

    $('#cardinput').keyup(function () {

        var tcard_no = $('#cardinput').val();
        if (tcard_no.length < 6) {
            $('#cardinput').next('b').html('');
            show_flag = false;
            return;
        } else if (card_no) {
            if (tcard_no.substr(0, 6) == card_no.substr(0, 6)) {
                return;
            } else {
                show_flag = false;
            }
        }
        getCardInfo();
    });

    function getCardInfo() {

        if (send_flag) {
            card_no = $('#cardinput').val();
            send_flag = false;
            show_flag = true;
            $.ajax({
                url: '/cupdata-card-getCardInfo',
                data: {
                    card: card_no
                },
                success: function (data) {
                    send_flag = true;
                    if (show_flag) {
                        var obj = eval('(' + data + ')');
                        if (obj['day_limit'] >= 500000 && obj['single_limit'] >= 500000) {
                            $('#cardinput').next('b').html('');
                        } else if (obj['day_limit'] > 0 && obj['single_limit'] >= 0) {
                            $('#cardinput').next('b').html(obj['inst_name'] + '充值限额：单笔'
                                    + (obj['single_limit'] / 10000) + '万，单日' + (obj['day_limit'] / 10000) + '万');
                        } else {
                            $('#cardinput').next('b').html('您的银行卡不支持充值，但可用于提现操作。');
                        }
                    }
                }
            });
        }
    }
</script>

</script>
</body>
</html>

<input type="text" onkeyup="var p2 = parseFloat(value).toFixed(2);value = p2>=0?(/\.0?$/.test(value)?value:p2.replace(/0$/,'').replace(/\.0$/,'')):''" onblur="value = value.replace(/\.0*$/,'')"/>





