<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%>  
<!DOCTYPE html>
<html lang="en">
	<head>
	    <meta charset="UTF-8">
	    <!--[if lt IE 9]>
	    <script src="statics/newcommon/js/html5shiv.js"></script>
	    <![endif]-->
	    <meta name="keywords" content="网贷平台,网络借贷，网络赚钱项目,理财产品">
	    <meta name="description" content="爱钱帮网贷平台为您提供网络赚钱项目；为此相继推出了许多新的理财产品，在为您创造高收益的同时也优化了理财产品模式。网络借贷，就选爱钱帮。">
	    <meta charset="UTF-8">
		<link rel="shortcut icon" href="/Finances/statics/other/lco/smalllog.png"> 
	    <link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-commonNew.css">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-common.css">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/usercenter/css/userCenter.css">
	    <script type="text/javascript" src="/Finances/statics/front/statics/newcommon/js/jquery.min.js"></script>
	    <script type="text/javascript" src="/Finances/statics/front/statics/newcommon/js/common.js"></script>
	    <script type="text/javascript" src="/Finances/statics/front/statics/usercenter/js/esl.js"></script>
	    <link rel="stylesheet" href="/Finances/statics/front/statics/usercenter/css/jquery.datetimepicker.css" />
	    <script type="text/javascript" src="/Finances/statics/front/statics/usercenter/js/jquery.datetimepicker.js"></script>
		<title>投资记录_亿信金融</title>
	</head>
	
