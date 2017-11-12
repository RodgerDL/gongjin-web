<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>工厂信息管理</title>
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
		<li class="active"><a href="${ctx}/cms/factory/">工厂信息列表</a></li>
		<shiro:hasPermission name="cms:article:edit"><li><a href="${ctx}/cms/factory/form">工厂信息添加</a></li></shiro:hasPermission>
	</ul>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>工厂名</th>
				<th>工厂地址</th>
				<th>图片</th>
				<th>介绍</th>
				<th>更新时间</th>
				<th>备注信息</th>
				<shiro:hasPermission name="cms:article:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="factory">
			<tr>
				<td><a href="${ctx}/cms/factory/form?id=${factory.id}">
					${factory.name}
				</a></td>
				<td>
					${factory.address}
				</td>
				<td>
					${factory.img}
				</td>
				<td>
					${factory.introduce}
				</td>
				<td>
					<fmt:formatDate value="${factory.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${factory.remarks}
				</td>
				<shiro:hasPermission name="cms:article:edit"><td>
    				<a href="${ctx}/cms/factory/form?id=${factory.id}">修改</a>
					<a href="${ctx}/cms/factory/delete?id=${factory.id}" onclick="return confirmx('确认要删除该工厂信息吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>