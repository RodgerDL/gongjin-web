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
                <a class="navbar-brand" href="index.html"><img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/logo.png" alt=""></a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="main_navigation">
                <ul class="nav navbar-nav navbar-right">
                    <li class="active"><a href="index.html">首页</a></li>
                    <li><a href="features.html">产品及服务</a></li>
                    <li class="dropdown">
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
                <h2>为什么选择共进</h2>
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
    
    <section class="row testi_news">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="row sectionTitle text-left">
                        <h3>企业文化</h3>
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
                        <h3>企业新闻</h3>
                    </div>
                    <div class="latest_news row m0">
                        <div class="post media">
                            <div class="media-left">
                                <a href="articleDetail.html"><img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/posts/latest/1.jpg" alt=""></a>
                            </div>
                            <div class="media-body">
                                <h5><a href="articleDetail.html">独家中标上海移动2015年TD-FEMTO终端采购项目</a></h5>
                                <p>2015年5月，在中国移动上海公司实施的“2015年TD-FEMTO终端采购项目”，博威一举夺魁，独家中标。</p>
                                <div class="row m0 timeAgo">2016年12月25日</div>
                            </div>
                        </div>
                        <div class="post media">
                            <div class="media-left">
                                <a href="articleDetail.html"><img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/posts/latest/2.jpg" alt=""></a>
                            </div>
                            <div class="media-body">
                                <h5><a href="articleDetail.html">中标苏州移动TDL&TDS双模企业级FEMTO终端采购项目</a></h5>
                                <p>2015年年初，继苏州移动FEMTO系统企业级AP采购项目中标之后，由苏州移动公开招标的“苏州移动TDL&TDS双模企业级FEMTO终端采购”项目，经过与几家实力雄厚的公司激烈竞标和角逐，我公司再次成功中得该项目，并获得第二名。</p>
                                <div class="row m0 timeAgo">2017年1月10日</div>
                            </div>
                        </div>
                        <div class="post media">
                            <div class="media-left">
                                <a href="articleDetail.html"><img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/posts/latest/3.jpg" alt=""></a>
                            </div>
                            <div class="media-body">
                                <h5><a href="articleDetail.html">厦门移动携手博威实现国内首个4G/3G融合网关部署</a></h5>
                                <p>近日，博威Nanocell网关解决方案助力中国移动厦门公司成功部署国内首个4G/3G Nanocell融合网关商用系统，为移动用户提供更好的移动互联网体验。</p>
                                <div class="row m0 timeAgo">2017年6月7日</div>
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
                        <h4><a href="index.html"><img src="${ctxStatic}/modules/cms/front/themes/gongjin/images/logo.png" alt=""></a></h4>
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
            ${site.copyright}
        </div>
    </footer>

    <%@include file="/WEB-INF/views/modules/cms/front/themes/gongjin/include/footer.jsp" %>

</body>
</html>