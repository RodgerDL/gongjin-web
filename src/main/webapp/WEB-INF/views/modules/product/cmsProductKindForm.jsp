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
		function addRow(list, idx, tpl, row){
			$(list).append(Mustache.render(tpl, {
				idx: idx, delBtn: true, row: row
			}));
			$(list+idx).find("select").each(function(){
				$(this).val($(this).attr("data-value"));
			});
			$(list+idx).find("input[type='checkbox'], input[type='radio']").each(function(){
				var ss = $(this).attr("data-value").split(',');
				for (var i=0; i<ss.length; i++){
					if($(this).val() == ss[i]){
						$(this).attr("checked","checked");
					}
				}
			});
		}
		function delRow(obj, prefix){
			var id = $(prefix+"_id");
			var delFlag = $(prefix+"_delFlag");
			if (id.val() == ""){
				$(obj).parent().parent().remove();
			}else if(delFlag.val() == "0"){
				delFlag.val("1");
				$(obj).html("&divide;").attr("title", "撤销删除");
				$(obj).parent().parent().addClass("error");
			}else if(delFlag.val() == "1"){
				delFlag.val("0");
				$(obj).html("&times;").attr("title", "删除");
				$(obj).parent().parent().removeClass("error");
			}
		}
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li><a href="${ctx}/product/cmsProductKind/">产品管理列表</a></li>
		<li class="active"><a href="${ctx}/product/cmsProductKind/form?id=${cmsProductKind.id}">产品管理<shiro:hasPermission name="product:cmsProductKind:edit">${not empty cmsProductKind.id?'修改':'添加'}</shiro:hasPermission><shiro:lacksPermission name="product:cmsProductKind:edit">查看</shiro:lacksPermission></a></li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="cmsProductKind" action="${ctx}/product/cmsProductKind/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>		
		<div class="control-group">
			<label class="control-label">分类名称：</label>
			<div class="controls">
				<form:input path="kdName" htmlEscape="false" maxlength="225" class="input-xlarge required"/>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">分类略称：</label>
			<div class="controls">
				<form:input path="kdNm" htmlEscape="false" maxlength="225" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">分类排序：</label>
			<div class="controls">
				<form:input path="kdOrder" htmlEscape="false" maxlength="11" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">备注信息：</label>
			<div class="controls">
				<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
			</div>
		</div>
			<div class="control-group">
				<label class="control-label">产品信息：</label>
				<div class="controls">
					<table id="contentTable" class="table table-striped table-bordered table-condensed">
						<thead>
							<tr>
								<th class="hide"></th>
								<th>表示顺序</th>
								<th>产品名称</th>
								<th>产品略称</th>
								<th>产品介绍</th>
								<th>产品图片</th>
								<th>产品文档</th>
								<th>产品视频</th>
								<th>属性标题1</th>
								<th>属性描述1</th>
								<th>属性标题2</th>
								<th>属性描述2</th>
								<th>属性标题3</th>
								<th>属性描述3</th>
								<th>属性标题4</th>
								<th>属性描述4</th>
								<th>属性标题5</th>
								<th>属性描述5</th>
								<th>属性标题6</th>
								<th>属性描述6</th>
								<th>备注信息</th>
								<shiro:hasPermission name="product:cmsProductKind:edit"><th width="10">&nbsp;</th></shiro:hasPermission>
							</tr>
						</thead>
						<tbody id="cmsProductList">
						</tbody>
						<shiro:hasPermission name="product:cmsProductKind:edit"><tfoot>
							<tr><td colspan="22"><a href="javascript:" onclick="addRow('#cmsProductList', cmsProductRowIdx, cmsProductTpl);cmsProductRowIdx = cmsProductRowIdx + 1;" class="btn">新增</a></td></tr>
						</tfoot></shiro:hasPermission>
					</table>
					<script type="text/template" id="cmsProductTpl">//<!--
						<tr id="cmsProductList{{idx}}">
							<td class="hide">
								<input id="cmsProductList{{idx}}_id" name="cmsProductList[{{idx}}].id" type="hidden" value="{{row.id}}"/>
								<input id="cmsProductList{{idx}}_delFlag" name="cmsProductList[{{idx}}].delFlag" type="hidden" value="0"/>
							</td>
							<td>
								<input id="cmsProductList{{idx}}_pdOrder" name="cmsProductList[{{idx}}].pdOrder" type="text" value="{{row.pdOrder}}" maxlength="11" class="input-small "/>
							</td>
							<td>
								<input id="cmsProductList{{idx}}_pdName" name="cmsProductList[{{idx}}].pdName" type="text" value="{{row.pdName}}" maxlength="255" class="input-small required"/>
							</td>
							<td>
								<input id="cmsProductList{{idx}}_pdNm" name="cmsProductList[{{idx}}].pdNm" type="text" value="{{row.pdNm}}" maxlength="255" class="input-small "/>
							</td>
							<td>
								<textarea id="cmsProductList{{idx}}_pdIntroduce" name="cmsProductList[{{idx}}].pdIntroduce" rows="4" maxlength="255" class="input-small ">{{row.pdIntroduce}}</textarea>
							</td>
							<td>
								<input id="cmsProductList{{idx}}_pdImg" name="cmsProductList[{{idx}}].pdImg" type="hidden" value="{{row.pdImg}}" maxlength="255"/>
								<sys:ckfinder input="cmsProductList{{idx}}_pdImg" type="files" uploadPath="/product/cmsProductKind" selectMultiple="false"/>
								<span class="help-inline">建议图片大小：256 × 256（像素）</span>

							</td>
							<td>
								<input id="cmsProductList{{idx}}_pdFile" name="cmsProductList[{{idx}}].pdFile" type="hidden" value="{{row.pdFile}}" maxlength="255"/>
								<sys:ckfinder input="cmsProductList{{idx}}_pdFile" type="files" uploadPath="/product/cmsProductKind" selectMultiple="false"/>
							</td>
							<td>
								<input id="cmsProductList{{idx}}_pdMv" name="cmsProductList[{{idx}}].pdMv" type="text" value="{{row.pdMv}}" maxlength="255" class="input-small required"/>
							</td>
							<td>
								<textarea id="cmsProductList{{idx}}_pdTitle1" name="cmsProductList[{{idx}}].pdTitle1" rows="4" maxlength="255" class="input-small ">{{row.pdTitle1}}</textarea>
							</td>
							<td>
								<textarea id="cmsProductList{{idx}}_pdIntr1" name="cmsProductList[{{idx}}].pdIntr1" rows="4" maxlength="255" class="input-small ">{{row.pdIntr1}}</textarea>
							</td>
							<td>
								<textarea id="cmsProductList{{idx}}_pdTitle2" name="cmsProductList[{{idx}}].pdTitle2" rows="4" maxlength="255" class="input-small ">{{row.pdTitle2}}</textarea>
							</td>
							<td>
								<textarea id="cmsProductList{{idx}}_pdIntr2" name="cmsProductList[{{idx}}].pdIntr2" rows="4" maxlength="255" class="input-small ">{{row.pdIntr2}}</textarea>
							</td>
							<td>
								<textarea id="cmsProductList{{idx}}_pdTitle3" name="cmsProductList[{{idx}}].pdTitle3" rows="4" maxlength="255" class="input-small ">{{row.pdTitle3}}</textarea>
							</td>
							<td>
								<textarea id="cmsProductList{{idx}}_pdIntr3" name="cmsProductList[{{idx}}].pdIntr3" rows="4" maxlength="255" class="input-small ">{{row.pdIntr3}}</textarea>
							</td>
							<td>
								<textarea id="cmsProductList{{idx}}_pdTitle4" name="cmsProductList[{{idx}}].pdTitle4" rows="4" maxlength="255" class="input-small ">{{row.pdTitle4}}</textarea>
							</td>
							<td>
								<textarea id="cmsProductList{{idx}}_pdIntr4" name="cmsProductList[{{idx}}].pdIntr4" rows="4" maxlength="255" class="input-small ">{{row.pdIntr4}}</textarea>
							</td>
							<td>
								<textarea id="cmsProductList{{idx}}_pdTitle5" name="cmsProductList[{{idx}}].pdTitle5" rows="4" maxlength="255" class="input-small ">{{row.pdTitle5}}</textarea>
							</td>
							<td>
								<textarea id="cmsProductList{{idx}}_pdIntr5" name="cmsProductList[{{idx}}].pdIntr5" rows="4" maxlength="255" class="input-small ">{{row.pdIntr5}}</textarea>
							</td>
							<td>
								<textarea id="cmsProductList{{idx}}_pdTitle6" name="cmsProductList[{{idx}}].pdTitle6" rows="4" maxlength="255" class="input-small ">{{row.pdTitle6}}</textarea>
							</td>
							<td>
								<textarea id="cmsProductList{{idx}}_pdIntr6" name="cmsProductList[{{idx}}].pdIntr6" rows="4" maxlength="255" class="input-small ">{{row.pdIntr6}}</textarea>
							</td>
							<td>
								<textarea id="cmsProductList{{idx}}_remarks" name="cmsProductList[{{idx}}].remarks" rows="4" maxlength="255" class="input-small ">{{row.remarks}}</textarea>
							</td>
							<shiro:hasPermission name="product:cmsProductKind:edit"><td class="text-center" width="10">
								{{#delBtn}}<span class="close" onclick="delRow(this, '#cmsProductList{{idx}}')" title="删除">&times;</span>{{/delBtn}}
							</td></shiro:hasPermission>
						</tr>//-->
					</script>
					<script type="text/javascript">
						var cmsProductRowIdx = 0, cmsProductTpl = $("#cmsProductTpl").html().replace(/(\/\/\<!\-\-)|(\/\/\-\->)/g,"");
						$(document).ready(function() {
							var data = ${fns:toJson(cmsProductKind.cmsProductList)};
							for (var i=0; i<data.length; i++){
								addRow('#cmsProductList', cmsProductRowIdx, cmsProductTpl, data[i]);
								cmsProductRowIdx = cmsProductRowIdx + 1;
							}
						});
					</script>
				</div>
			</div>
		<div class="form-actions">
			<shiro:hasPermission name="product:cmsProductKind:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;</shiro:hasPermission>
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>
	</form:form>
</body>
</html>