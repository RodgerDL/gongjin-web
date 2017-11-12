<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>公司动态管理</title>
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
		<li class="active"><a href="${ctx}/cms/companyNews/">公司动态列表</a></li>
		<shiro:hasPermission name="cms:article:edit"><li><a href="${ctx}/cms/companyNews/form">公司动态添加</a></li></shiro:hasPermission>
	</ul>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>标题</th>
				<th>内容</th>
				<th>序号</th>
				<th>时间</th>
				<th>图片</th>
				<th>更新时间</th>
				<th>备注信息</th>
				<shiro:hasPermission name="cms:article:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="companyNews">
			<tr>
				<td><a href="${ctx}/cms/companyNews/form?id=${companyNews.id}">
					${companyNews.title}
				</a></td>
				<td>
					${companyNews.content}
				</td>
				<td>
					${companyNews.newsNumber}
				</td>
				<td>
					${companyNews.newsDate}
				</td>
				<td>
					${companyNews.img}
				</td>
				<td>
					<fmt:formatDate value="${companyNews.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${companyNews.remarks}
				</td>
				<shiro:hasPermission name="cms:article:edit"><td>
    				<a href="${ctx}/cms/companyNews/form?id=${companyNews.id}">修改</a>
					<a href="${ctx}/cms/companyNews/delete?id=${companyNews.id}" onclick="return confirmx('确认要删除该公司动态吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>