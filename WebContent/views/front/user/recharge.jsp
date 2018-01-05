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
    	<script src="<%=path%>/statics/front/statics/newcommon/js/html5shiv.js"></script>
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
		<title>投资记录 | 亿信金融</title>
</head>
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
	    <!-- 树end -->
	<div style="width:100%; height:100%; position:fixed; z-index:100; top:0; display:none; left:0;" id="allP" >
        <div style="width:100%; height:100%; position:absolute; top:0; left:0; background:#000; opacity:0.5;"></div>
        <div style="width:404px; height:154px; background:#fff; position:absolute; top:50%; left:50%; margin-left:-252px; margin-top:-100px; border:2px solid #666;">
            <p style="color: #666666;font-size: 16px;absolute;line-height:170px;text-align: center; font-family: Microsoft YaHei;;">该项目已还清，为保护企业隐私，不再公示项目信息</p>
            <div style="width: 30px;height: 30px;position: absolute;top: 11px;right: 0px;color: #666;font-size: 20px;cursor: pointer;" id="close">X</div>
        </div>
   </div>
    <!-- 绑定银行卡弹窗start -->
    <!--<div class="m2-userCentercommon-bg" style="display:none;"></div>-->
    <div class="m2-charge2Confirm" style="display:none;">
        <b class="m2-cha2Con-close"></b>
        <div class="m2-cha2Conf-bind">
            <div class="m2-cha2Conf-tit">
                <span>绑定银行卡</span>
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
                            <b class="m2-chaConf-warn" style='color:#999;'>认证手机号须与银行卡预留手机号一致 否则无法绑卡</b>
                        </td>
                    </tr>
                    <tr>
                        <td class="m2-chaConf-tit">
                            <i class="m2-chaConf-card"></i>
                            <span>借记卡</span>
                        </td>
                        <td class="m2-chaConf-con">
                            <input type="text" style="width:265px;" placeholder="" id="cardinput" maxlength="19">
                            <b class="m2-chaConf-warn" style='color:#999;'>该银行卡开户姓名必须为，否则会提现失败！</b>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="m2-cha2Confsubmit">
            <span class="m2-cha2Confsub-sure" onclick="changeCard()">确&nbsp;&nbsp;&nbsp;认</span>
        </div>
    </div>
    <script type="text/javascript">
        var oldBank = $('.m2-userBankitem').children('i').attr('class');
        var newBank = "";
        // 关闭
        $('.m2-cha2Con-close').click(function () {
            $('.m2-charge2Confirm,.m2-userCentercommon-bg').hide();
        });

        binkSubmit();
        // 点击确认按钮
        function binkSubmit() {
            $('.m2-cha2Confsub-sure').click(function () {
//                $('.m2-userBankitem').children('i').removeClass(oldBank).addClass(newBank);
                $('.m2-userCentercommon-bg').hide();
                $('.m2-charge2Confirm').hide();
            });
        }
        //调整弹窗top值
        function chaContop() {
            $('.m2-charge2Confirm').css('top', $(document).scrollTop() + 150);
        }
    </script>
    <!-- 绑定银行卡弹窗end -->
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
            window.location.reload();
        });
    </script>
	<div class="m2-userCentermanage-con">      
		<div class="m2-user-recharge" style="padding:4px 0 4px 0;"><h3><i></i>充值</h3></div>
        <div class="m2-recharge-mainbody">
			<div class="m2-userChahea">
				<div class="m2-userChahea-lef">
					<div class="m2-useChahea-head">
						<a href="/register-banklist#a004" target="_blank" class="m2-useCha-benDet"></a>
                        <h4><i></i>账户余额收益</h4>
                        <div style="display:inline-block;text-align:center;width:49%;margin:36px 0;">
                            <p style="font-size:16px;line-height:12px;">0元</p>
                            <p style="font-size:14px;line-height:30px;">昨日余额收益</p>
                        </div>
                        <div style="display:inline-block;text-align:center;width:49%;margin:36px 0;">
                            <p style="font-size:16px;line-height:12px;">0元</p>
                            <p style="font-size:14px;line-height:30px;">累计余额收益</p>
                        </div>
                    </div>
					<div class="m2-useChahea-bot">
						<div class="m2-useChabot-item">
							<div class="m2-useChabot-tit">
								<span>7日内期望年化回报率</span>
                                <b class="m2-detail-titIcon" style="position:relative;top:6px;right:0;">
                                    <u>
                                        <em class="m2-detail-titHide-arr"></em>
                                        <em class="m2-detail-titHide-arrBg"></em>
                                        为了使您的理财收益最大化，您账户中的剩余金额系统将自动为您购买国寿货币基金。您持有的基金总额可直接用于投资爱钱帮任意理财产品，以此使您的理财收益最大化。18岁以下用户无法享受货币基金收益，将按银行活期存款利率计算，在提现第二日发放。
                                    </u>
                                </b>
							</div>
                            <div class="m2-useChabot-num">
                                <span>5.34%</span>
                            </div>
						</div>
					</div>
                </div>
                <div class="m2-userChahea-rig">
                    <div class="m2-useCharig-line"></div>
                    <div class="m2-useChaCardbox">
						<div class="m2-useCardbox-head">
                            <div class="m2-useCardbox-logo"><i></i></div>
                            <div class="m2-useCardbox-tit"><span>电子交易账户</span><a href="/register-banklist#a003"></a></div>
                        </div>
                        <div class="m2-useCardbox-mid"> </div>
                        <div class="m2-useCardbox-bot">
                            <p>开户人：<span></span></p>
                            <p>账户余额：<b>0</b>元</p>
                        </div>
                    </div>
                </div>
            </div>
			<h4 class="m2-userCha2-tabHead">选择充值方式</h4>
            <div class="m2-usercha2-tab">
                
            </div>
            <div class="m2-usercha2-contain">
                <div class="m2-recharge-mainbody">
                    <div class="m2-user-bankSelbox"  id='carddiv1'>
                        <div class="m2-userBankitem m2-userBank-unsel m2-userBankitem-add" style="width:255px;height:64px;">
                            <i class="mo2-userChabank-add"></i>
                            <span class="m2-userBankitem-bind"> 添加银行卡</span>
						</div>
                        <div class="m2-userBank-chose" style="padding-top:10px;">
                            <a href="#">查看充值限额&raquo;</a>
                            <b class="m2-userBank-choWarn">如需换卡，请联系客服：4006-777-518</b>
                        </div>
                    </div>
                    <div class="m2-user-bankSelbox" style="display:none" id='carddiv2'>
                        <div class="m2-userBankitem m2-userBank-sel" style="width:255px;height:64px;">
                            <i class="mo2-userChabank-common " id="bankclass"></i>
                            <span class="m2-userBankitem-det">
                                <span id="inst_name" style="font-size:15px;"></span><br>
                                <span id="cardshow"></span>
                            </span>
                            <b class="mo2-user-bank-corner"></b>
                        </div>
                        <div class="m2-userBank-chose" style="padding-top:10px;">
                            <span>选择其他银行卡&raquo;</span>
                            <!-- <a href="#">查看充值限额&raquo;</a> -->
                            <b class="m2-userBank-choWarn">如需换卡，请联系客服：4006-777-518</b>
                        </div>
                    </div>               
                    <div class="m2-recharge-ent">
                        <table cellpadding="0" cellspacing="0" border="0" style="width:600px;">
                            <tr>
                                <td align="right">充值金额：</td>
                                <td><input type="text" class="m2-input-ent" placeholder="请输入充值金额" id="chargemoney" /></td>
                            </tr>
                         
                            <tr style="height:58px;">
                                <td align="right">验证码：</td>
                                <td><input type="text" class="m2-input-ent" placeholder="请输入验证码" id="sms_code" /></td>
                                <td><input type="hidden" class="m2-input-ent" placeholder="请输入验证码" id="sms_seq" /></td>
                                <td><a   href="javascript:void(0)" class="m2-recharge-entChr"  id="fsyzm" style="width:100px;height:40px;font-size:14px;line-height:40px;">发送验证码</a></td>
                                
                            </tr>
                            
                            <tr>
                                <td align="right">手续费：</td>
                                <td class="m2-recharge-cost"><span>0</span>元 </td>
                            </tr>
                            <tr>
                                <td align="right">发卡行限额：</td>
                                <td colspan="2">
                                <span id="limitspan">单笔0元，单日0元</span>
                                
                                </td>
                                <td><a class="m2-recha2-limLink" href="/register-banklist#a001">查看限额</a>或<a class="m2-recha2-limLink" href="javascript:void(0);" id="changbank">使用限额更高的银行转账</a></td>
                            </tr>
                            <tr>
                                <td align="right">到账金额：</td>
                                <td id="chargemoney1">0元</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><a href="#" class="m2-recharge-entChr"  onclick='recharge_yzm()'>充值</a></td>
                            </tr>
                        </table>
                    </div>
                    <div class="m2-onlineChargelist">
					<h3>支持银行列表：</h3>
					<ul>
					<li class="m2-onlineCha-li"><img src="https://www.iqianbang.com/statics/home2/images/bank/onlineBank1.jpg" alt=""></li>
					<li class="m2-onlineCha-li"><img src="https://www.iqianbang.com/statics/home2/images/bank/onlineBank2.jpg" alt=""></li>
					<li class="m2-onlineCha-li"><img src="https://www.iqianbang.com/statics/home2/images/bank/onlineBank3.jpg" alt=""></li>
					<li class="m2-onlineCha-li"><img src="https://www.iqianbang.com/statics/home2/images/bank/onlineBank5.jpg" alt=""></li>
					<li class="m2-onlineCha-li"><img src="https://www.iqianbang.com/statics/home2/images/bank/onlineBank6.jpg" alt=""></li>
					<li class="m2-onlineCha-li"><img src="https://www.iqianbang.com/statics/home2/images/bank/onlineBank7.jpg" alt=""></li>
					<li class="m2-onlineCha-li"><img src="https://www.iqianbang.com/statics/home2/images/bank/onlineBank11.jpg" alt=""></li>
                     </ul>
