<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>联系方式管理</title>
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
		<li class="active"><a href="${ctx}/cms/contact/">联系方式列表</a></li>
		<shiro:hasPermission name="cms:article:edit"><li><a href="${ctx}/cms/contact/form">联系方式添加</a></li></shiro:hasPermission>
	</ul>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>联系人</th>
				<th>地址</th>
				<th>电话</th>
				<th>传真</th>
				<th>邮件</th>
				<th>更新时间</th>
				<th>备注信息</th>
				<shiro:hasPermission name="cms:article:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="contact">
			<tr>
				<td><a href="${ctx}/cms/contact/form?id=${contact.id}">
					${contact.contacts}
				</a></td>
				<td>
					${contact.address}
				</td>
				<td>
					${contact.phone}
				</td>
				<td>
					${contact.fax}
				</td>
				<td>
					${contact.mail}
				</td>
				<td>
					<fmt:formatDate value="${contact.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${contact.remarks}
				</td>
				<shiro:hasPermission name="cms:article:edit"><td>
    				<a href="${ctx}/cms/contact/form?id=${contact.id}">修改</a>
					<a href="${ctx}/cms/contact/delete?id=${contact.id}" onclick="return confirmx('确认要删除该联系方式吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>