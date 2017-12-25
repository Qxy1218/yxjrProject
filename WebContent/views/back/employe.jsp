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
<script  type="text/javascript">
    var rows = null;
    
    function addRole(){
    	//清空editModel原来填写的内容
		$("#editForm #eenum").val('');
		$("#editForm #esex").val('');
		$("#editForm #eidcard").val('');
		$("#editForm #ephone").val('');
		$("#editForm #eposition").val('');
		$("#editForm #eemail").val('');
		$("#editForm #ename").val('');
		$("#editForm #epassword").val('');
		$("#editForm #estatus").val('');
		$("#editForm #eretime").val('');
		$("#editForm #eremark").val('');
		
		
		//更改弹窗中保存按钮的事件（新增和修改用用同一个弹窗）
		$("#btn_submit").attr("onclick","insertEmploye()");
		//显示新增窗口
		$('#editForm').modal('show');
    }
  //新增员工
	function insertEmploye() {
	  
		//用来关闭新增窗口***********
		$("#editForm").modal('hide');
		var url = "${pageContext.request.contextPath }/back/admin/insertEmploye";
		$.post(
			url,
			{
				eenum:$("#editForm #eenum").val(),
				esex:$("#editForm #esex").val(),
				eidcard:$("#editForm #eidcard").val(),
				ephone:$("#editForm #ephone").val(),
				eposition:$("#editForm #eposition").val(),
				eemail:$("#editForm #eemail").val(),
				ename:$("#editForm #ename").val(),
				epassword:$("#editForm #epassword").val(),
				estatus:$("#editForm #estatus").val(),
				eretime:$("#editForm #eretime").val(),
				eremark:$("#editForm #eremark").val(),			
                
			},
			function(data){
				//后台返回int类型的数据
				if(data>0){
					//新增成功，下面是后台框架的提示
					parent.layer.alert('新增成功');
				}else{
					//新增失败
					parent.layer.alert('新增失败');
				}
				//新增完刷新表格数据
				$('#tb_role').bootstrapTable('refresh');
			},
			"text"
		);	
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
 		$("#editForm #eenum").val(athRole.eenum);
 		$("#editForm #esex").val(athRole.esex);
 		$("#editForm #eidcard").val(athRole.eidcard);
 		$("#editForm #ephone").val(athRole.ephone);
 		$("#editForm #eposition").val(athRole.eposition);
 		$("#editForm #eemail").val(athRole.eemail);
 		$("#editForm #ename").val(athRole.ename);
 		$("#editForm #epassword").val(athRole.epassword);
 		$("#editForm #estatus").val(athRole.estatus);
 		$("#editForm #eretime").val(athRole.eretime);
 		$("#editForm #eremark").val(athRole.eremark);
 		
 		
 		//更改弹窗中保存按钮的事件（新增和修改用用同一个弹窗）
 		$("#btn_submit").attr("onclick","updateEmploye("+athRole.reid+")");
 		//显示新增窗口
 		$('#editForm').modal('show');
     }
	function updateEmploye(reid){
		//用来关闭新增窗口***********
		$("#editForm").modal('hide');
		var url = "${pageContext.request.contextPath }/back/admin/updateEmploye";
		$.post(
			url,
			{
				reid:reid,
				eenum:$("#editForm #eenum").val(),
				esex:$("#editForm #esex").val(),
				eidcard:$("#editForm #eidcard").val(),
				ephone:$("#editForm #ephone").val(),
				eposition:$("#editForm #eposition").val(),
				eemail:$("#editForm #eemail").val(),
				ename:$("#editForm #ename").val(),
				epassword:$("#editForm #epassword").val(),
				estatus:$("#editForm #estatus").val(),
				ename:$("#editForm #ename").val(),
				epassword:$("#editForm #epassword").val(),
			},
			function(data){
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
			"text"
		);	
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
				ids = ids +stuList[i].reid+",";
			}else{
				ids = ids +stuList[i].reid;
			}
		}
		var url = "${pageContext.request.contextPath }/back/admin/deleteEmploye";
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
			url : '${pageContext.request.contextPath}/back/admin/selectEmployeList', //请求后台的URL（*）
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
			uniqueId : "id", //每一行的唯一标识，一般为主键列
			showToggle : true, //是否显示详细视图和列表视图的切换按钮
			cardView : false, //是否显示详细视图
			detailView : false, //是否显示父子表
			singleSelect: false,  //设置为单选
			columns : [ {
				checkbox : true,
			}, {
				field : 'reid',
				title : '角色id'
			}, {
				field : 'eenum',
				title : '员工编号'
			}, {
				field : 'esex',
				title : '员工性别'
			},  {
				field : 'eidcard',
				title : '员工身份证号',
				align : 'center',
			}, {
				field : 'ephone',
				title : '员工手机号'
			},  {
				field : 'eposition',
				title : '员工职位'
			},  {
				field : 'eemail',
				title : '员工邮箱'
			},  {
				field : 'ename',
				title : '员工姓名'
			},  {
				field : 'epassword',
				title : '员工密码'
			},  {
				field : 'estatus',
				title : '角色状态'
			},  {
				field : 'eretime',
				title : '创建时间'
			},  {
				field : 'eremark',
				title : '自我声明'
			}, ]
		});
		
		
});
	function queryParams(params) {
		var temp = { //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
			//***这里的参数传到后台，用来进行分页处理*************************
			rows: params.limit, //页面大小
			page: params.offset, //页码
			eenum : $("#eenum").val(),
			esex : $("#esex").val(),
			eidcard : $("#eidcard").val(), 
			ephone : $("#ephone").val(),
			eposition : $("#eposition").val(),
			eemail : $("#eemail").val(), 
			ename : $("#ename").val(),
			epassword : $("#epassword").val(),
			estatus : $("#estatus").val(), 
			eretime : $("#eretime").val(),
			eremark : $("#eremark").val(),
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
							<div class="form-group">
		            			<label for="incomeTypes" class="control-label col-sm-1">员工姓名</label>
								<div class="col-sm-2">
									<input type="text" name="ename" class="form-control" id="ename">
		            			</div>
		            			<label for="operateTime" class="control-label col-sm-1">员工性别</label>
		            			<div class="col-sm-2">
	            					<input type="text" name="esex" class="form-control" id="esex">
	            				</div>
				                <button type="button" id="searchForm" class="btn btn-primary" onclick="searchForm()">搜索</button>
							</div>
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
	<div class="modal fade" id="editForm" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">角色管理</h4>
				</div>
				<div class="modal-body">
					<!-- 新增系别 -->
					<form id="editForm" class="form-horizontal m-t">
						<div class="form-group">
							<label for="urlName" class="control-label col-sm-3">角色id</label> 
							<div class="col-sm-8">
								<input type="text" name="reid" class="form-control" id="reid">
							</div>
						</div>
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">员工编号</label>
							<div class="col-sm-8">
								<textarea name="eenum" rows="3" class="form-control" id="eenum"></textarea>
	            			</div>
						</div>
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">员工性别</label>
							<div class="col-sm-8">
								<textarea name="esex" rows="3" class="form-control" id="esex"></textarea>
	            			</div>
						</div>
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">员工身份证号</label>
							<div class="col-sm-8">
								<textarea name="eidcard" rows="3" class="form-control" id="eidcard"></textarea>
	            			</div>
						</div>
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">员工手机号</label>
							<div class="col-sm-8">
								<textarea name="ephone" rows="3" class="form-control" id="ephone"></textarea>
	            			</div>
						</div>
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">员工职位</label>
							<div class="col-sm-8">
								<textarea name="eposition" rows="3" class="form-control" id="eposition"></textarea>
	            			</div>
						</div>	
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">员工邮箱</label>
							<div class="col-sm-8">
								<textarea name="eemail" rows="3" class="form-control" id="eemail"></textarea>
	            			</div>
						</div>					
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">员工姓名</label>
							<div class="col-sm-8">
								<textarea name="ename" rows="3" class="form-control" id="ename"></textarea>
	            			</div>
						</div>
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">员工密码</label>
							<div class="col-sm-8">
								<textarea name="epassword" rows="3" class="form-control" id="epassword"></textarea>
	            			</div>
						</div>
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">角色状态</label>
							<div class="col-sm-8">
								<textarea name="estatus" rows="3" class="form-control" id="estatus"></textarea>
	            			</div>
						</div>
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">创建时间</label>
							<div class="col-sm-8">
								<textarea name="eretime" rows="3" class="form-control" id="eretime"></textarea>
	            			</div>
						</div>
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">自我声明</label>
							<div class="col-sm-8">
								<textarea name="eremark" rows="3" class="form-control" id="eremark"></textarea>
	            			</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭
					</button>
					<button type="button" id="btn_submit" class="btn btn-primary" onclick="insertRole()">
						<span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>保存
					</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>