<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/themes/gongjin/include/taglib.jsp"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>${site.title} - 公司新闻</title>
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
				<a class="navbar-brand" href="index.html"><img src="images/logo.png" alt=""></a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="main_navigation">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="index.html">首页</a></li>
					<li><a href="features.html">产品及服务</a></li>
					<li class="dropdown active">
						<a href="article.html">企业相关</a>
						<ul class="dropdown-menu">
							<li>
								<a href="culture.html">企业文化</a>
							</li>
							<li>
								<a href="article.html">企业新闻</a>
							</li>
						</ul>
					</li>
					<li><a href="recruitment.html">招聘信息</a></li>
					<li><a href="contact.html">联系我们</a></li>
				</ul>
			</div><!-- /.navbar-collapse -->
		</div><!-- /.container-fluid -->
	</nav>

	<section class="row page_header">
		<div class="container">
			<h3>企业新闻</h3>
			<ol class="breadcrumb">
				<li><a href="index.html">首页</a></li>
				<li class="active">企业新闻</li>
			</ol>
		</div>
	</section>

	<section class="row blog_content">
		<div class="container">
			<div class="row">
				<div class="col-sm-8 blogs">
					<div class="row m0 blog">
						<div class="row m0 image"><a href="articleDetail.html"><img src="images/posts/blog/1.jpg" alt=""></a></div>
						<ul class="blog_infos nav">
							<li><a href="#"><i class="fa fa-calendar"></i>2016年12月25日</a></li>
						</ul>
						<h3><a href="articleDetail.html">独家中标上海移动2015年TD-FEMTO终端采购项目</a></h3>
						<p>2015年5月，在中国移动上海公司实施的“2015年TD-FEMTO终端采购项目”，博威一举夺魁，独家中标。</p>
						<a href="articleDetail.html" class="btn btn-primary">详细内容</a>
					</div>
					<hr class="blog_bottom_line">
					<div class="row m0 blog">
						<div class="row m0 image"><a href="articleDetail.html"><img src="images/posts/blog/2.jpg" alt=""></a></div>
						<ul class="blog_infos nav">
							<li><a href="#"><i class="fa fa-calendar"></i>2017年1月10日</a></li>
						</ul>
						<h3><a href="articleDetail.html">中标苏州移动TDL&TDS双模企业级FEMTO终端采购项目</a></h3>
						<p>2015年年初，继苏州移动FEMTO系统企业级AP采购项目中标之后，由苏州移动公开招标的“苏州移动TDL&TDS双模企业级FEMTO终端采购”项目，经过与几家实力雄厚的公司激烈竞标和角逐，我公司再次成功中得该项目，并获得第二名。</p>
						<a href="articleDetail.html" class="btn btn-primary">详细内容</a>
					</div>
					<hr class="blog_bottom_line">
					<div class="row m0 blog">
						<div class="row m0 image"><a href="articleDetail.html"><img src="images/posts/blog/1.jpg" alt=""></a></div>
						<ul class="blog_infos nav">
							<li><a href="#"><i class="fa fa-calendar"></i>2017年6月7日</a></li>
						</ul>
						<h3><a href="articleDetail.html">厦门移动携手博威实现国内首个4G/3G融合网关部署</a></h3>
						<p>近日，博威Nanocell网关解决方案助力中国移动厦门公司成功部署国内首个4G/3G Nanocell融合网关商用系统，为移动用户提供更好的移动互联网体验。</p>
						<a href="articleDetail.html" class="btn btn-primary">详细内容</a>
					</div>
					<hr class="blog_bottom_line">
					<div class="row m0 blog">
						<div class="row m0 image"><a href="articleDetail.html"><img src="images/posts/blog/4.jpg" alt=""></a></div>
						<ul class="blog_infos nav">
							<li><a href="#"><i class="fa fa-calendar"></i>2017年6月10日</a></li>
						</ul>
						<h3><a href="articleDetail.html">让同维公益之旗在黄土高原迎风飘扬</a></h3>
						<p>公司第九所同维希望小学举行开工奠基仪式</p>
						<a href="articleDetail.html" class="btn btn-primary">详细内容</a>
					</div>
					<hr class="blog_bottom_line">

					<nav class="pagination_nav">
						<ul class="pagination">
							<li><a href="#" aria-label="Previous">前一页</a></li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#" aria-label="Next">后一页</a></li>
						</ul>
					</nav>
				</div>
				<div class="col-sm-4 sidebar">
					<div class="row m0 inner">
						<div class="row m0 recent_posts">
							<h4>最新文章</h4>
							<div class="post media">
								<div class="media-left">
									<a href="articleDetail.html"><img src="images/posts/recent/1.jpg" alt=""></a>
								</div>
								<div class="media-body">
									<h5><a href="articleDetail.html">让同维公益之旗在黄土高原迎风飘扬</a></h5>
									<div class="row m0 date"><i class="fa fa-calendar"></i>2017年6月10日</div>
								</div>
							</div>
							<div class="post media">
								<div class="media-left">
									<a href="articleDetail.html"><img src="images/posts/recent/2.jpg" alt=""></a>
								</div>
								<div class="media-body">
									<h5><a href="articleDetail.html">厦门移动携手博威实现国内首个4G/3G融合网关部署</a></h5>
									<div class="row m0 date"><i class="fa fa-calendar"></i>2017年6月7日</div>
								</div>
							</div>
							<div class="post media">
								<div class="media-left">
									<a href="articleDetail.html"><img src="images/posts/recent/3.jpg" alt=""></a>
								</div>
								<div class="media-body">
									<h5><a href="articleDetail.html">中标苏州移动TDL&TDS双模企业级FEMTO终端采购项目</a></h5>
									<div class="row m0 date"><i class="fa fa-calendar"></i>2017年1月10日</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<footer class="row">
		<div class="top_footer row m0">
			<div class="container">
				<div class="row m0 quick_contact">
					<ul class="nav nav-pills">
						<li><a href="tel:1234567890"><i class="lnr lnr-phone"></i>123 - 456 - 7890</a></li>
						<li><a href="mailto:info@hostpress.com"><i class="lnr lnr-envelope"></i>info@exmaple.com</a></li>
						<li><a href="#"><i class="lnr lnr-bubble"></i>联系我们</a></li>
					</ul>
				</div>
				<div class="row shortKnowledge">
					<div class="col-sm-6 about">
						<h4><a href="index.html"><img src="images/logo.png" alt=""></a></h4>
						<p>深圳市共进电子股份有限公司自1998年创始，以 “发展企业，培养人才，回馈社会”为宗旨，拥有“T&W”商标。2015年2月登陆上交所A股市场，证券代码为603118。公司积多年发展厚势，追求卓越，永不止步。作为全球领先的宽带通信终端产品制造商，共进股份二次创业，再扬风帆，专业从事宽带终端、智慧产品和互联网健康业务。</p>
					</div>
					<div class="col-sm-6 product">
						<h4>产品</h4>
						<ul class="product_list nav">
							<li><a href="#">SMALL CELL</a></li>
							<li><a href="#">HOME、SOHO</a></li>
							<li><a href="#">4G/3G NANOCELL</a></li>
							<li><a href="#">多模NANOCELL</a></li>
							<li><a href="#">SME中小型企业</a></li>
							<li><a href="#">热点区域</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="row m0 copyright_line">
			Copyright &copy; 2017 twsz.com. All Rights Reserved
		</div>
	</footer>

<!--jQuery, Bootstrap and other vendor JS-->

<!--jQuery-->
<script src="js/jquery-2.1.4.min.js"></script>

<!--Bootstrap JS-->
<script src="js/bootstrap.min.js"></script>

<!--Bootstrap Select-->
<script src="vendors/bootstrap-select/js/bootstrap-select.min.js"></script>

<!--Owl Carousel-->
<script src="vendors/owl.carousel/owl.carousel.min.js"></script>

<!--Waypoints-->
<script src="vendors/waypoints/waypoints.min.js"></script>

<!--Counter Up-->
<script src="vendors/counterup/jquery.counterup.min.js"></script>

<!--Magnific Popup-->
<script src="js/jquery.magnific-popup.min.js"></script>

<!--Isotope-->
<script src="vendors/isotope/isotope.min.js"></script>

<!--Isotope-->
<script src="vendors/infinitescrol/jquery.infinitescroll.min.js"></script>

<!--Theme JS-->
<script src="js/theme.js"></script>
</body>
</html>