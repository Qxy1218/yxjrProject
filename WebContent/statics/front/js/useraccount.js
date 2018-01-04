//图形验证码
var verifyCode = new GVerify("reverifyCode");


/**
 * 账户设置调用方法(基本设置信息总览)
 * */
$(function(){
    $user_type=1;
    //点击修改按钮展开选项
    $('.m2-userSettings-setpHide').hide();
    $('.m2-userSettingsshow-link a').click(function(){
        $(this).parents('.m2-userSettings-stepShow').siblings('.m2-userSettings-setpHide').toggle(500);
    });
    setVerifyStatus();  //安全级别
    bindphone();  //手机号码
    setPassword();  //修改登录密码
    setAddress();  //添加联系地址
    verifyemail();   //电子邮箱
    //hsChangePassWord();  //微商交易密码
    setDealPassword();  //微商交易密码

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
    var id_status = 0;  //徽商存管账户
    var address_status = 0;  //联系地址
    var email_status = 0;  //电子邮箱
    var phone_status = 0;  //手机号码
    var dealpwd = 0;  //交易密码
    var setword_status=0;  
    var name_number=0;  //实名认证
    
    if($("#vp-uphone").val()!=null && $("#vp-uphone").val()!=""){
    	phone_status = 1;
    }
    if($("#getemailstatus").val()==1){
    	email_status = 1;
    }
    if($("#icstatus").val()==1){
    	name_number = 1;
    }
    if($("#vp-uiopenstatic").val()==1){
    	id_status = 1;
    }
    if($("#dealpwd").val()!=""){
    	var dealpwd = 1;
    }
    var i = Number(id_status)+Number(dealpwd)+Number(email_status)+Number(name_number);

    if(i == 1){
        $('#safe_level').text('低');
    }else if (i == 2){
        $('#safe_level').text('中');
    }else if(i == 3){
    	$('#safe_level').text('较高');
    }else if (i == 4){
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
    }
    if(dealpwd == 1){
        $('#id_dealpwd').removeClass('m2-userSettingsaut-fal');
        $('#id_dealpwd').addClass('m2-userSettingsaut-tur');
        $('#id_dealpwd').html('<b></b>已设置');
        $('#id_dealpwd').next('span').find('a').text('修改');
    }
    if(3 > 0){
        $('#verifyphoneli').show();
    }
    if(phone_status == 1){
        $('#phone_status').removeClass('m2-userSettingsaut-fal');
        $('#phone_status').addClass('m2-userSettingsaut-tur');
        $('#phone_status').html('<b></b>已绑定');
        $('#phone_status').next('span').find('a').text('修改');
        $('#phone_status_2').remove();
        if(3 > 0){
            $('#verifyphoneli').show();
        }
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
    if(name_number == 1){
        $('#name_number').removeClass('m2-userSettingsaut-fal');
        $('#name_number').addClass('m2-userSettingsaut-tur');
        $('#name_number').html('<b></b>已认证');
        $('#name_number').next('span').find('a').text('修改');
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

//手机号设置
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
    //判断手机号码是否存在
    $('#vp-phonenum').blur(function(){
    	var p={"phone":$('#vp-phonenum').val()};
        postData("/Finances/front/getregpdphishave",p,function(data){
            if(data.message!='' && typeof(data.message)!="undefined"){
            	$('#vp-warn').html("<em></em>"+data.message);
            	$('#vp-warn').show();
                flag = false;
            }
            if(data.mas == "ok"){
            	$('#vp-warn').hide();
            	flag = true;
            }
        });
    });
    //短信验证码
    $('#vp-textbtn').click(function(){
        t2 = Date.now();
        var uphone =  $('#vp-phonenum').val();
        if(uphone!='' || !($('#vp-warn').is(":visible"))){
        	if(t2-t1 > 60*1000 && flag){
                t1 = Date.now();
                $.ajax({
                    url:"/Finances/front/getregsendphone",
                    type:"POST",
                    data:{
                    	phone:uphone 
                    },
                    success:function(data){
                        var obj = eval('('+data+')');
                        if(obj.status == 1){
                            $('#vp-msg').show();
                            $("#userCode").val(obj.ranks);
                            flag = true;
                        }else{
                        	flag = false;
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
        }else{
        	$('#vp-warn').html("<em></em>请输入需要修改的手机号");
        	$('#vp-warn').show();
            flag = false;
        }
    });
	//判断短信验证码是否正确
	$('#vp-text').keyup(function(){
        if($("#userCode").val() == $('#vp-text').val()){
            $('#code-warn').hide();
            flag = true;
        }else{
            $('#code-warn').show();
            flag = false;
        }
    });
    //提交修改的电话号码
    $('#vp-submit').click(function(){
		//判断图形验证码是否正确
    	var res = verifyCode.validate($("#vp-vpic").val());
    	if($("#vp-vpic").val()==''){
    		$("#vp-vpic").shake(2, 10, 400);
       		$("#vp-vpic").val("");
    		$("#vp-vpic").attr('placeholder',"图形验证码不能为空");
    		flag = false;
    	}else{
    	    if(res){
	            $('#vpic-warn').hide();
	            flag = true;
	        }else{
	            $('#vpic-warn').show();
	            flag = false;
	        }
    	}
    	if($('#vp-text').val()==''){
    		$("#vp-text").shake(2, 10, 400);
       		$("#vp-text").val("");
    		$("#vp-text").attr('placeholder',"短信验证码不能为空");
    		flag = false;
    	}
		if(flag){
			t1 = Date.now();
			$.ajax({
				url:"/Finances/user/updateUser",
				type:"POST",
				data:{
					uphone:$('#vp-phonenum').val(),
					uid:$("#vp-uid").val()
				},
				success:function(data){
					var obj = new Array();
					if(data>0){
               		 obj['msg']="恭喜你,手机号修改成功!";
                        obj['status']=1;
                        dialog(obj);
					}else{
						obj['msg']="很遗憾,手机号修改失败!";
	                    obj['status']=0;
	                    dialog(obj);
	                    return;
					}
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

//修改登录密码
function setPassword(){
    var flag1 = false;
    var flag2 = false;
    var flag3 = false;

    $('#oldpass').keyup(function(){
        if($('#oldpass').val().length > 5 && $('#oldpass').val().length < 16){
            $.ajax({
                url:"/Finances/user/getPwd",
                type:"POST",
                data:{
                	upassword:$('#oldpass').val(),
                	uid:$("#vp-uid").val()
                },
                success:function(data){
                    if(data>0){
                    	$('#oldpass').next('span').html('');
                    	flag1 = true;
                    }else{
                    	$('#oldpass').next('span').html('<em></em>原密码输入错误。');
                        flag1 = false;
                    }
                }
            });
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
    //提交修改的新密码
    $('#setpass-btn').click(function(){
    	if($('#oldpass').val()==''){
    		$("#oldpass").shake(2, 10, 400);
       		$("#oldpass").val("");
    		$("#oldpass").attr('placeholder',"原密码不能为空");
    		flag1 = false;
    	}
    	if($('#newpass1').val()==''){
    		$("#newpass1").shake(2, 10, 400);
       		$("#newpass1").val("");
    		$("#newpass1").attr('placeholder',"新密码不能为空");
    		flag2 = false;
    	}
    	if($('#newpass2').val()==''){
    		$("#newpass2").shake(2, 10, 400);
       		$("#newpass2").val("");
    		$("#newpass2").attr('placeholder',"确认密码不能为空");
    		flag3 = false;
    	}
        if(flag1 && flag2 && flag3){
            $.ajax({
                url:"/Finances/user/updateUser",
                type:"POST",
                data:{
                	upassword:$('#newpass2').val(),
                	uid:$("#vp-uid").val()
                },
                success:function(data){
                	var obj = new Array();
                	if(data>0){
                		 obj['msg']="恭喜你,登录密码修改成功,请重新登录账号!";
                         obj['status']=1;
                         dialog(obj);
                         window.location="http://127.0.0.1:8080/Finances/user/logout";
					}else{
						obj['msg']="很遗憾,登录密码修改失败";
	                    obj['status']=0;
	                    dialog(obj);
	                    return;
					}
                }
            });
        }
    });
}

//修改(添加)交易密码
function setDealPassword(){
    var flag1 = true;
    var flag2 = true;
    var flag3 = true;

    $('#olddealpwd').keyup(function(){
        if($('#olddealpwd').val().length > 5 && $('#olddealpwd').val().length < 16){
            $.ajax({
                url:"/Finances/user/getDealPwd",
                type:"POST",
                data:{
                	uidealpwd:$('#olddealpwd').val(),
                	uiid:$("#vp-uiid").val()
                },
                success:function(data){
                    if(data>0){
                    	$('#olddealpwd').next('span').html('');
                    	flag1 = true;
                    }else{
                    	$('#olddealpwd').next('span').html('<em></em>原密码输入错误。');
                        flag1 = false;
                    }
                }
            });
        }else{
            $('#olddealpwd').next('span').html('<em></em>密码需为6-15常用英文字母或数字。');
            flag1 = false;
        }
    });
    $('#newdealpwd1').keyup(function(){
        if($('#newdealpwd1').val().length > 5 && $('#newdealpwd1').val().length < 16){
            $('#newdealpwd1').next('span').html('');
            flag2 = true;
        }else{
            $('#newdealpwd1').next('span').html('<em></em>密码需为6-15常用英文字母或数字。');
            flag2 = false;
        }
    });
    $('#newdealpwd2').keyup(function(){
        if($('#newdealpwd2').val() == $('#newdealpwd1').val()){
            $('#newdealpwd2').next('span').html('');
            flag3 = true;
        }else{
            $('#newdealpwd2').next('span').html('<em></em>两次输入密码须一致！');
            flag3 = false;
        }
    });
    //提交修改的新密码
    $('#setdealpwd-btn').click(function(){
    	if($('#olddealpwd').val()==''){
    		$("#olddealpwd").shake(2, 10, 400);
       		$("#olddealpwd").val("");
    		$("#olddealpwd").attr('placeholder',"原密码不能为空");
    		flag1 = false;
    	}
    	if($('#newdealpwd1').val()==''){
    		$("#newdealpwd1").shake(2, 10, 400);
       		$("#newdealpwd1").val("");
    		$("#newdealpwd1").attr('placeholder',"新密码不能为空");
    		flag2 = false;
    	}
    	if($('#newdealpwd2').val()==''){
    		$("#newdealpwd2").shake(2, 10, 400);
       		$("#newdealpwd2").val("");
    		$("#newdealpwd2").attr('placeholder',"确认密码不能为空");
    		flag3 = false;
    	}
        if(flag1 && flag2 && flag3){
            $.ajax({
                url:"/Finances/user/updateUserInfo",
                type:"POST",
                data:{
                	uidealpwd:$('#newdealpwd2').val(),
                	uiid:$("#vp-uiid").val()
                },
                success:function(data){
                	var obj = new Array();
                	if(data>0){
                		 obj['msg']="恭喜你,交易密码修改成功!";
                         obj['status']=1;
                         dialog(obj);
					}else{
						obj['msg']="很遗憾,交易密码修改失败!";
	                    obj['status']=0;
	                    dialog(obj);
	                    return;
					}
                }
            });
        }
    });
}


//修改及认证邮箱
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
        	var uiemail = $('#verifyemail').val();
        	var uiid = $("#vp-uiid").val();
        	
        	window.location="http://127.0.0.1:8080/Finances/user/sendmailcheckuser?uiemail="+uiemail+"&uiid="+uiid;
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
	var uiid = $("#vp-uiid").val();
	var icid = $("#vp-icid").val();
    var username = $('#usernametext').val().trim();
    var icnumber = $("#icnumbertext").val().trim();
    
    if(!userNameCheck(username) || !icNumberCheck(icnumber)){
    	var obj=new Array();
        obj['msg']="您需要填写全部信息才能提交";
        obj['status']=0;
        dialog(obj);
    	return;
    }else{
        $.ajax({
            url:"/Finances/idcard/addinfo",
            type:"POST",
            dataType: "json",
            data:{
                uiid:uiid,
                icid:icid,
                icname:username,
                icnumber:icnumber
            },
            success:function(data){
            	var obj=new Array();
                if(data == 1){
                    obj['msg']="恭喜你,实名认证成功";
                    obj['status']=1;
                    dialog(obj);
                }else if(data == 2){
                    obj['msg']="恭喜你,信息修改成功";
                    obj['status']=1;
                    dialog(obj);
                }else{
                    obj['msg']="提交信息失败";
                    obj['status']=0;
                    dialog(obj);
                    return;
                }
            }
        });
    }
}

//用户名变化
$('#usernametext').keyup(function(){
    userNameCheck($(this).val());
});
//用户名变化
$('#icnumbertext').keyup(function(){
	icNumberCheck($(this).val());
});
//用户名检查
function userNameCheck(username){
    var patten1 = /^([\u4E00-\u9FA5]|[0-9]|[a-z]|[A-Z]|_)+$/;
    var patten2 = /^([a-z]|[A-Z])|[\u4E00-\u9FA5]/;
    var patten3 = /^.{2,15}$/;
    username.trim();
    
    if(!patten1.test(username)){
        userNameWarn('用户名只允许中文、字母、数字、下划线组成');
        return false;
    }else if(!patten2.test(username)){
        userNameWarn('用户名首位只能为字母、中文');
        return false;
    }else if(!patten3.test(username)){
        userNameWarn('用户名长度应为2-15个字符');
        return false;
    }else{
        userNameWarn('');
        return true;
    }
}
//身份证检查
function icNumberCheck(icnumber){
	var regu =/(^[0-9]{15}$)|([0-9]{17}([0-9]|X|x)$)/;
    var re = new RegExp(regu);
    icnumber.trim();
    if (!re.test(icnumber)) {
    	userIcidWarn('身份证号格式输入不正确');
        return false;
    }else{
    	userIcidWarn('');
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
//修改用户名错误
function userIcidWarn(msg){
    if(msg){
        $('#usericidwarn').html('<em></em>'+msg);
    }else{
        $('#usericidwarn').html('');
    }
}

//修改交易密码
function hsChangePassWord(){
    var t1=0
    $('#hsvp-textbtn').click(function(){
    	t2 = Date.now();
	    if(t2-t1 > 60*1000 ){
	        t1 = Date.now();
	        $.ajax({
	            url:"/Finances/front/getregsendphone",
	            type:"POST",
	            data:{
	            	phone:$('#vp-phonenum').val(),
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

jQuery.fn.shake = function (intShakes /*Amount of shakes*/, intDistance /*Shake distance*/, intDuration /*Time duration*/) {
    this.each(function () {
        var jqNode = $(this);
        jqNode.css({ position: 'relative' });
        for (var x = 1; x <= intShakes; x++) {
            jqNode.animate({ left: (intDistance * -1) }, (((intDuration / intShakes) / 4)))
            .animate({ left: intDistance }, ((intDuration / intShakes) / 2))
            .animate({ left: 0 }, (((intDuration / intShakes) / 4)));
        }
    });
    return this;
}
