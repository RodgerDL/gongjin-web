<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>产品管理管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			//$("#name").focus();
			$("#inputForm").validate({
				submitHandler: function(form){
					loading('正在提交，请稍等...');
					form.submit();
				},
				errorContainer: "#messageBox",
				errorPlacement: function(error, element) {
					$("#messageBox").text("输入有误，请先更正。");
					if (element.is(":checkbox")||element.is(":radio")||element.parent().is(".input-append")){
						error.appendTo(element.parent().parent());
					} else {
						error.insertAfter(element);
					}
				}
			});
		});
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li><a href="${ctx}/product/cmsProduct/">产品管理列表</a></li>
		<li class="active"><a href="${ctx}/product/cmsProduct/form?id=${cmsProduct.id}">产品管理<shiro:hasPermission name="product:cmsProduct:edit">${not empty cmsProduct.id?'修改':'添加'}</shiro:hasPermission><shiro:lacksPermission name="product:cmsProduct:edit">查看</shiro:lacksPermission></a></li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="cmsProduct" action="${ctx}/product/cmsProduct/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>		
		<div class="control-group">
			<label class="control-label">产品分类：</label>
			<div class="controls">
				<form:input path="cmsProductKind.id" htmlEscape="false" maxlength="64" class="input-xlarge required"/>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">表示顺序：</label>
			<div class="controls">
				<form:input path="pdOrder" htmlEscape="false" maxlength="11" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">产品名称：</label>
			<div class="controls">
				<form:input path="pdName" htmlEscape="false" maxlength="255" class="input-xlarge required"/>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">产品略称：</label>
			<div class="controls">
				<form:input path="pdNm" htmlEscape="false" maxlength="255" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">产品介绍：</label>
			<div class="controls">
				<form:input path="pdIntroduce" htmlEscape="false" maxlength="255" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">产品图片：</label>
			<div class="controls">
				<form:hidden id="pdImg" path="pdImg" htmlEscape="false" maxlength="255" class="input-xlarge"/>
				<sys:ckfinder input="pdImg" type="files" uploadPath="/product/cmsProduct" selectMultiple="true"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">产品文档：</label>
			<div class="controls">
				<form:hidden id="pdFile" path="pdFile" htmlEscape="false" maxlength="255" class="input-xlarge"/>
				<sys:ckfinder input="pdFile" type="files" uploadPath="/product/cmsProduct" selectMultiple="true"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">产品视频：</label>
			<div class="controls">
				<form:hidden id="pdMv" path="pdMv" htmlEscape="false" maxlength="255" class="input-xlarge"/>
				<sys:ckfinder input="pdMv" type="files" uploadPath="/product/cmsProduct" selectMultiple="true"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">属性标题1：</label>
			<div class="controls">
				<form:textarea path="pdTitle1" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">属性描述1：</label>
			<div class="controls">
				<form:textarea path="pdIntr1" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">属性标题2：</label>
			<div class="controls">
				<form:textarea path="pdTitle2" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">属性描述2：</label>
			<div class="controls">
				<form:textarea path="pdIntr2" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">属性标题3：</label>
			<div class="controls">
				<form:textarea path="pdTitle3" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">属性描述3：</label>
			<div class="controls">
				<form:textarea path="pdIntr3" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">属性标题4：</label>
			<div class="controls">
				<form:textarea path="pdTitle4" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">属性描述4：</label>
			<div class="controls">
				<form:textarea path="pdIntr4" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">属性标题5：</label>
			<div class="controls">
				<form:textarea path="pdTitle5" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">属性描述5：</label>
			<div class="controls">
				<form:textarea path="pdIntr5" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">属性标题6：</label>
			<div class="controls">
				<form:textarea path="pdTitle6" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">属性描述6：</label>
			<div class="controls">
				<form:textarea path="pdIntr6" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">备注信息：</label>
			<div class="controls">
				<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
			</div>
		</div>
		<div class="form-actions">
			<shiro:hasPermission name="product:cmsProduct:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;</shiro:hasPermission>
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>
	</form:form>
</body>
</html>