<body>
			<!-- 右侧边栏start -->
			<div class="m2-commonRight">
			    <ul class="m2-comRiglist">
			        <li class="m2-comRigli m2-comRigli-ewm">
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
			                        <img id="ivrSecurityCodeImg" onclick="getCode()" src="/Finances/statics/front/statics/home2/images/code.png" alt="验证码" title="点击更新验证码">
			                    </div>
			                </div>
			                <div class="m2-comRigtel-rig">
			                    <span  onclick='callback()'>免费<br>拨打</span>
			                </div>
			            </div>
			        </li>
			        <li class="m2-comRigli m2-comRigli-qq">
			            <a  target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=2522274059&amp;site=qq&amp;menu=yes">
			                <i class="m2-comRigli-icon"></i>
			                <span class="m2-comRigli-hov">在线<br>客服</span>
			            </a>
			            <!-- <div class="m2-comRighide"></div> -->
			        </li>
			        <!--<li class="m2-comRigli m2-comRigli-sug">-->
			        <!--<i class="m2-comRigli-icon"></i>-->
			        <!--<span class="m2-comRigli-hov">意见<br>反馈</span>-->
			        <!-- <div class="m2-comRighide"></div> -->
			        <!--</li>-->
			        <li class="m2-comRigli m2-comRigli-top">
			            <i class="m2-comRigli-icon"></i>
			            <span class="m2-comRigli-hov">返回<br>顶部</span>
			            <!-- <div class="m2-comRighide"></div> -->
			        </li>
			    </ul>
			</div>
			
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
	
	<!-- 内容 -->
	<div class="m2-userCentermain">
    <div class="m2-userCentermain-aside">
        <ul>
            <li class="m2-asideListitem">
                <a class="m2-aside-item" href="/Finances/views/front/user/usercenter.jsp"><i class="m2-asideIcon1"></i>我的账户</a>
            </li>
            <li class="m2-asideListitem">
                <a class="m2-aside-item" href="/Finances/views/front/user/growthcenter.jsp"><i class="m2-asideIcon-vip"></i>成长值中心</a>
            </li>
            <li class="m2-asideListitem">
                <a class="m2-aside-toggle m2-aside-cur" ><i class="m2-asideIcon2"></i>投资管理<b class="m2-asideIcon-new"></b></a>
                <ul class="m2-aside-secItem" style="display:none">
                    <!--             取消自动投标-->
                    <!--                   <li>-->
                    <!--                        <a class="m2-aside-secLink-item" href="/usercenter-investcontrol-autoinvest"><b class="m2-asideIcon-new"></b>自动投标</a>-->
                    <!--                    </li>-->

                    <li>
                        <a class="m2-aside-secLink-item" href="/Finances/views/front/user/investrecord.jsp">投资记录</a>
                    </li>
                    <li>
                        <a class="m2-aside-secLink-item" href="/Finances/views/front/user/payment.jsp">回款计划</a>
                    </li>
                    <li>
                        <a class="m2-aside-secLink-item" href="/Finances/views/front/user/transfer.jsp">债权转让</a>
                    </li>
                    <li>
                        <a class="m2-aside-secLink-item" href="/Finances/views/front/invest.jsp" target="_blank">立即投资</a>
                    </li>

                </ul>
            </li>

            <li class="m2-asideListitem">
                <a class="m2-aside-item" href="/Finances/views/front/inviting.jsp">
                    <i class="m2-asideIcon-invit"></i>
                    <b class="m2-asideIcon-prize"></b>
                    邀请好友
                </a>
            </li>
            <li class="m2-asideListitem">
                <a class="m2-aside-item m2-aside-toggle" href="/Finances/views/front/openbankid.jsp"><i class="m2-asideIcon3"></i>徽商资金管理</a>            <ul class="m2-aside-secItem" style="display:none">
                <li><a class="m2-aside-secLink-item" href="#">充&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;值</a></li>
                <li><a class="m2-aside-secLink-item" href="#">提&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;现</a></li>
                <li><a class="m2-aside-secLink-item" href="#">资金流水</a></li>

            </ul>
            </li>
            <li class="m2-asideListitem">
                <a class="m2-aside-item m2-aside-toggle" ><i class="m2-asideIcon4"></i>奖励管理</a>
                <ul class="m2-aside-secItem" style="display:none">
                    <li>
                        <a class="m2-aside-secLink-item" href="usercenter-rewardcontrol-rewardrecord.html">奖励金流水</a>
                    </li>
                    <li>
                        <a class="m2-aside-secLink-item" href="usercenter-rewardcontrol-redpacket.html">我的红包</a>
                    </li>
                    <li>
                        <a class="m2-aside-secLink-item" href="usercenter-rewardcontrol-interestcoupon.html">我的加息券</a>
                    </li>
                    <li>
                        <a class="m2-aside-secLink-item" href="usercenter-rewardcontrol-mycoin.html">我的钱帮币</a>
                    </li>
                </ul>
            </li>
            <li class="m2-asideListitem">
                <a class="m2-aside-item m2-aside-toggle" ><i class="m2-asideIcon5"></i>消息管理 </a>
                <ul class="m2-aside-secItem" style="display:none">
                    <li>
                        <a class="m2-aside-secLink-item" href="usercenter-messagecontrol-sitemsg.html">站内消息</a>
                    </li>
                    <li>
                        <a class="m2-aside-secLink-item" href="usercenter-messagecontrol-set_message.html">通知设置</a>
                    </li>
                </ul>
            </li>
            <li class="m2-asideListitem">
                <a class="m2-aside-item m2-aside-toggle" ><i class="m2-asideIcon6"></i>账户管理</a>
                <ul class="m2-aside-secItem" style="display:none" id='aaa'>
                    <li>
                        <a class="m2-aside-secLink-item" href="#">账户设置</a>
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

    <div style="width:100%; height:100%; position:fixed; z-index:100; top:0; display:none; left:0;" id="allP" >
        <div style="width:100%; height:100%; position:absolute; top:0; left:0; background:#000; opacity:0.5;"></div>
        <div style="width:404px; height:154px; background:#fff; position:absolute; top:50%; left:50%; margin-left:-252px; margin-top:-100px; border:2px solid #666;">
            <p style="color: #666666;font-size: 16px;absolute;line-height:170px;text-align: center; font-family: Microsoft YaHei;;">该项目已还清，为保护企业隐私，不再公示项目信息</p>
            <div style="width: 30px;height: 30px;position: absolute;top: 11px;right: 0px;color: #666;font-size: 20px;cursor: pointer;" id="close">X</div>
        </div>

    </div>
    <div class="m2-userCentermanage-con">
        <div class="m2-manage-search">
            <div class="m2-manage-search-head">
                <h3><i></i>投资记录</h3>
            </div>
            <div class="m2-manage-search-selector">
                <ul class="m2-manageSearchsel-time m2-manageSearchsel-time1" style="margin-bottom:15px">
                    <li>时间范围：</li>
                    <li class="m2-manageSearchsel-link m2-manageSearchsel-link1"><span class="m2-manSealink-sel" >全部</span></li>
                    <li class="m2-manageSearchsel-link m2-manageSearchsel-link1"><span class="m2-manSealink-unsel" >最近7天</span></li>
                    <li class="m2-manageSearchsel-link m2-manageSearchsel-link1"><span class="m2-manSealink-unsel" >一个月</span></li>
                    <li class="m2-manageSearchsel-link m2-manageSearchsel-link1"><span class="m2-manSealink-unsel" >三个月</span></li>
                    <li>从<input id="m2-manSeadate-start" type="text"></li>
                    <li>到<input id="m2-manSeadate-end" type="text"></li>
                </ul>
                <ul class="m2-manageSearchsel-time m2-manageSearchsel-time2" style="margin-bottom:15px">
                    <li>回款状态：</li>
                    <li class="m2-manageSearchsel-link m2-manageSearchsel-link2"><span class="m2-manSealink-sel" >全部</span></li>
                    <li class="m2-manageSearchsel-link m2-manageSearchsel-link2"><span class="m2-manSealink-unsel" >还款中</span></li>
                    <li class="m2-manageSearchsel-link m2-manageSearchsel-link2"><span class="m2-manSealink-unsel" >已结清</span></li>
                    <li class="m2-manageSearchsel-link m2-manageSearchsel-link2"><span class="m2-manSealink-unsel" >已转让</span></li>
                </ul>
                <ul class="m2-manageSearchsel-time m2-manageSearchsel-time3" style="margin-bottom:15px">
                    <li>投资方式：</li>
                    <li class="m2-manageSearchsel-link m2-manageSearchsel-link3"><span class="m2-manSealink-sel" >全部</span></li>
                    <li class="m2-manageSearchsel-link m2-manageSearchsel-link3"><span class="m2-manSealink-unsel" >自动投标</span></li>
                    <li class="m2-manageSearchsel-link m2-manageSearchsel-link3"><span class="m2-manSealink-unsel" >手动投标</span></li>
                </ul>
                <table class="m2-userInvest-table"  cellpadding="0" cellspacing="0" >
                    <tr class="m2-userInevst-head" >
                        <th style="width:140px;">项目名称</th>
                        <th style="width:120px;">投资金额</th>
                        <th style="width:60px;">收益率</th>
                        <th style="width:120px;">计息日</th>
                        <th style="width:120px;">还款日</th>
                        <th style="width:168px;"></th>
                    </tr>
                    <tr class="m2-userTable-noData"><td>暂无数据</td><td colspan="5"></td></tr>					</table>
                <input type="hidden" value=1 class="nowpages">
                <input type="hidden" value= class="recordpages">
	            </div>
	        </div>
	    </div>
	</div>
	
	<script>

    var oP=document.getElementById('allP');
    var oClose=document.getElementById('close');
    //oP.style.display='none';
    oClose.onclick=function(){
        oP.style.display='none';
    };
    var investdata=new Array(0,0,0);
    var capitalprogress=new Array();

    /**
     * 已结束的项目不允许查看合同
     */
    function linkContractContract(that){
        var bid=that.getAttribute('bid');
        var status = that.getAttribute('status');
        if(status==7||status==11){
            oP.style.display='block';
        } else {
            window.open("member-contract-investor.shtml?id="+bid,"_blank");
        }
    }
    /**
     * 已结束的项目不允许查看合同
     */
    function linkContracttransContract(that){
        var bid=that.getAttribute('bid');
        var status = that.getAttribute('status');
        if(status==7||status==11){
            oP.style.display='block';
        } else {
            window.open("member-contracttrans-investor.shtml?id="+bid,"_blank");
        }
    }
    /**
     * 已结束的项目不允许下载合同
     */
    function linkDownload(that){
        var bid=that.getAttribute('bid');
        var status = that.getAttribute('status');
        if(status==7||status==11){
            oP.style.display='block';
        } else {
            window.open("Member-Contract-createAndSendPdfbyid?id="+bid,"_blank");
        }
    }
</script>
<script type="text/javascript" src="/Finances/statics/front/statics/usercenter/js/m2-userCenter-invest.js"></script>
</body>
</html>
	
