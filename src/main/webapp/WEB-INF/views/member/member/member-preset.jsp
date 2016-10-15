<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/common/taglibs.jsp" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
	<title>会员管理</title>
	<jsp:include page="/common/head-css.jsp" flush="true"></jsp:include>
</head>

<body>
<form:form action="${ctx}/member/member/preset" id="frmSearch" cssClass="form-horizontal" modelAttribute="paramsEntity">
	<div class="form-group" style="padding-top: 10px;">
		
			<label class="col-sm-1 control-label">用户ID</label>
			<div class="col-sm-2">
				<form:input  path="params[presetWinnerUserId]" cssClass="form-control"/>
			</div>

		 	<div class="col-sm-6">
			    <a id="btnSearch" class="btn btn-success" href="javascript:;"><i class="fa fa-search"></i> 查询</a>
			</div>
    </div>
			
	<table id="contentTable" class="table table-hover table-striped table-bordered table-condensed">
		<thead>
			<tr class="success">
				<th style="text-align: center; width: 5%">商品期号</th>
				<th style="text-align: center; width: 8%">商品名称</th>
				<th style="text-align: center; width: 5%">中奖用户ID</th>
				<th style="text-align: center; width: 5%">中奖用户名称</th>
				<th style="text-align: center; width: 5%">开奖时间</th>
			</tr>
		</thead>
		<tbody id="tbdContent">
			<jsp:include page="member-preset-content.jsp" flush="true"></jsp:include>
		</tbody>		
	</table>
 </form:form>
   <jsp:include page="/common/foot-list-js.jsp" flush="true"></jsp:include>
<jsp:include page="/common/operate-msg.jsp" flush="true"></jsp:include>
   <script type="text/javascript">
   $(function(){
		$table = $('#contentTable').initTable({
			namespace: '${ctx}/member/member',
			formId:'frmSearch',
			listMethod:'/preset-content',
			addMethod:'/create',
			editMethod:'/edit/{id}',
			viewMethod: '/view/{id}',
			deleteMethod:'/delete',
			btnAddId: 'btnAdd',
			btnDeleteId: 'btnDelete',
			btnSearchId: 'btnSearch',
			formId:'frmSearch',
			isBindClick: false,//是否绑定行单击事件
			isClickToEdit: true,//单击是否修改，否则是查看
			isCheckAll: true,
			isBindEnter: false,
			checkboxId: 'ids',
			addMethodParams:'',
			deleteMethodParams:'',
			container: $('#tbdContent')//页面容器
		});
   });
   </script>
</body>
</html>
