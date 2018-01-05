<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
	String path = request.getContextPath();
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

<!--        
		<div class="m2-userCentermanage-accNum">
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
                                <span class="m2-userCenterdraw-serTot" style="color:#f5944f;">0元</span>
                            </li>
                        </ul>
                    </div>
                    <div class="m2-userCentermanagedraw-numInput">
                        <div class="m2-userCentermanage-drawBox-cardTit m2-txtRig">
                            <span>提现金额：</span>
                        </div>
                        <div class="m2-userCentermanage-drawNum">
                            <input type="text" class="m2-userCentermanagedraw-num" placeholder="请输入提现金额" id='withdrawmoney'>
                            <input type="submit" class="m2-userCentermanagedraw-submit" value="提&nbsp;现" id='withdrawbutton'>
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
                        	<!--<span>支持20万元（含20万元）以下资金提现，实时到账。20万元以上请使用大额提现。</span>-->
                        	                        		<span>支持单笔5万及以下，单日20万及以下实时提现到账。单日20万以上请用大额提现。</span>                        </p>
                    </div>

                <!--已经有银行卡end-->

                <div class="m2-userCentermanage-explainBox">
                    <ul>
                        <li>
                            <span class="m2-txtRig">手续费：</span>
                            <span class="m2-userCenterdraw-serTot">0元</span>
                            <b class="m2-userCentermanagedraw-moreDetail">
                                <u>
                                    <em class="m2-draw-arr"></em>
                                    <em class="m2-draw-arrBg"></em>
                                    使用徽商银行电子交易账户提现无需支付任何手续费。
                                </u>
                            </b>
                        </li>
                        <!-- <li>
                          <span class="m2-txtRig">服务费：</span>
                          <span class="m2-userCenterdraw-ser">100.12元</span>
                          <b class="m2-userCentermanagedraw-moreDetail">
                          <u>
                            <em class="m2-draw-arr"></em>
                            <em class="m2-draw-arrBg"></em>
                                文字说明文字说明文字说明文字说明文字说明
                          </u>
                        </b>
                        </li>
                        <li>
                          <span class="m2-txtRig">汇付手续费：</span>
                          <span class="m2-userCenterdraw-fees">1000元</span>
                          <b class="m2-userCentermanagedraw-moreDetail">
                            <u>
                              <em class="m2-draw-arr"></em>
                              <em class="m2-draw-arrBg"></em>
                                文字说明文字说明文字说明文字说明文字说明
                            </u>
                          </b>
                        </li>
                        <li>
                          <span class="m2-txtRig">免手续费次数：</span>
                          <span class="m2-userCenterdraw-tim">3次</span>
                          <a class="m2-userCenterdraw-timLink" href="#">如何获取&raquo;</a>
                          <b class="m2-userCentermanagedraw-moreDetail">
                            <u>
                              <em class="m2-draw-arr"></em>
                              <em class="m2-draw-arrBg"></em>
                                文字说明文字说明文字说明文字说明文字说明
                            </u>
                          </b>
                        </li> -->
                    </ul>
                </div>
                <!-- 		<div class="m2-userHs-banMsg">
                      <p>请补充转入账户信息</p>
                      <div class="m2-userCentermanagedraw-numInput">
                        <div class="m2-userCentermanage-drawBox-cardTit m2-txtRig">
                          <span>开户支行：</span>
                        </div>
                        <div class="m2-userCentermanage-drawNum">
                          <div style="position:relative;">
                            <input type="text" class="m2-userCentermanagedraw-num" placeholder="开户支行名称">
                            <b class="m2-userHs-iptWarn">错误提示信息</b>
                            <a href="http://www.lianhanghao.com/" target="_blank" class="m2-userHs-drawForget">忘记开户支行？</a>
                          </div>
                          <div style="padding:30px 0 80px 10px;">
                            <input type="submit" class="m2-userCentermanagedraw-submit" value="确&nbsp;定">
                          </div>
                          
                        </div>
                      </div>
                    </div> -->

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
	function cupwithdraw(){
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
		

		
	}
    
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
                           /*  $('#cardinput').next('b').html(obj['inst_name'] + '充值限额：单笔'
                                    + (obj['single_limit'] / 10000) + '万，单日' + (obj['day_limit'] / 10000) + '万');
                         */} else {
                            $('#cardinput').next('b').html('您的银行卡不支持充值，但可用于提现操作。');
                        }
                    }
                }
            });
        }
    }
</script>

</body>
</html>