<!--					<div class="m2-onlineToggle">-->
<!--						<span class="toggleUp">更多银行<i></i></span>-->
<!--					</div>-->
				</div>
                    <div class="m2-recharge-tips">
                        <h3><i></i>温馨提示：</h3>
						<ul>
							    <li><i class="m2-recharge-tips01"></i><b>请勿使用360兼容模式进行充值操作。</b></li>
	                            <li><i class="m2-recharge-tips02"></i><b>投资人充值不收取手续费。</b></li>
	                            <li><i class="m2-recharge-tips03"></i><b>徽商银行电子交易账户采用原卡进出设置，为了您的资金安全，只能提现至您绑定的银行卡。</b></li>
	                            <li><i class="m2-recharge-tips04"></i><b>更换已绑定的银行卡需在投金额和账户余额都为0，如需换卡或充值过程中遇到问题，请联系客服：4006-777-518。</b></li>
	                            <li><i class="m2-recharge-tips05"></i><b>若您充值后未投资，系统将自动为您认购国寿安保货币基金，您持有的基金总额可直接用于投资爱钱帮任意理财产品，以此使您的理财收益最大化。</b></li>
						</ul>
                    </div>
                </div>
            </div>
           
			</div>
           
		</div>
    </div>
<script type="text/javascript">
    $(function () {
    	// 支持网银充值银行列表展开收起
		$('.m2-onlineToggle span').click(function(){
			if ($(this).hasClass('toggleUp')) {
				$(this).addClass('toggleDown').removeClass('toggleUp');
				$('.m2-onlineCha-hid').show();
				$(this).html('收起更多<i></i>')
			}else if ($(this).hasClass('toggleDown')) {
				$(this).addClass('toggleUp').removeClass('toggleDown');
				$('.m2-onlineCha-hid').hide();
				$(this).html('展开银行<i></i>')
			}
		})
        
        $('.m2-userBankitem').click(function () {
            $(this).toggleClass('m2-userBank-sel m2-userBank-unsel');
        });
        $('.m2-userBank-chose span,.m2-userBankitem-add').click(function () {
            $('#cardinput').val('');
            card_no = '';
            new_card = '';
            $('.m2-userCentercommon-bg,.m2-charge2Confirm').show();
        });
        $('.m2-usercha2-tab ul li').click(function () {
            if ($(this).hasClass('m2-userCha2tab-unsel')) {
                $(this).addClass('m2-userCha2tab-sel').removeClass('m2-userCha2tab-unsel');
                $(this).siblings('.m2-userCha2tab-sel').addClass('m2-userCha2tab-unsel').removeClass('m2-userCha2tab-sel');
                $('.m2-usercha2-contain').eq($(this).index()).show();
                $('.m2-usercha2-contain').eq($(this).index()).siblings('.m2-usercha2-contain').hide();
            }
        });
        $('#wangguan_recharge').click(function(){
          var wgmoney=$("#wangguan_num").val();
          if (!wgmoney||wgmoney<=0) {
              showMsg('请输入有效的充值金额！');
              return;
          }
          window.open('/usercenter-capitalcontrol-recharge_wangguan?tmoney='+wgmoney);
        });
        $("#alipaycontent li").click(function(){
			$("#alipaycontent li").removeClass("alipayselect");
			$(this).addClass("alipayselect");
			var data="https://www.iqianbang.com/statics/home2/images/bank/onlineBank"+$(this).attr("data")+".png";
			$("#alipaycontent img").prop("src",data);
    });
		$("#changbank").click(function(){
			$(".m2-usercha2-tab ul li").eq(3).click();
		})
    });
