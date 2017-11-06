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
                <a class="navbar-brand" href="/${site.theme}/web""><img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/logo.png" alt=""></a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="main_navigation">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="/${site.theme}/web">首页</a></li>
                    <li><a href="/${site.theme}/web/product">产品及服务</a></li>
                    <li class="active"><a href="/${site.theme}/web/companyInfo">企业相关</a></li>
                    <li><a href="/${site.theme}/web/recruitment">招聘信息</a></li>
                    <li><a href="/${site.theme}/web/contact">联系我们</a></li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
    
    <section class="row page_header">
        <div class="container">
            <h3>企业新闻</h3>
            <ol class="breadcrumb">
                <li><a href="/${site.theme}/web"">首页</a></li>
                <li class="active">企业新闻</li>
            </ol>
        </div>
    </section>
    
    <section class="row blog_content">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 single-blog">                    
                    <div class="blog row m0">
                        <div class="row m0 image"><a href="articleDetail.html"><img src="${article.bannerImage}" alt=""></a></div>
                        <ul class="blog_infos nav">
                            <li><a href="#"><i class="fa fa-calendar"></i><fmt:formatDate value="${article.updateDate}" pattern="yyyy.MM.dd"/></a></li>
                        </ul>
                        <h3>${article.title}</h3>
                        <p><c:if test="${not empty article.description}"><div>${article.description}</div></c:if></p>
                        <div>${article.articleData.content}</div>
                    </div>
                    <ul class="pager">
                        <li class="previous">
                            <c:if test="${not empty article.preId}"><a href="${article.preUrl}"><i class="fa fa-long-arrow-left"></i>前一篇</a><br></c:if>
                            <span class="post_title">${article.preTitle}</span>
                        </li>
                        <li class="next">
                            <c:if test="${not empty article.nextId}"><a href="${article.nextUrl}">后一篇<i class="fa fa-lomedia post_authorng-arrow-right"></i></a><br></c:if>
                            <span class="post_title">${article.nextTitle}</span>
                        </li>
                    </ul>
                </div>
                <div class="col-sm-4 sidebar">
                    <div class="row m0 inner">
                        <div class="row m0 recent_posts">
                            <h4>最新文章</h4>
                            <c:forEach items="${page.list}" var="article">
                                <div class="post media">
                                    <div class="media-left">
                                        <a href="${article.url}"><img src="${article.image}" alt=""></a>
                                    </div>
                                    <div class="media-body">
                                        <h5><a href="${article.url}">${article.title}</a></h5>
                                        <div class="row m0 date"><i class="fa fa-calendar"></i><fmt:formatDate value="${article.updateDate}" pattern="yyyy.MM.dd"/></div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <%@include file="/WEB-INF/views/modules/cms/front/themes/gongjin/include/footer.jsp" %>
</body>
</html>