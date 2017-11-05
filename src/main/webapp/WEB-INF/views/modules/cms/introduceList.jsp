<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>公司介绍管理</title>
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
		<li class="active"><a href="${ctx}/cms/introduce/">公司介绍列表</a></li>
		<shiro:hasPermission name="cms:article:edit"><li><a href="${ctx}/cms/introduce/form">公司介绍添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="introduce" action="${ctx}/cms/introduce/" method="post" class="breadcrumb form-search">
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
				<th>公司介绍</th>
				<th>公司文化介绍</th>
				<th>文化标语1</th>
				<th>文化标语2</th>
				<th>文化标语3</th>
				<th>更新时间</th>
				<th>备注信息</th>
				<shiro:hasPermission name="cms:article:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="introduce">
			<tr>
				<td><a href="${ctx}/cms/introduce/form?id=${introduce.id}">
					${introduce.detailed}
				</a></td>
				<td>
					${introduce.civilization}
				</td>
				<td>
					${introduce.civilization1}
				</td>
				<td>
					${introduce.civilization2}
				</td>
				<td>
					${introduce.civilization3}
				</td>
				<td>
					<fmt:formatDate value="${introduce.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${introduce.remarks}
				</td>
				<shiro:hasPermission name="cms:article:edit"><td>
    				<a href="${ctx}/cms/introduce/form?id=${introduce.id}">修改</a>
					<a href="${ctx}/cms/introduce/delete?id=${introduce.id}" onclick="return confirmx('确认要删除该公司介绍吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>