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
                    <li class="active"><a href="/${site.theme}/web">首页</a></li>
                    <li><a href="features.html">产品及服务</a></li>
                    <li><a href="firmInfo.html">企业相关</a></li>
                    <li><a href="/${site.theme}/web/recruitment">招聘信息</a></li>
                    <li><a href="contact.html">联系我们</a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>

    <section class="row slider">
        <div class="owl-carousel home_slider">
            <!--<div class="item">-->
                <!--<img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/slider/banner4.jpg" alt="">-->
            <!--</div>-->
            <div class="item">
                <img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/slider/banner1.jpg" alt="">
            </div>
            <div class="item">
                <img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/slider/banner2.jpg" alt="">
            </div>
            <div class="item">
                <img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/slider/banner3.jpg" alt="">
            </div>
        </div>
    </section>

    <section class="row why_choose">
        <div class="container">
            <div class="row sectionTitle">
                <h2>公司简介</h2>
            </div>
            <div class="row">
                <div class="col-sm-4 cause2choose">
                    <div class="media">
                        <div class="media-left"><a href="#"><img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/icons/cause2choose/1.png" alt=""></a></div>
                        <div class="media-body">
                            <h4>共进</h4>
                            <p>深圳市共进电子股份有限公司自1998年创始，以 “发展企业，培养人才，回馈社会”为宗旨，拥有“T&W”商标。</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 cause2choose">
                    <div class="media">
                        <div class="media-left"><a href="#"><img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/icons/cause2choose/2.png" alt=""></a></div>
                        <div class="media-body">
                            <h4>管理</h4>
                            <p>公司历年来追求管理与国际接轨，现已通过和导入质量、环境、职业健康安全和社会责任等一系列管理体系。</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 cause2choose">
                    <div class="media">
                        <div class="media-left"><a href="#"><img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/icons/cause2choose/3.png" alt=""></a></div>
                        <div class="media-body">
                            <h4>产品及服务</h4>
                            <p>LTE飞基站/LTE皮基站/LTE室内型双载波皮基站LTE室外型双载波皮基站</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 cause2choose">
                    <div class="media">
                        <div class="media-left"><a href="#"><img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/icons/cause2choose/4.png" alt=""></a></div>
                        <div class="media-body">
                            <h4>社会责任</h4>
                            <p>从生态设计、温室气体管理、供应链管理、CSR等方面执行可持续性发展，贯穿于产品全生命周期</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 cause2choose">
                    <div class="media">
                        <div class="media-left"><a href="#"><img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/icons/cause2choose/5.png" alt=""></a></div>
                        <div class="media-body">
                            <h4>技术</h4>
                            <p>新兴的Small Cell技术既可以做到精确的覆盖，又可以最大限度的满足客户的无线资源需求，提升容量。</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 cause2choose">
                    <div class="media">
                        <div class="media-left"><a href="#"><img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/icons/cause2choose/6.png" alt=""></a></div>
                        <div class="media-body">
                            <h4>加入共进</h4>
                            <p>共进强调员工在企业中发展空间大，共进助员工梦想照进现实，选择共进，选择未来！</p>
                        </div>
                    </div>
                </div>
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
                        <div class="item">
                            <div class="row slide m0">
                                <div class="fleft client_img"><img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/testimonial/1.png" alt=""></div>
                                <div class="fleft content">
                                    <div class="counter">01</div>
                                    <div class="row m0 quote">
                                        <p>企业文化 - 尊重人才，团队协作，拼搏进取。</p>
                                    </div>
                                    <h5 class="client_name">共进</h5>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="row slide slide2 m0">
                                <div class="fleft client_img"><img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/testimonial/2.png" alt=""></div>
                                <div class="fleft content">
                                    <div class="counter">02</div>
                                    <div class="row m0 quote">
                                        <p>企业宗旨 - 发展企业，培养人才，回馈社会。</p>
                                    </div>
                                    <h5 class="client_name">共进</h5>
                                </div>
                            </div>
                        </div>
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

</body>
</html>