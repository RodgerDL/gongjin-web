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
                        <li><a href="tel:12345612348"><i class="icon-call-out"></i>123 - 456 - 12348</a></li>
                        <li><a href="mailto:info@hostpress.com"><i class="icon-envelope"></i>info@example.com</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <nav class="navbar navbar-default navbar-static-top fluid_header centered">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <a class="navbar-brand" href="/${site.theme}/web"><img src="images/logo.png" alt=""></a>
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
                    <li><a href="/${site.theme}/web">首页</a></li>
                    <li><a href="features.html">产品及服务</a></li>
					<li><a href="firmInfo.html">企业相关</a></li>
                    <li class="active"><a href="/${site.theme}/web/recruitment">招聘信息</a></li>
                    <li><a href="contact.html">联系我们</a></li>
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
						<div class="panel panel-default">
							<div class="panel-heading" role="tab" id="heading1">
								<h3 class="panel-title">
									<a role="button" data-toggle="collapse" data-parent="#accordion_sc" href="#collapse1" aria-expanded="true" aria-controls="collapse1">
										技术类
									</a>
								</h3>
							</div>
							<div id="collapse1" class="panel-collapse collapse in" role="tabpane1" aria-labelledby="heading1">
								<div class="panel-body">
									<h4 class="panel-title">
										硬件工程师
									</h4>
									<ul class="hostpressUnList">
										<li style="margin-top: 15px;">工作地点</li>
										<ol>
											<li style="margin-top: 0px;">辽宁省大连市沙河口区五一路267号17号楼101号房间</li>
										</ol>
										<li style="margin-top: 15px;">工作职责</li>
										<ol>
											<li style="margin-top: 0px;">负责通信系统软件模块的设计</li>
											<li style="margin-top: 0px;">负责通信系统软件模块的编码</li>
											<li style="margin-top: 0px;">负责通信系统软件模块的测试 </li>
										</ol>
										<li style="margin-top: 15px;">岗位要求</li>
										<ol>
											<li style="margin-top: 0px;">英语六级以上；</li>
											<li style="margin-top: 0px;">性格开朗，乐于助人；</li>
											<li style="margin-top: 0px;">喜欢人际交往；</li>
											<li style="margin-top: 0px;">沟通能力强；</li>
										</ol>
									</ul>

								</div>
								<div class="panel-body">
									<h4 class="panel-title">
										技术工程师
									</h4>
									<ul class="hostpressUnList">
										<li style="margin-top: 15px;">工作地点</li>
										<ol>
											<li style="margin-top: 0px;">辽宁省大连市沙河口区五一路267号17号楼101号房间</li>
										</ol>
										<li style="margin-top: 15px;">工作职责</li>
										<ol>
											<li style="margin-top: 0px;">负责通信系统软件模块的设计</li>
											<li style="margin-top: 0px;">负责通信系统软件模块的编码</li>
											<li style="margin-top: 0px;">负责通信系统软件模块的测试 </li>
										</ol>
										<li style="margin-top: 15px;">岗位要求</li>
										<ol>
											<li style="margin-top: 0px;">英语六级以上；</li>
											<li style="margin-top: 0px;">性格开朗，乐于助人；</li>
											<li style="margin-top: 0px;">喜欢人际交往；</li>
											<li style="margin-top: 0px;">沟通能力强；</li>
										</ol>
									</ul>

								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading" role="tab" id="heading2">
								<h3 class="panel-title">
									<a role="button" data-toggle="collapse" data-parent="#accordion_sc" href="#collapse2" aria-expanded="false" aria-controls="collapse2">
										营销类
									</a>
								</h3>
							</div>
							<div id="collapse2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading2">
								<div class="panel-body">
									<h4 class="panel-title">
										硬件工程师
									</h4>
									<ul class="hostpressUnList">
										<li style="margin-top: 15px;">工作地点</li>
										<ol>
											<li style="margin-top: 0px;">辽宁省大连市沙河口区五一路267号17号楼101号房间</li>
										</ol>
										<li style="margin-top: 15px;">工作职责</li>
										<ol>
											<li style="margin-top: 0px;">负责通信系统软件模块的设计</li>
											<li style="margin-top: 0px;">负责通信系统软件模块的编码</li>
											<li style="margin-top: 0px;">负责通信系统软件模块的测试 </li>
										</ol>
										<li style="margin-top: 15px;">岗位要求</li>
										<ol>
											<li style="margin-top: 0px;">英语六级以上；</li>
											<li style="margin-top: 0px;">性格开朗，乐于助人；</li>
											<li style="margin-top: 0px;">喜欢人际交往；</li>
											<li style="margin-top: 0px;">沟通能力强；</li>
										</ol>
									</ul>

								</div>
								<div class="panel-body">
									<h4 class="panel-title">
										技术工程师
									</h4>
									<ul class="hostpressUnList">
										<li style="margin-top: 15px;">工作地点</li>
										<ol>
											<li style="margin-top: 0px;">辽宁省大连市沙河口区五一路267号17号楼101号房间</li>
										</ol>
										<li style="margin-top: 15px;">工作职责</li>
										<ol>
											<li style="margin-top: 0px;">负责通信系统软件模块的设计</li>
											<li style="margin-top: 0px;">负责通信系统软件模块的编码</li>
											<li style="margin-top: 0px;">负责通信系统软件模块的测试 </li>
										</ol>
										<li style="margin-top: 15px;">岗位要求</li>
										<ol>
											<li style="margin-top: 0px;">英语六级以上；</li>
											<li style="margin-top: 0px;">性格开朗，乐于助人；</li>
											<li style="margin-top: 0px;">喜欢人际交往；</li>
											<li style="margin-top: 0px;">沟通能力强；</li>
										</ol>
									</ul>

								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading" role="tab" id="heading3">
								<h3 class="panel-title">
									<a role="button" data-toggle="collapse" data-parent="#accordion_sc" href="#collapse3" aria-expanded="false" aria-controls="collapse3">
										制造类
									</a>
								</h3>
							</div>
							<div id="collapse3" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading3">
								<div class="panel-body">
									<h4 class="panel-title">
										硬件工程师
									</h4>
									<ul class="hostpressUnList">
										<li style="margin-top: 15px;">工作地点</li>
										<ol>
											<li style="margin-top: 0px;">辽宁省大连市沙河口区五一路267号17号楼101号房间</li>
										</ol>
										<li style="margin-top: 15px;">工作职责</li>
										<ol>
											<li style="margin-top: 0px;">负责通信系统软件模块的设计</li>
											<li style="margin-top: 0px;">负责通信系统软件模块的编码</li>
											<li style="margin-top: 0px;">负责通信系统软件模块的测试 </li>
										</ol>
										<li style="margin-top: 15px;">岗位要求</li>
										<ol>
											<li style="margin-top: 0px;">英语六级以上；</li>
											<li style="margin-top: 0px;">性格开朗，乐于助人；</li>
											<li style="margin-top: 0px;">喜欢人际交往；</li>
											<li style="margin-top: 0px;">沟通能力强；</li>
										</ol>
									</ul>

								</div>
								<div class="panel-body">
									<h4 class="panel-title">
										<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion_sc" href="#collapse3" aria-expanded="false" aria-controls="collapse3">
											技术工程师
										</a>
									</h4>
									<ul class="hostpressUnList">
										<li style="margin-top: 15px;">工作地点</li>
										<ol>
											<li style="margin-top: 0px;">辽宁省大连市沙河口区五一路267号17号楼101号房间</li>
										</ol>
										<li style="margin-top: 15px;">工作职责</li>
										<ol>
											<li style="margin-top: 0px;">负责通信系统软件模块的设计</li>
											<li style="margin-top: 0px;">负责通信系统软件模块的编码</li>
											<li style="margin-top: 0px;">负责通信系统软件模块的测试 </li>
										</ol>
										<li style="margin-top: 15px;">岗位要求</li>
										<ol>
											<li style="margin-top: 0px;">英语六级以上；</li>
											<li style="margin-top: 0px;">性格开朗，乐于助人；</li>
											<li style="margin-top: 0px;">喜欢人际交往；</li>
											<li style="margin-top: 0px;">沟通能力强；</li>
										</ol>
									</ul>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<%@include file="/WEB-INF/views/modules/cms/front/themes/gongjin/include/footer.jsp" %>
</body>
</html>