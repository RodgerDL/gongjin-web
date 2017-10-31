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
				<li><a href="index.html">首页</a></li>
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
									<img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/about-us/1.jpg" alt="" class="img-responsive">
								</div>
								<div class="col-sm-7">
									<div class="row sectionTitle text-left">
										<h5>企业文化 &amp;</h5>
										<h2>什么是共进</h2>
									</div>
									<h4>公司概况</h4>
									<p>深圳市共进电子股份有限公司自1998年创始，以 “发展企业，培养人才，回馈社会”为宗旨，拥有“T&W”商标。2015年2月登陆上交所A股市场，证券代码为603118。公司积多年发展厚势，追求卓越，永不止步。作为全球领先的宽带通信终端产品制造商，共进股份二次创业，再扬风帆，专业从事宽带终端、智慧产品和互联网健康业务。</p>
									<hr>
									<h4>共进文化</h4>
									<div class="row m0">
										<ul class="hostpressUnList">
											<li>尊重人才</li>
											<li>团队协作</li>
											<li>拼搏进取</li>
										</ul>
									</div>
									<p>发展企业，培养人才，回馈社会,坚持创新文化，倡导现代文明，成为对社会，对用户，对员工，对股东负责任的企业。</p>
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
								<div class="col-sm-4 cause2choose">
									<div class="media">
										<div class="media-left"><a href="#"><img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/icons/cause2choose/1.png" alt=""></a></div>
										<div class="media-body">
											<h4>Small Cell</h4>
											<p>新兴的Small Cell技术既可以做到精确的覆盖，又可以最大限度的满足客户的无线资源需求，提升容量。</p>
										</div>
									</div>
								</div>
								<div class="col-sm-4 cause2choose">
									<div class="media">
										<div class="media-left"><a href="#"><img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/icons/cause2choose/2.png" alt=""></a></div>
										<div class="media-body">
											<h4>Home、SOHO</h4>
											<p>新兴的Small Cell技术既可以做到精确的覆盖，又可以最大限度的满足客户的无线资源需求，提升容量。</p>
										</div>
									</div>
								</div>
								<div class="col-sm-4 cause2choose">
									<div class="media">
										<div class="media-left"><a href="#"><img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/icons/cause2choose/3.png" alt=""></a></div>
										<div class="media-body">
											<h4>4G/3G Nanocell</h4>
											<p>新兴的Small Cell技术既可以做到精确的覆盖，又可以最大限度的满足客户的无线资源需求，提升容量。</p>
										</div>
									</div>
								</div>
								<div class="col-sm-4 cause2choose">
									<div class="media">
										<div class="media-left"><a href="#"><img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/icons/cause2choose/4.png" alt=""></a></div>
										<div class="media-body">
											<h4>多模Nanocell</h4>
											<p>新兴的Small Cell技术既可以做到精确的覆盖，又可以最大限度的满足客户的无线资源需求，提升容量。</p>
										</div>
									</div>
								</div>
								<div class="col-sm-4 cause2choose">
									<div class="media">
										<div class="media-left"><a href="#"><img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/icons/cause2choose/5.png" alt=""></a></div>
										<div class="media-body">
											<h4>SME中小型企业</h4>
											<p>新兴的Small Cell技术既可以做到精确的覆盖，又可以最大限度的满足客户的无线资源需求，提升容量。</p>
										</div>
									</div>
								</div>
								<div class="col-sm-4 cause2choose">
									<div class="media">
										<div class="media-left"><a href="#"><img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/icons/cause2choose/6.png" alt=""></a></div>
										<div class="media-body">
											<h4>热点区域</h4>
											<p>新兴的Small Cell技术既可以做到精确的覆盖，又可以最大限度的满足客户的无线资源需求，提升容量。</p>
										</div>
									</div>
								</div>
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
												<li>ISO9001:2008 (质量管理体系)</li>
												<li>TL9000R5.0 (通讯业质量管理体系)</li>
												<li>ISO14001:2004 (环境管理体系)</li>
												<li>OHSAS18001:2007 (职业健康安全管理体系)</li>
												<li>ISO14064-1 (组织温室气体排放与移除的量化及报告)</li>
											</ul>
										</div>
										<div class="col-sm-6 col-sm-offset-1">
											<img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/service/tab/smile.jpg" alt="" class="service_img img-responsive fright">
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
								<div class="col-sm-4 portfolio">
									<div class="row image m0">
										<img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/portfolio/222222.jpg" alt="">
										<a href="${ctxStatic}/modules/cms/front/themes/gongjin/images/portfolio/222222.jpg" class="portfolio-link"><i class="fa fa-search"></i></a>
									</div>
									<div class="row m0">
										<p>共进工厂1</p>
									</div>
								</div>
								<div class="col-sm-4 portfolio">
									<div class="row image m0">
										<img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/portfolio/222222.jpg" alt="">
										<a href="${ctxStatic}/modules/cms/front/themes/gongjin/images/portfolio/222222.jpg" class="portfolio-link"><i class="fa fa-search"></i></a>
									</div>
									<div class="row m0">
										<p>共进工厂2</p>
									</div>
								</div>
								<div class="col-sm-4 portfolio">
									<div class="row image m0">
										<img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/portfolio/222222.jpg" alt="">
										<a href="${ctxStatic}/modules/cms/front/themes/gongjin/images/portfolio/222222.jpg" class="portfolio-link"><i class="fa fa-search"></i></a>
									</div>
									<div class="row m0">
										<p>共进工厂3</p>
									</div>
								</div>
								<div class="col-sm-4 portfolio">
									<div class="row image m0">
										<img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/portfolio/222222.jpg" alt="">
										<a href="${ctxStatic}/modules/cms/front/themes/gongjin/images/portfolio/222222.jpg" class="portfolio-link"><i class="fa fa-search"></i></a>
									</div>
									<div class="row m0">
										<p>共进工厂4</p>
									</div>
								</div>
								<div class="col-sm-4 portfolio">
									<div class="row image m0">
										<img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/portfolio/222222.jpg" alt="">
										<a href="${ctxStatic}/modules/cms/front/themes/gongjin/images/portfolio/222222.jpg" class="portfolio-link"><i class="fa fa-search"></i></a>
									</div>
									<div class="row m0">
										<p>共进工厂5</p>
									</div>
								</div>
								<div class="col-sm-4 portfolio">
									<div class="row image m0">
										<img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/portfolio/222222.jpg" alt="">
										<a href="${ctxStatic}/modules/cms/front/themes/gongjin/images/portfolio/222222.jpg" class="portfolio-link"><i class="fa fa-search"></i></a>
									</div>
									<div class="row m0">
										<p>共进工厂6</p>
									</div>
								</div>
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
								<div class="col-sm-4 team_member">
									<div class="row m0 inner">
										<div class="row m0 image"><img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/team/1.png" alt=""></div>
										<h4 class="title">孙 宁</h4>
										<h6 class="desig">项目经理 &amp; 技术支持</h6>
										<p class="nState">1964年出生 硕士研究生学历 .</p>
										<p class="hState">孙宁先生,1964年出生,硕士研究生学历。曾任摩托罗拉(中国)电子有限公司移动电话事业部高级测试工程师、测试部经理、天津工厂新产品引进项目经理,UT 斯达康中国有限公司高级副总裁、移动终端事业部全球总裁、董事、全球战略委员会成员,杭州启天科技有限公司总裁、董事。</p>
										<ul class="list-unstyled">
											<li><a href="#"><i class="fa fa-facebook"></i></a></li>
											<li><a href="#"><i class="fa fa-twitter"></i></a></li>
											<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
											<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
										</ul>
									</div>
								</div>
								<div class="col-sm-4 team_member">
									<div class="row m0 inner">
										<div class="row m0 image"><img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/team/6.png" alt=""></div>
										<h4 class="title">孙 宁</h4>
										<h6 class="desig">项目经理 &amp; 技术支持</h6>
										<p class="nState">1964年出生 硕士研究生学历 .</p>
										<p class="hState">孙宁先生,1964年出生,硕士研究生学历。曾任摩托罗拉(中国)电子有限公司移动电话事业部高级测试工程师、测试部经理、天津工厂新产品引进项目经理,UT 斯达康中国有限公司高级副总裁、移动终端事业部全球总裁、董事、全球战略委员会成员,杭州启天科技有限公司总裁、董事。</p>
										<ul class="list-unstyled">
											<li><a href="#"><i class="fa fa-facebook"></i></a></li>
											<li><a href="#"><i class="fa fa-twitter"></i></a></li>
											<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
											<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
										</ul>
									</div>
								</div>
								<div class="col-sm-4 team_member">
									<div class="row m0 inner">
										<div class="row m0 image"><img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/team/2.png" alt=""></div>
										<h4 class="title">孙 宁</h4>
										<h6 class="desig">项目经理 &amp; 技术支持</h6>
										<p class="nState">1964年出生 硕士研究生学历 .</p>
										<p class="hState">孙宁先生,1964年出生,硕士研究生学历。曾任摩托罗拉(中国)电子有限公司移动电话事业部高级测试工程师、测试部经理、天津工厂新产品引进项目经理,UT 斯达康中国有限公司高级副总裁、移动终端事业部全球总裁、董事、全球战略委员会成员,杭州启天科技有限公司总裁、董事。</p>
										<ul class="list-unstyled">
											<li><a href="#"><i class="fa fa-facebook"></i></a></li>
											<li><a href="#"><i class="fa fa-twitter"></i></a></li>
											<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
											<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
										</ul>
									</div>
								</div>
								<div class="col-sm-4 team_member">
									<div class="row m0 inner">
										<div class="row m0 image"><img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/team/3.png" alt=""></div>
										<h4 class="title">孙 宁</h4>
										<h6 class="desig">项目经理 &amp; 技术支持</h6>
										<p class="nState">1964年出生 硕士研究生学历 .</p>
										<p class="hState">孙宁先生,1964年出生,硕士研究生学历。曾任摩托罗拉(中国)电子有限公司移动电话事业部高级测试工程师、测试部经理、天津工厂新产品引进项目经理,UT 斯达康中国有限公司高级副总裁、移动终端事业部全球总裁、董事、全球战略委员会成员,杭州启天科技有限公司总裁、董事。</p>
										<ul class="list-unstyled">
											<li><a href="#"><i class="fa fa-facebook"></i></a></li>
											<li><a href="#"><i class="fa fa-twitter"></i></a></li>
											<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
											<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
										</ul>
									</div>
								</div>
								<div class="col-sm-4 team_member">
									<div class="row m0 inner">
										<div class="row m0 image"><img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/team/4.png" alt=""></div>
										<h4 class="title">孙 宁</h4>
										<h6 class="desig">项目经理 &amp; 技术支持</h6>
										<p class="nState">1964年出生 硕士研究生学历 .</p>
										<p class="hState">孙宁先生,1964年出生,硕士研究生学历。曾任摩托罗拉(中国)电子有限公司移动电话事业部高级测试工程师、测试部经理、天津工厂新产品引进项目经理,UT 斯达康中国有限公司高级副总裁、移动终端事业部全球总裁、董事、全球战略委员会成员,杭州启天科技有限公司总裁、董事。</p>
										<ul class="list-unstyled">
											<li><a href="#"><i class="fa fa-facebook"></i></a></li>
											<li><a href="#"><i class="fa fa-twitter"></i></a></li>
											<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
											<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
										</ul>
									</div>
								</div>
								<div class="col-sm-4 team_member">
									<div class="row m0 inner">
										<div class="row m0 image"><img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/team/5.png" alt=""></div>
										<h4 class="title">孙 宁</h4>
										<h6 class="desig">项目经理 &amp; 技术支持</h6>
										<p class="nState">1964年出生 硕士研究生学历 .</p>
										<p class="hState">孙宁先生,1964年出生,硕士研究生学历。曾任摩托罗拉(中国)电子有限公司移动电话事业部高级测试工程师、测试部经理、天津工厂新产品引进项目经理,UT 斯达康中国有限公司高级副总裁、移动终端事业部全球总裁、董事、全球战略委员会成员,杭州启天科技有限公司总裁、董事。</p>
										<ul class="list-unstyled">
											<li><a href="#"><i class="fa fa-facebook"></i></a></li>
											<li><a href="#"><i class="fa fa-twitter"></i></a></li>
											<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
											<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
										</ul>
									</div>
								</div>
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
								<div class="col-sm-4 portfolio">
									<div class="row image m0">
										<img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/portfolio/111.jpg" alt="">
										<a href="${ctxStatic}/modules/cms/front/themes/gongjin/images/portfolio/111.jpg" class="portfolio-link"><i class="fa fa-search"></i></a>
									</div>
									<div class="row m0">
										<p>国家级高新技术企业</p>
									</div>
								</div>
								<div class="col-sm-4 portfolio">
									<div class="row image m0">
										<img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/portfolio/111.jpg" alt="">
										<a href="${ctxStatic}/modules/cms/front/themes/gongjin/images/portfolio/111.jpg" class="portfolio-link"><i class="fa fa-search"></i></a>
									</div>
									<div class="row m0">
										<p>中国电子信息百强企业</p>
									</div>
								</div>
								<div class="col-sm-4 portfolio">
									<div class="row image m0">
										<img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/portfolio/111.jpg" alt="">
										<a href="${ctxStatic}/modules/cms/front/themes/gongjin/images/portfolio/111.jpg" class="portfolio-link"><i class="fa fa-search"></i></a>
									</div>
									<div class="row m0">
										<p>深圳市工业百强企业</p>
									</div>
								</div>
								<div class="col-sm-4 portfolio">
									<div class="row image m0">
										<img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/portfolio/111.jpg" alt="">
										<a href="${ctxStatic}/modules/cms/front/themes/gongjin/images/portfolio/111.jpg" class="portfolio-link"><i class="fa fa-search"></i></a>
									</div>
									<div class="row m0">
										<p>深圳市工业百强企业</p>
									</div>
								</div>
								<div class="col-sm-4 portfolio">
									<div class="row image m0">
										<img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/portfolio/111.jpg" alt="">
										<a href="${ctxStatic}/modules/cms/front/themes/gongjin/images/portfolio/111.jpg" class="portfolio-link"><i class="fa fa-search"></i></a>
									</div>
									<div class="row m0">
										<p>深圳市企业技术中心</p>
									</div>
								</div>
								<div class="col-sm-4 portfolio">
									<div class="row image m0">
										<img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/portfolio/111.jpg" alt="">
										<a href="${ctxStatic}/modules/cms/front/themes/gongjin/images/portfolio/111.jpg" class="portfolio-link"><i class="fa fa-search"></i></a>
									</div>
									<div class="row m0">
										<p>广东省科学技术奖</p>
									</div>
								</div>
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
									<div class="row m0 blog">
										<div class="row m0 image"><a href="single.html"><img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/posts/blog/1.jpg" alt=""></a></div>
										<ul class="blog_infos nav">
											<li><a href="#"><i class="fa fa-calendar"></i>19 May, 2015</a></li>
										</ul>
										<h3><a href="single.html">4G/3G Nanocell融合网关解决方案</a></h3>
										<p>4G/3G融合网关解决方案提供标准的空中接口，是一个完全融合了3G和4G的Nanocell无线宽带接入系统。标准的核心网接口保证了不需要对现有核心网架构作任何改动，就可以进行多形态、多场景下的Nanocell覆盖。 Nanocell有效推进 3G/4G网络顺利部署，通过改善室内外信号质量，为运营商提供一个大容量、高可靠、易拓展、易部署、低成本的高效解决方案。特别是对LTE的部署将起到关键的作用。</p>
									</div>
									<hr class="blog_bottom_line">
									<div class="row m0 blog">
										<div class="row m0 image"><a href="single.html"><img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/posts/blog/1.jpg" alt=""></a></div>
										<ul class="blog_infos nav">
											<li><a href="#"><i class="fa fa-calendar"></i>19 May, 2015</a></li>
										</ul>
										<h3><a href="single.html">4G/3G Nanocell融合网关解决方案</a></h3>
										<p>4G/3G融合网关解决方案提供标准的空中接口，是一个完全融合了3G和4G的Nanocell无线宽带接入系统。标准的核心网接口保证了不需要对现有核心网架构作任何改动，就可以进行多形态、多场景下的Nanocell覆盖。 Nanocell有效推进 3G/4G网络顺利部署，通过改善室内外信号质量，为运营商提供一个大容量、高可靠、易拓展、易部署、低成本的高效解决方案。特别是对LTE的部署将起到关键的作用。</p>
									</div>
									<hr class="blog_bottom_line">
									<div class="row m0 blog">
										<div class="row m0 image"><a href="single.html"><img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/posts/blog/1.jpg" alt=""></a></div>
										<ul class="blog_infos nav">
											<li><a href="#"><i class="fa fa-calendar"></i>19 May, 2015</a></li>
										</ul>
										<h3><a href="single.html">4G/3G Nanocell融合网关解决方案</a></h3>
										<p>4G/3G融合网关解决方案提供标准的空中接口，是一个完全融合了3G和4G的Nanocell无线宽带接入系统。标准的核心网接口保证了不需要对现有核心网架构作任何改动，就可以进行多形态、多场景下的Nanocell覆盖。 Nanocell有效推进 3G/4G网络顺利部署，通过改善室内外信号质量，为运营商提供一个大容量、高可靠、易拓展、易部署、低成本的高效解决方案。特别是对LTE的部署将起到关键的作用。</p>
									</div>
									<hr class="blog_bottom_line">
								</div>
							</div>
						</div>
					</section>
                </div>
                <div class="tab-pane" role="tabpanel" id="featureT3">
                    <section class="row clients about_clients">
						<div class="container">
							<div class="row sectionTitle">
								<h5>我们的合作伙伴 &amp;</h5>
							</div>
							<div class="row">
								<ul class="nav nav-justified">
									<li><a href="#" target="_blank"><img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/clients/1.jpg" alt=""></a></li>
									<li><a href="#" target="_blank"><img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/clients/2.jpg" alt=""></a></li>
									<li><a href="#" target="_blank"><img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/clients/3.jpg" alt=""></a></li>
									<li><a href="#" target="_blank"><img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/clients/4.jpg" alt=""></a></li>
									<li><a href="#" target="_blank"><img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/clients/5.jpg" alt=""></a></li>
									<li><a href="#" target="_blank"><img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/clients/6.jpg" alt=""></a></li>
								</ul>
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