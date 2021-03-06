<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<!-- 引用js文件 -->
<jsp:include page="/statics/back/static/jsp/init.jsp"></jsp:include>
<script type="text/javascript" src="/Finances/statics/back/static/js/laydate.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/front/js/jquery.form.js"></script>
<script src="${pageContext.request.contextPath}/statics/back/static/bootstrapValidator/js/bootstrapValidator.min.js"></script>
<link href="${pageContext.request.contextPath}/statics/back/static/bootstrapValidator/css/bootstrapValidator.min.css" rel="stylesheet" />

	
	<script type="text/javascript">
	$(document).ready(function() {
		$('#editRole')
		.bootstrapValidator({
            message: 'This value is not valid',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
            	uid: {
                    message: '用户编号验证失败',
                    validators: {
                    	 notEmpty: {
                             message: '用户编号不能为空'
                         },
     		            regexp: {
     		                regexp: /^[0-9]*$/,
     		                message: '用户编号只能输入数字'
     		            }
                    }
                },
             
                bfid: {
                	message: '发标编号验证失败',
                    validators: {
                        notEmpty: {
                            message: '发标编号不能为空,请选择'
                        },
                        regexp: {
     		                regexp: /^[0-9]*$/,
     		                message: '发标编号只能输入数字'
     		            }
                    }
                },
                bmoney: {
                	message: '金额验证失败',
                    validators: {
                        notEmpty: {
                            message: '金额不能为空,请选择'
                        },
                        regexp: {
     		                regexp: /^[0-9]*$/,
     		                message: '金额只能输入数字'
     		            }
                    }
                }
            }
        })
		
	});		
	</script>

