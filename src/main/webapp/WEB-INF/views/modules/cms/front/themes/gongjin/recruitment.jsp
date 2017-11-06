<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/themes/gongjin/include/taglib.jsp"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>${site.title} - 企业新闻</title>
    <%@include file="/WEB-INF/views/modules/cms/front/themes/gongjin/include/header.jsp" %>
</head>
<body class="shortcode">

    <div class="preloader">
        <div class="dots-loader">Loading ...</div>
    </div>

    <section class="row top_header">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 wc_msg">欢迎访问共进</div>
                <div class="col-sm-6">
                    <ul class="nav nav-pills">
                        <li><a href="tel:12345612348"><i class="icon-call-out"></i>${site.tel}</a></li>
                        <li><a href="mailto:info@hostpress.com"><i class="icon-envelope"></i>${site.email}</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <nav class="navbar navbar-default navbar-static-top fluid_header centered">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <a class="navbar-brand" href="/${site.theme}/web"><img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/logo.png" alt=""></a>
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main_navigation" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="main_navigation">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="/${site.theme}/web"">首页</a></li>
                    <li><a href="/${site.theme}/web/product">产品及服务</a></li>
                    <li><a href="/${site.theme}/web/companyInfo">企业相关</a></li>
                    <li class="active"><a href="/${site.theme}/web/recruitment">招聘信息</a></li>
                    <li><a href="/${site.theme}/web/contact">联系我们</a></li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
    
    <section class="row page_header">
        <div class="container">
            <h3>招聘信息</h3>
            <ol class="breadcrumb">
                <li><a href="/${site.theme}/web">首页</a></li>
                <li class="active">招聘信息</li>
            </ol>
        </div>
    </section>

	<section class="row contentRowPad accordion_alert">
		<div class="container">
			<div class="row">
				<div class="">
					<h3 class="widgetTitle">招聘信息</h3>
					<div class="panel-group accordion" id="accordion_sc" role="tablist" aria-multiselectable="true">
					    <c:forEach items="${fns:getDictList('cms_recruitment_category')}" var="dict">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading1">
                                    <h3 class="panel-title">
                                        <a role="button" data-toggle="collapse" data-parent="#accordion_sc" href="#collapse${dict.value}" aria-expanded="true" aria-controls="collapse1">
                                            ${dict.label}
                                        </a>
                                    </h3>
                                </div>
                                <div id="collapse${dict.value}" class="panel-collapse collapse in" role="tabpane1" aria-labelledby="heading1">
                                    <c:forEach items="${result}" var="recruitment">
                                        <c:if test="${dict.value eq recruitment.categoryId}">
                                            <div class="panel-body">
                                                <h4 class="panel-title">
                                                    ${recruitment.jobTitle}
                                                </h4>
                                                <ul class="hostpressUnList">
                                                    <li style="margin-top: 15px;">工作地点</li>
                                                    <ol>
                                                        ${recruitment.jobLocation}
                                                    </ol>
                                                    <li style="margin-top: 15px;">工作职责</li>
                                                    <ol>
                                                        ${recruitment.jobResponsibility}
                                                    </ol>
                                                    <li style="margin-top: 15px;">岗位要求</li>
                                                    <ol>
                                                        ${recruitment.jobRequirement}
                                                    </ol>
                                                </ul>
                                            </div>
                                        </c:if>
                                    </c:forEach>
                                </div>
                            </div>
                        </c:forEach>

					</div>
				</div>
			</div>
		</div>
	</section>

	<%@include file="/WEB-INF/views/modules/cms/front/themes/gongjin/include/footer.jsp" %>
</body>
</html>