<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/themes/gongjin/include/taglib.jsp"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>${site.title} - 企业相关</title>
    <%@include file="/WEB-INF/views/modules/cms/front/themes/gongjin/include/header.jsp" %>
    
</head>
<body class="shortcode">
    
        <div class="preloader" style="display: none;">
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
    <nav class="navbar navbar-default navbar-static-top fluid_header centered affix-top">
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
                    <li><a href="/${site.theme}/web">首页</a></li>
                    <li><a href="/${site.theme}/web/product">产品及服务</a></li>
                    <li class="active"><a href="/${site.theme}/web/firmInfo">企业相关</a></li>
                    <li><a href="/${site.theme}/web/recruitment">招聘信息</a></li>
                    <li><a href="/${site.theme}/web/contact">联系我们</a></li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
    
    <section class="row page_header">
        <div class="container">
            <h3>企业相关</h3>
            <ol class="breadcrumb">
                <li><a href="/${site.theme}/web">首页</a></li>
                <li class="active">企业相关</li>
            </ol>
        </div>
    </section>

    <section class="row featureTab">
        <div class="row feature_tab_menu m0">
            <div class="container">
                <div class="row">
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#featureT1" aria-controls="featureT1" role="tab" data-toggle="tab">
                            企业展示
							</a></li>
                        <li role="presentation"><a href="#featureT2" aria-controls="featureT2" role="tab" data-toggle="tab">
                            企业资质
							</a></li>
                        <li role="presentation"><a href="#featureT3" aria-controls="featureT3" role="tab" data-toggle="tab">
                            合作伙伴
							</a></li>

                    </ul>
                </div>
            </div>
        </div>
        <div class="container serviceTab_contents">
            <div class="tab-content">
                <div class="tab-pane active" role="tabpanel" id="featureT1">
					<!--文化-->
					<section class="row about_us_content">
						<div class="container">
							<div class="row">
								<div class="col-sm-5">
									<img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/company/1.jpg" alt="" class="img-responsive">
								</div>
								<div class="col-sm-7">
									<div class="row sectionTitle text-left">
										<h5>企业文化 &amp;</h5>
										<h2>什么是共进</h2>
									</div>
									<h4>公司概况</h4>
									<p>${companyInfo.introduceList[0].detailed}</p>
									<hr>
									<h4>共进文化</h4>
									<div class="row m0">
										<ul class="hostpressUnList">
											<li>${companyInfo.introduceList[0].civilization1}</li>
											<li>${companyInfo.introduceList[0].civilization2}</li>
											<li>${companyInfo.introduceList[0].civilization3}</li>
										</ul>
									</div>
									<p>${companyInfo.introduceList[0].civilization}</p>
								</div>
							</div>
						</div>
					</section>
					<section class="row why_choose">
						<div class="container">
							<div class="row sectionTitle">
								<h2>共进技术</h2>
							</div>
							<div class="row">
								<c:forEach items="${companyInfo.technologyList}" var="technology" varStatus="statusTechnology" >
									<div class="col-sm-4 cause2choose">
										<div class="media">
											<%--<div class="media-left"><a href="#"><img src="${technology.icon}" alt=""></a></div>--%>
											<div class="media-body">
												<h4>${technology.title}</h4>
												<p>${technology.content}</p>
											</div>
										</div>
									</div>
	                            </c:forEach>
							</div>
						</div>
					</section>
					<!--管理-->
					<section class="row serviceTab">	
						<div class="container serviceTab_contents">
							<div class="row">
								<div class="tab-content">
									<div class="tab-pane active" role="tabpanel" id="serviceT1">
										<div class="col-sm-5">
											<h3 class="title">共进管理</h3>
											<p>获得认证的管理体系：</p>
											<ul class="hostpressUnList">
												<c:forEach items="${companyInfo.manageList}" var="manage" varStatus="statusManage" >
													<li>${manage.content}</li>
												</c:forEach>
											</ul>
										</div>
										<div class="col-sm-6 col-sm-offset-1">
											<img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/company/2.jpg" alt="" class="service_img img-responsive fright">
										</div>
									</div>
								</div>
							</div>
						</div>
 					</section>
						<!--技术-->

						<!--工厂-->
					<section class="row portfolio_content">
						<div class="container">
						   <div class="row sectionTitle">
								<h2>共进工厂</h2>
							</div>
							<div class="row col3">
								<c:forEach items="${companyInfo.factoryList}" var="factory" varStatus="statusFactory" >
									<div class="col-sm-4 portfolio">
										<div class="row image m0">
											<img src="${factory.img}" alt="">
											<a href="${factory.img}" class="portfolio-link"><i class="fa fa-search"></i></a>
										</div>
										<div class="row m0">
											<p>${factory.name}</p>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</section>

					<!--人员-->
					<section class="row team_section">
						<div class="container">
							<div class="row sectionTitle">
								<h2>共进团队</h2>
							</div>
							<div class="row">
								<c:forEach items="${companyInfo.memberList}" var="member" varStatus="statusMember" >
									<div class="col-sm-4 team_member">
										<div class="row m0 inner">
											<div class="row m0 image"><img src="${member.img}" alt=""></div>
											<h4 class="title">${member.name}</h4>
											<h6 class="desig">${member.position}</h6>
											<p class="nState">${member.introduction}</p>
											<p class="hState">${member.details}</p>
											<ul class="list-unstyled">
												<li><a href="#"><i class="fa fa-facebook"></i></a></li>
												<li><a href="#"><i class="fa fa-twitter"></i></a></li>
												<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
												<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
											</ul>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</section>
                </div>
                <div class="tab-pane" role="tabpanel" id="featureT2">
					<section class="row portfolio_content">
						<div class="row sectionTitle">
							<h2>认证</h2>
						</div>
						<div class="container">
							<div class="row col3">
								<c:forEach items="${companyInfo.qualificationList}" var="qualification" varStatus="statusQualification" >
									<div class="col-sm-4 portfolio">
										<div class="row image m0">
											<img src="${qualification.img}" alt="">
											<a href="${qualification.img}" class="portfolio-link"><i class="fa fa-search"></i></a>
										</div>
										<div class="row m0">
											<p>${qualification.name}</p>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</section>
					
					<section class="row blog_content">
						<div class="row sectionTitle">
							<h2>成功案例</h2>
						</div>
						<div class="container">
							<div class="row">
								<div class="col-sm-12 blogs">
									<c:forEach items="${companyInfo.succCaseList}" var="succCase" varStatus="statusSuccCase" >
										<div class="row m0 blog">
											<div class="row m0 image"><a href="single.html"><img src="${succCase.img}" alt=""></a></div>
											<h3>${succCase.title}</h3>
											<p>${succCase.content}</p>
										</div>
										<hr class="blog_bottom_line">
									</c:forEach>
								</div>
							</div>
						</div>
					</section>
                </div>
                <div class="tab-pane" role="tabpanel" id="featureT3">
                	<section class="row portfolio_content">
						<div class="container">
						   <div class="row sectionTitle">
								<h5>我们的合作伙伴 &amp;</h5>
							</div>
							<div class="row col3">
								<c:forEach items="${companyInfo.partnerList}" var="partner" varStatus="statusPartner" >
									<div class="col-sm-2 portfolio">
										<div class="row image m0">
											<img src="${partner.icon}" alt="">
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</section>
                </div>
                
            </div>
        </div>
    </section>

	<%@include file="/WEB-INF/views/modules/cms/front/themes/gongjin/include/footer.jsp" %>
</body>
</html>