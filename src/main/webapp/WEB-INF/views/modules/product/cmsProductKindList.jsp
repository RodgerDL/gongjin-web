<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>产品管理管理</title>
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
		<li class="active"><a href="${ctx}/product/cmsProductKind/">产品管理列表</a></li>
		<shiro:hasPermission name="product:cmsProductKind:edit"><li><a href="${ctx}/product/cmsProductKind/form">产品管理添加</a></li></shiro:hasPermission>
	</ul>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>产品分类名称</th>
				<th>备注信息</th>
				<th>更新时间</th>
				<shiro:hasPermission name="product:cmsProductKind:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="cmsProductKind">
			<tr>
				<td>
					${cmsProductKind.kdName}
				</td>
				<td>
					${cmsProductKind.remarks}
				</td>
				<td>
					<fmt:formatDate value="${cmsProductKind.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<shiro:hasPermission name="product:cmsProductKind:edit"><td>
    				<a href="${ctx}/product/cmsProductKind/form?id=${cmsProductKind.id}">修改</a>
					<a href="${ctx}/product/cmsProductKind/delete?id=${cmsProductKind.id}" onclick="return confirmx('确认要删除该产品管理吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>