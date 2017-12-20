<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%> 
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
		$("#editRole #rolename").val('');
		$("#editRole #remark").val('');
		
		//更改弹窗中保存按钮的事件（新增和修改用用同一个弹窗）
		$("#btn_submit").attr("onclick","insertRole()");
		//显示新增窗口
		$('#editRole').modal('show');
    }
  //新增角色
	function insertRole() {
		//表单验证
		//alert(123);
		if (!validateForm($("#editForm"))) {
			return;
		}
		//用来关闭新增窗口***********
		$("#editRole").modal('hide');
		var url = "${pageContext.request.contextPath }/back/admin/insertRole";
		$.post(
			url,
			{
                rolename:$("#editRole #rename").val(),
                reremark:$("#editRole #reremark").val(),
                restatus:$("#editRole #restatus").val(),
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
	$("#btn_edit").click(function(){
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
		$("#editRole #rename").val(athRole.rename);
		$("#editRole #reremark").val(athRole.reremark);
		$("#restatus #restatus").val(athRole.remark);
		
		//更改弹窗中保存按钮的事件（新增和修改用用同一个弹窗）
		$("#btn_submit").attr("onclick","updateRole("+athRole.reid+")");
		//显示新增窗口
		$('#editRole').modal('show');
    });
	function updateRole(reid){
		//表单验证
		if (!validateForm($("#editForm"))) {
			return;
		}
		//用来关闭新增窗口***********
		$("#editRole").modal('hide');
		var url = "${pageContext.request.contextPath }/back/admin/"+reid;
		$.post(
			url,
			{
				_method:'PUT',//改成PUT提交
				reid:reid,
				rolename:$("#editRole #rename").val(),
                reremark:$("#editRole #reremark").val(),
                restatus:$("#editRole #restatus").val(),
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
	$('#btn_delete').click(function () {
		delRole();
    });
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
		var url = "${pageContext.request.contextPath }/back/admin/"+ids;
		$.post(
			url,
			{
				_method:'DELETE',//改成PUT提交
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
$(function () {
	 	//激活弹框提示
		$("[data-toggle='tooltip']").tooltip();
		$('#tb_role').bootstrapTable({
			url : '${pageContext.request.contextPath}/back/admin/selectIndexpicList', //请求后台的URL（*）
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
			pageList : [ 10, 25, 50, 100 ], //可供选择的每页的行数（*）
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
				field : 'ipid',
				title : '轮播图编号'
			}, {
				field : 'ipname',
				title : '轮播图名字'
			}, {
				field : 'ipimage',
				title : '轮播图代表图'
			}, {
				field : 'ipurl',
				title : '轮播图url',
			
			},]
		});
});
	function queryParams(params) {
		var temp = { //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
			//***这里的参数传到后台，用来进行分页处理*************************
			rows: params.limit, //页面大小
			page: params.offset, //页码
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
						<div id="toolbar" class="btn-group">
							<button id="btn_add" type="button" class="btn btn-w-m btn-primary" data-toggle="modal" data-target="#addStudent" onclick="addRole()">
								<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
							</button>
							<button id="btn_edit" type="button" class="btn btn-w-m btn-success">
								<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改
							</button>
							<button id="btn_delete" type="button" class="btn btn-w-m btn-danger">
								<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
							</button>
						</div>
						<!-- table代码就这些，用js构建表格 -->
						<table id="tb_role" >
							
						</table>
						<div style="position:relative;bottom:60px;left:200px;width:300px">
							<ul class="pagination">
								  <li><a href="#">&laquo;</a></li>
								  <li><a href="#">1</a></li>
								  <li><a href="#">1</a></li>
								  <li><a href="#">1</a></li>
								  <li><a href="#">&raquo;</a></li>
							</ul>
						</div>
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
					<h4 class="modal-title" id="myModalLabel">角色管理</h4>
				</div>
				<div class="modal-body">
					<!-- 新增系别 -->
					<form id="editForm" class="form-horizontal m-t">
						<div class="form-group">
							<label for="urlName" class="control-label col-sm-3">轮播图名称</label> 
							<div class="col-sm-8">
								<input type="text" name="rename" class="form-control" id="rename">
							</div>
						</div>
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">说明</label>
							<div class="col-sm-8">
								<textarea name="reremark" rows="3" class="form-control" id="reremark"></textarea>
	            			</div>
						</div>
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">状态</label>
							<div class="col-sm-8">
								<select name="restatus"  class="form-control" id="restatus">
									<option value="0">启用</option>
									<option value="1">禁用</option>
								</select>
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