<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>公司团队管理</title>
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
		<li class="active"><a href="${ctx}/cms/member/">公司团队列表</a></li>
		<shiro:hasPermission name="cms:article:edit"><li><a href="${ctx}/cms/member/form">公司团队添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="member" action="${ctx}/cms/member/" method="post" class="breadcrumb form-search">
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
				<th>姓名</th>
				<th>职位</th>
				<th>简介</th>
				<th>详细履历</th>
				<th>照片</th>
				<th>电话</th>
				<th>邮箱</th>
				<th>更新时间</th>
				<th>备注信息</th>
				<shiro:hasPermission name="cms:article:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="member">
			<tr>
				<td><a href="${ctx}/cms/member/form?id=${member.id}">
					${member.name}
				</a></td>
				<td>
					${member.position}
				</td>
				<td>
					${member.introduction}
				</td>
				<td>
					${member.details}
				</td>
				<td>
					${member.img}
				</td>
				<td>
					${member.phone}
				</td>
				<td>
					${member.mail}
				</td>
				<td>
					<fmt:formatDate value="${member.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${member.remarks}
				</td>
				<shiro:hasPermission name="cms:article:edit"><td>
    				<a href="${ctx}/cms/member/form?id=${member.id}">修改</a>
					<a href="${ctx}/cms/member/delete?id=${member.id}" onclick="return confirmx('确认要删除该公司团队吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>