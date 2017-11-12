<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>公司管理管理</title>
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
		<li class="active"><a href="${ctx}/cms/manage/">公司管理列表</a></li>
		<shiro:hasPermission name="cms:article:edit"><li><a href="${ctx}/cms/manage/form">公司管理添加</a></li></shiro:hasPermission>
	</ul>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>管理认证</th>
				<th>更新时间</th>
				<th>备注信息</th>
				<shiro:hasPermission name="cms:article:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="manage">
			<tr>
				<td><a href="${ctx}/cms/manage/form?id=${manage.id}">
					${manage.content}
				</a></td>
				<td>
					<fmt:formatDate value="${manage.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${manage.remarks}
				</td>
				<shiro:hasPermission name="cms:article:edit"><td>
    				<a href="${ctx}/cms/manage/form?id=${manage.id}">修改</a>
					<a href="${ctx}/cms/manage/delete?id=${manage.id}" onclick="return confirmx('确认要删除该公司管理吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>