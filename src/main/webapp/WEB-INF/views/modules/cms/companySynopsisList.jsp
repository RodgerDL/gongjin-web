<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>公司简介管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			
		});
		function page(n,s){
			$("#pageNo").val(n);
			$("#pageSize").val(s);
			$("#searchForm").submit();
        	return false;
        }
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/cms/companySynopsis/">公司简介列表</a></li>
		<shiro:hasPermission name="cms:article:edit"><li><a href="${ctx}/cms/companySynopsis/form">公司简介添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="companySynopsis" action="${ctx}/cms/companySynopsis/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>标题</th>
				<th>内容</th>
				<th>图标</th>
				<th>更新时间</th>
				<th>备注信息</th>
				<shiro:hasPermission name="cms:article:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="companySynopsis">
			<tr>
				<td><a href="${ctx}/cms/companySynopsis/form?id=${companySynopsis.id}">
					${companySynopsis.title}
				</a></td>
				<td>
					${companySynopsis.content}
				</td>
				<td>
					${companySynopsis.icon}
				</td>
				<td>
					<fmt:formatDate value="${companySynopsis.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${companySynopsis.remarks}
				</td>
				<shiro:hasPermission name="cms:article:edit"><td>
    				<a href="${ctx}/cms/companySynopsis/form?id=${companySynopsis.id}">修改</a>
					<a href="${ctx}/cms/companySynopsis/delete?id=${companySynopsis.id}" onclick="return confirmx('确认要删除该公司简介吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>