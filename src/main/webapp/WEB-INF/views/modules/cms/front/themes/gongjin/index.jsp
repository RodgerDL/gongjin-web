<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/themes/gongjin/include/taglib.jsp"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>${site.title} - 首页</title>
    <%@include file="/WEB-INF/views/modules/cms/front/themes/gongjin/include/header.jsp" %>
</head>
<body class="home">

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
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="main_navigation">
                <ul class="nav navbar-nav navbar-right">
                    <li class="active"><a href="/${site.theme}/web"">首页</a></li>
                    <li><a href="/${site.theme}/web/product">产品及服务</a></li>
                    <li><a href="/${site.theme}/web/companyInfo">企业相关</a></li>
                    <li><a href="/${site.theme}/web/recruitment">招聘信息</a></li>
                    <li><a href="/${site.theme}/web/contact">联系我们</a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>

    <section class="row slider">
        <div class="owl-carousel home_slider owl-theme" style="margin-top:-10px">
            <div class="item">
                <img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/slider/banner1.jpg" alt="">
            </div>
            <div class="item">
                <img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/slider/banner2.jpg" alt="">
            </div>
            <div class="item">
                <img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/slider/banner3.jpg" alt="">
            </div>
            <div class="item">
                <img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/slider/banner4.jpg" alt="">
            </div>
        </div>
    </section>

    <section class="row why_choose">
        <div class="container">
            <div class="row sectionTitle">
                <h2>公司简介</h2>
            </div>
            <div class="row">
            	<c:forEach items="${companySynopsis}" var="companySynopsis" varStatus="statusCompanySynopsis" >
	            	<div class="col-sm-4 cause2choose">
	                    <div class="media">
	                        <div class="media-left"><a href="#"><img src="${companySynopsis.icon}" alt=""></a></div>
	                        <div class="media-body">
	                            <h4>${companySynopsis.title}</h4>
	                            <p>${companySynopsis.content}</p>
	                        </div>
	                    </div>
	                </div>
            	</c:forEach>
            </div>
        </div>
    </section>

    <section class="row testi_news">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="row sectionTitle text-left">
                        <h3>公司动态</h3>
                    </div>
                    
                    <div class="testimonial_slider owl-carousel">
	                    <c:forEach items="${companyNews}" var="companyNews" varStatus="statusCompanyNews" >
	                        <div class="item">
	                            <div class="row slide m0">
	                                <div class="fleft client_img"><img src="${companyNews.img}" alt=""></div>
	                                <div class="fleft content">
	                                    <div class="counter">${companyNews.newsNumber}</div>
	                                    <div class="row m0 quote">
	                                        <p>${companyNews.content}</p>
	                                    </div>
	                                    <h5 class="client_name">${companyNews.newsDate}</h5>
	                                </div>
	                            </div>
	                        </div>
	                    </c:forEach>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="row sectionTitle text-left">
                        <h3>行业信息</h3>
                    </div>
                    <div class="latest_news row m0">
                        <c:forEach items="${page.list}" var="article">
                            <div class="post media">
                                <div class="media-left">
                                    <a href="${article.url}"><img src="${article.image}" alt=""></a>
                                </div>
                                <div class="media-body">
                                    <h5><a href="${article.url}">${article.title}</a></h5>
                                    <p>${article.description}</p>
                                    <div class="row m0 timeAgo"><fmt:formatDate value="${article.updateDate}" pattern="yyyy.MM.dd"/></div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <%@include file="/WEB-INF/views/modules/cms/front/themes/gongjin/include/footer.jsp" %>
    
	<script>
	    $(document).ready(function(){
	        $('.home_slider').owlCarousel({
	        	items: 1,
	            autoPlay: 3000,
	            stopOnHover : true
	        });
	        
	        $('.testimonial_slider').owlCarousel({
	        	items: 1,
	            autoPlay: 3000,
	            stopOnHover : true
	        });
	    })
	</script>
</body>
</html>