<script  type="text/javascript">
    var rows = null;
    
    function addRole(){
    	//清空editModel原来填写的内容
    	
		$("#editRole #uid").val('');
		$("#editRole #bfid").val('');
		$("#editRole #bmoney").val('');
		$("#editRole #btime").val('');
		$("#editRole #bendtime").val('');
		//更改弹窗中保存按钮的事件（新增和修改用用同一个弹窗）
		$("#btn_submit").attr("onclick","insertRole()");
		//显示新增窗口
		$('#editRole').modal('show');
    }
  //新增角色
	function insertRole() {
		//表单验证
		//alert(123);
		/* if (!validateForm($("#editForm"))) {
			return;
		} */
		//用来关闭新增窗口***********
		$("#editRole").modal('hide');
		  
		 var form = new FormData(document.getElementById("editForm"));
	      $.ajax({
	          url:"${pageContext.request.contextPath}/back/admin/insertBid",
	          type:"post",
	          data:form,
	          processData:false,
	          contentType:false,
	          success:function(data){
	        	//后台返回int类型的数据
					if(data>0){
						//新增成功，下面是后台框架的提示
						parent.layer.alert('增加成功');
						
					}else{
						//新增失败
						parent.layer.alert('增加失败');
					}
					//新增完刷新表格数据
					$('#tb_role').bootstrapTable('refresh');
	          },
	          error:function(e){
	              alert("错误！！");
	          }
	      });        

	}
	//修改按钮事件
     function UpRole(){
    	//获取当前选中行的信息
 		var selectList = $('#tb_role').bootstrapTable('getSelections');
 		
 		//判断有没有选中
 		if(selectList.length<=0){
 			parent.layer.alert('请选择要修改的数据');
 			return;
 		}
 		//判断有没有选中多个
 		if(selectList.length>1){
 			parent.layer.alert('一次只能修改一条数据');
 			return;
 		}
 		var athRole = selectList[0];
 		
 		//把选中行的数据放到弹窗的控件中
 		$("#editRole #uid").val(athRole.uid);
 		$("#editRole #bfid").val(athRole.bfid);
 		//alert(athRole.cwechartimgurl);
 		//$("#editRole #cwechartimgurl").val(athRole.cwechartimgurl);
 		//$("#editRole #cweboimgurl").val(athRole.cweboimgurl);
 		$("#editRole #bmoney").val(athRole.bmoney);
 		$("#editRole #btime").val(athRole.btime);
 		$("#editRole #bendtime").val(athRole.bendtime);
 		
 		$("#editRole #bid").val(athRole.bid);
 		//alert(athRole.cid);
 		//更改弹窗中保存按钮的事件（新增和修改用用同一个弹窗）
 		$("#btn_submit").attr("onclick","updateRole()");
 		//显示新增窗口
 		$('#editRole').modal('show');
     }
	function updateRole(){
		//用来关闭新增窗口***********
		//用来关闭新增窗口***********
		$("#editRole").modal('hide');
		var form = new FormData(document.getElementById("editForm"));
	/**
		var dd = $("#cwechartimgurl").val();
		if(dd==""){
			parent.layer.alert('第一个文件不能为空');
			return;
		}
		
		var cc = $(" #cweboimgurl").val();
		if(cc==""){
			alert('第二个文件不能为空');
			parent.layer.alert('第二个文件不能为空');
			return;
		}
		*/
	      $.ajax({
	          url:"${pageContext.request.contextPath}/back/admin/updateBid",
	          type:"post",
	          data:form,
	          processData:false,
	          contentType:false,
	          success:function(data){
	        	//后台返回int类型的数据
					if(data>0){
						//新增成功，下面是后台框架的提示
						parent.layer.alert('修改成功');
						
					}else{
						//新增失败
						parent.layer.alert('修改失败');
					}
					//新增完刷新表格数据
					$('#tb_role').bootstrapTable('refresh');
	          },
	          error:function(e){
	              alert("错误！！");
	          }
	      });  
	}
	//删除按钮事件
	//*************************************************************************按钮事件
	function btn_delete(){
		delRole();
	}
	//删除
	function delRole(){
		//获取当前选中行的信息
		var stuList = $('#tb_role').bootstrapTable('getSelections');
		var ids = "";
		//判断有没有选中
		if(stuList.length<=0){
			parent.layer.alert('请选择要删除的数据');
			return;
		}
		//拼接ids  1,2,3,4  用于批量删除
		for(var i =0 ;i<stuList.length;i++){
			if(i!=stuList.length-1){
				ids = ids +stuList[i].bid+",";
			}else{
				ids = ids +stuList[i].bid;
			}
		}
		var url = "${pageContext.request.contextPath }/back/admin/deleteBid";
		$.post(
			url,
			{
				ids:ids,
			},
			function(data){
				//后台返回int类型的数据
				if(data>0){
					//新增成功，下面是后台框架的提示
					parent.layer.alert('删除成功');
				}else{
					//新增失败
					parent.layer.alert('删除失败');
				}
				//新增完刷新表格数据
				$('#tb_role').bootstrapTable('refresh');
			},
			"text"
		);	
	}
	
	//条件查询按钮
	function searchForm(){
		$('#tb_role').bootstrapTable('refresh');
	}
	$(function () {
	 	//激活弹框提示
		$("[data-toggle='tooltip']").tooltip();
		 //先销毁表格  
        $('#tb_role').bootstrapTable('destroy');  
		$('#tb_role').bootstrapTable({
			url : '${pageContext.request.contextPath}/back/admin/pageBid', //请求后台的URL（*）
			method : 'post', //请求方式（*）
			contentType: "application/x-www-form-urlencoded",
			toolbar : '#toolbar', //工具按钮用哪个容器
			striped : true, //是否显示行间隔色
			showExport: true, //是否显示导出
			cache : false, //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
			pagination : true, //是否显示分页（*）
			sortable : false, //是否启用排序
			sortOrder : "asc", //排序方式
			queryParams : queryParams,//传递参数（*）
			sidePagination : "server", //分页方式：client客户端分页，server服务端分页（*）
			pageNumber : 1, //初始化加载第一页，默认第一页
			pageSize : 10, //每页的记录行数（*）
			pageList : [ 10, 15, 20, 25 ], //可供选择的每页的行数（*）
			search : true, //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
			strictSearch : false,
			searchOnEnterKey :true, //按回车搜索
			showColumns : true, //是否显示所有的列
			showRefresh : true, //是否显示刷新按钮
			minimumCountColumns : 2, //最少允许的列数
			clickToSelect : true, //是否启用点击选中行
			//height : 300, //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
			width : 150,
			uniqueId : "id", //每一行的唯一标识，一般为主键列
			showToggle : true, //是否显示详细视图和列表视图的切换按钮
			cardView : false, //是否显示详细视图
			detailView : false, //是否显示父子表
			singleSelect: false,  //设置为单选
			columns : [ {
				checkbox : true,
			}, {
				field : 'bid',
				title : '投标编号'
			}, {
				field : 'uid',
				title : '用户编号'
			}, {
				field : 'bfid',
				title : '发标编号'
			},  {
				field : 'bmoney',
				title : '投标金额',
			},{
				field : 'btime',
				title : '投标时间',
			},{
				field : 'bendtime',
				title : '还标时间',
			},]
		});
		/*  */
		
});
	function queryParams(params) {
		var temp = { //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
			//***这里的参数传到后台，用来进行分页处理*************************
			rows: params.limit, //页面大小
			page: params.offset, //页码
			
			
			uid : $("#uid").val(),
			bfid : $("#bfid").val(),
			bmoney : $("#bmoney").val(), 
			btime : $("#btime").val(),
			bendtime : $("#bendtime").val(),
           
		};
		return temp;
	};
	</script>