</script>
<script>
    'use strict';

    //充值金额
    var money = 0;
    //单日限额
    var day_limit = Number('');
    //单笔限额
    var single_limit = Number('');
    //单日已冲金额,目前没用
    var have_recharge = 0;//Number('');
    //当前银行卡
    var card = '';
    //新银行卡
    var new_card = '';
    //是否是直充银行
    var isin12bank = '';
    //银行名称
    var inst_name = '';
    
    //银行卡样式
    var uclass='';

    
    //银行卡开关
    var is_open='';

    //银行卡提示语（关闭时候提示）
    var prompt_language='';
    

    $(document).ready(function () {
        var msg = getQueryString('msg');
        var type = getQueryString('type');
        if (msg) {
            if (msg.indexOf('%') !== -1) {
                showMsg(UrlDecode(msg), type);
            } else {
                showMsg(msg, type);
            }
        }
    });

    $('#chargemoney').keyup(function () {
        moneyValidation();
    });

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



    //验证金额
    function moneyValidation() {

        var val = $('#chargemoney').val();
        if (!isNaN(val)) {
            if (val.toString() === '') {
                money = '';
                return;
            }
            if (val.toString().lastIndexOf('.') === val.toString().length - 1) {
                return;
            }
            if (val.toString().lastIndexOf('.0') === val.toString().length - 2 && val.toString().lastIndexOf('.') !== -1) {
                return;
            }
            money = Number(val);
            //单笔限额
            if (money > single_limit && single_limit > 0) {
                money = single_limit;
            }
            //单日限额
            if (money > day_limit - have_recharge && day_limit > 0) {
                money = day_limit - have_recharge > 0 ? day_limit - have_recharge : 0;
            }
        }
        $('#chargemoney').val(money);
        $('#chargemoney1').html(money + '元');
    }

    //提交充值
    function recharge() {

        var money = $('#chargemoney').val();

        if (!money) {
            showMsg('请输入充值金额！');
            return;
        } else if (!card) {
            //没有绑卡
            showMsg('请先绑卡！');
            return;
        } else if (!isin12bank) {
            //不在12家银行
            showMsg('请前往网银充值！');
            return;
        } else if (inst_name == '招商银行'||inst_name == '华夏银行'||inst_name == '交通银行'||inst_name == '邮政储蓄银行'||inst_name == '农业银行'||inst_name == '民生银行') {
            //暂未恢复的银行
            showMsg('该卡暂不支持快捷支付，请您使用支付宝、手机银行等方式转账到自己的徽商银行电子账户内完成充值');
            return;
        }

        $.ajax({
        	url:'/cupdata-capital-postalTimeControl',
			success:function(data){
			if(data==0){

				showMsg('邮政每天20：00~次日2：30不可充值', true);
			}else{

		        var recharge_money = money;
		        money = '';
		        $('#chargemoney').val(money);
		        showLoading(true);

		        $.ajax({
		            url: '/cupdata-capital-userRecharge',
		            data: {
		                amount: recharge_money
		            },
		            success: function (data) {

		                showLoading(false);
		                var obj = eval('(' + data + ')');
		                if (obj === null) {
		                    showMsg('充值失败');
		                    return;
		                }
		                if (obj['success'] == 1) {
		                    showMsg('充值完成', true);
		                } else if (obj['success'] == 4) {
		                    //实名认证
		                  window.location.href = obj['url'];
		                } else {
		                    showMsg('充值失败：' + obj['iqbresult']['promptInfo']);
		                }
		            }
		        });
			}
			}
        });
    }

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
                    isin12bank=1;
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
                    day_limit = obj['iqbresult']['day_limit'] ? obj['iqbresult']['day_limit'] : 0;
                    single_limit = obj['iqbresult']['single_limit'] ? obj['iqbresult']['single_limit'] : 0;
                    $('#limitspan').text('单笔' + (single_limit > 10000 ? (single_limit / 10000 + '万') : (single_limit + '元')) + '，单日' + (day_limit > 10000 ? (day_limit / 10000 + '万') : (day_limit + '元')));
                    $('#cardshow').text(card.substr(0, 4) + '************' + card.substr(-4, 4));
                    $('#inst_name').text(obj['iqbresult']['inst_name']);
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

    function showLoading(flag) {
        if (flag) {
            $('.m2-userCentercommon-bg').show();
            $('.m2-userAjax-loading').show();
        } else {
            $('.m2-userCentercommon-bg').hide();
            $('.m2-userAjax-loading').hide();
        }
    }

    function getQueryString(name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
        var r = window.location.search.substr(1).match(reg);
        if (r != null) {
            return UrlDecode(r[2]);
        }
        return null;
    }

    function UrlDecode(zipStr) {

        var uzipStr = "";
        for (var i = 0; i < zipStr.length; i++) {
            var chr = zipStr.charAt(i);
            if (chr == "+") {
                uzipStr += " ";
            } else if (chr == "%") {
                var asc = zipStr.substring(i + 1, i + 3);
                if (parseInt("0x" + asc) > 0x7f) {
                    uzipStr += decodeURI("%" + asc.toString() + zipStr.substring(i + 3, i + 9).toString());
                    i += 8;
                } else {
                    uzipStr += AsciiToString(parseInt("0x" + asc));
                    i += 2;
                }
            } else {
                uzipStr += chr;
            }
        }
        return uzipStr;
    }

    function StringToAscii(str) {
        return str.charCodeAt(0).toString(16);
    }

    function AsciiToString(asccode) {
        return String.fromCharCode(asccode);
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
    };

    var t1=0;
    $("#fsyzm").click(function(){
    		t2 = Date.now();
    		 var num=60;
			if(t2-t1 > num*1000 ){
				t1 = Date.now();
				 $.ajax({
					url:'/cupdata-capital-userRecharge_SendYZM',
					success:function(data){
		        	  var obj1 = eval('(' + data + ')');
		        	  var obj2 = eval('(' + obj1.message + ')');
		        	  if(obj2.success==1){
		        		  // showMsg('发送短信成功！', true);
		            		//  alert("发送短信成功！");
		            	  $('#sms_seq').val(obj2.iqbresult.SMS_SEQ);
		           	  }else{
		           		 // showMsg('发送短信失败！');
		           		  alert("发送短信失败！");
		              }
		        	}
		        });
				  
					var self=$(this);
					$(this).css("backgroundColor","gray").html(num);
					var set=setInterval(function(){
						num--;
						self.html(num);
						if(num==0){
							clearInterval(set);
							self.css("backgroundColor","#ea843b").html("发送验证码");
						}
					},1000);
				
			}
    });
    	   

 			
 		

        
       
    

    //提交充值
    // 新版验证码充值 20160523 - add by zml 
     function recharge_yzm() {
         var money = $('#chargemoney').val();
         var sms_code = $('#sms_code').val();
         var sms_seq = $('#sms_seq').val();

         if (!money) {
             showMsg('请输入充值金额！');
             return;
         } else if (!sms_code) {
             //没有绑卡
             showMsg('请输入验证码！');
             return;
         }
//         else if (!sms_seq) {
//             //没有绑卡
//             showMsg('验证码不正确！');
//             return;
//         }
         else if (!card) {
             //没有绑卡
             showMsg('请先绑卡！');
             return;
         } else if (!isin12bank) {
             //不在12家银行
             showMsg('请前往网银充值！');
             return;
         }  else if (is_open ==0) {
             //暂未恢复的银行
             showMsg(prompt_language);
             return;
         }

         $.ajax({
         	url:'/cupdata-capital-postalTimeControl',
 			success:function(data){
 			if(data==0){
 				showMsg('邮政每天20：00~次日2：30不可充值', true);
 			}else{

 		        var recharge_money = money;
 		        money = '';
 		        $('#chargemoney').val(money);
 		        showLoading(true);
 		        $.ajax({
 		            url: '/cupdata-capital-userRecharge_yzm',
 		            data: {
 		                amount: recharge_money,
 		                sms_code: sms_code,
 		                sms_seq: sms_seq
 		            },
 		            success: function (data) {

 		                showLoading(false);
 		                var obj = eval('(' + data + ')');
 		                if (obj === null) {

 		                    showMsg('充值失败');
 		                     $('#chargemoney').val("");
 		                     $('#sms_code').val("");
 		                     $('#sms_seq').val("");
 		                    return;
 		                }
 		                if (obj['success'] == 1) {

 		                	showMsg('充值完成', true);
 		                    $('#chargemoney').val("");
 		                     $('#sms_code').val("");
 		                     $('#sms_seq').val("");
 		                } else if (obj['success'] == 4) {

 		                	  $('#chargemoney').val("");
 			                     $('#sms_code').val("");
 			                     $('#sms_seq').val("");
 		                    //实名认证
 		                    window.location.href = obj['url'];
 		                } else {

 		                    showMsg('充值失败：' + obj['iqbresult']['promptInfo']);
 		                }
 		            }
 		        });
 			}
 			}
         });
     }
     
     
</script>
</body>
</html>