</head>
<body class="gray-bg">
   <body style="background-color:#F2F9FD">
	<div class="panel-body" style="padding-bottom: 0px;">
		<div class="row">
			<div class="col-sm-12">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>网站角色信息</h5>
						<div class="ibox-tools">
							<a class="collapse-link"> <i class="fa fa-chevron-up"></i></a>
							<!-- <a class="close-link"> <i class="fa fa-times"></i></a> -->
						</div>
					</div>
					<div class="ibox-content">
							<!-- <div class="form-group">
		            			<label for="incomeTypes" class="control-label col-sm-1">企业电话</label>
								<div class="col-sm-2">
									<input type="text" name="cephone" class="form-control" id="cephone">
		            			</div>
		            			<label for="operateTime" class="control-label col-sm-1">客服电话</label>
		            			<div class="col-sm-2">
	            					<input type="text" name="csphone" class="form-control" id="csphone">
	            				</div>
		            			<label for="operateTime" class="control-label col-sm-1">微信URl</label>
		            			<div class="col-sm-2">
										<input type="text" name="cwechartimgurl" class="form-control" id="cwechartimgurl">
		            			</div>
		            			<label for="operateTime" class="control-label col-sm-1">微博URl</label>
		            			<div class="col-sm-2">
										<input type="text" name="cweboimgurl" class="form-control" id="cweboimgurl">
		            			</div>
		            			<label for="operateTime" class="control-label col-sm-1">QQ</label>
		            			<div class="col-sm-2">
										<input type="text" name="cqqnum" class="form-control" id="cqqnum">
		            			</div>
		            			<label for="operateTime" class="control-label col-sm-1">地址</label>
		            			<div class="col-sm-2">
										<input type="text" name="caddress" class="form-control" id="caddress">
		            			</div>
				                <button type="button" id="searchForm" class="btn btn-primary" onclick="searchForm()">搜索</button>
							</div> -->
						<div id="toolbar" class="btn-group">
							<button id="btn_add" type="button" class="btn btn-w-m btn-primary" data-toggle="modal" data-target="#addStudent" onclick="addRole()">
								<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
							</button>
							<button id="btn_edit" type="button" class="btn btn-w-m btn-success" onclick="UpRole()">
								<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改
							</button>
							<button id="btn_delete" type="button" class="btn btn-w-m btn-danger" onclick="btn_delete()">
								<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
							</button>
						</div>
						<!-- table代码就这些，用js构建表格 -->
						<table id="tb_role" >
							
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 新增弹窗 -->
	<div class="modal fade" id="editRole" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">用户管理</h4>
				</div>
				<div class="modal-body">
					<!-- 新增系别 -->
					<form id="editForm" class="form-horizontal m-t">
						<input type="hidden" name="bid" id="bid">
						<div class="form-group">
							<label for="urlName" class="control-label col-sm-3">用户编号</label> 
							<div class="col-sm-8">
								<input type="text" name="uid" class="form-control" id="uid">
							</div>
						</div>
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">发标编号</label>
							<div class="col-sm-8">
								<input type="text"  name="bfid" class="form-control" id="bfid">
	            			</div>
						</div>
						
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">投标金额</label>
							<div class="col-sm-8">
								<input type="text" name="bmoney" class="form-control" id="bmoney">
	            			</div>
						</div>
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">投标时间</label>
							<div class="col-sm-8">
								
								<input placeholder="请选择日期" name="btime" id="btime" class="laydate-icon" onClick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
								
	            			</div>
						</div>
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">还标时间</label>
							<div class="col-sm-8">
								<input placeholder="请选择日期" name="bendtime" id="bendtime" class="laydate-icon" onClick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
								
	            			</div>
						</div>
					 <div class="form-group">
						<div class="modal-footer">
							<button type="submit" class="btn btn-default" data-dismiss="modal">
								<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭
							</button>
							<button type="submit" class="btn btn-primary" >
								<span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>保存
							</button>
						</div>
					</div>
					
					</form>
				</div>
			
			</div>
		</div>
	</div>
</body>
</html>