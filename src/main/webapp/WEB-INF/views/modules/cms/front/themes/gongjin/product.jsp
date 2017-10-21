<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/themes/gongjin/include/taglib.jsp"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>${site.title} - 产品及服务</title>
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
                    <a class="navbar-brand" href="index.html"><img src="images/logo.png" alt=""></a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="main_navigation">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="index.html">首页</a></li>
                        <li class="active"><a href="features.html">产品及服务</a></li>
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

    <section class="row page_header">
        <div class="container">
            <h3>产品及服务</h3>
            <ol class="breadcrumb">
                <li><a href="index.html">首页</a></li>
                <li class="active">产品及服务</li>
            </ol>
        </div>
    </section>

    <section class="row featureTab">
        <div class="row feature_tab_menu m0">
            <div class="container">
                <div class="row">
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#featureT1" aria-controls="featureT1" role="tab" data-toggle="tab">LTE皮基站</a></li>
                        <li role="presentation"><a href="#featureT2" aria-controls="featureT2" role="tab" data-toggle="tab">LTE飞基站</a></li>
                        <li role="presentation"><a href="#featureT3" aria-controls="featureT3" role="tab" data-toggle="tab">LTE专网模块</a></li>
                        <li role="presentation"><a href="#featureT4" aria-controls="featureT4" role="tab" data-toggle="tab">LTE网关与网管</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="row m0 featureTab_contents">

            <div class="tab-content">

                <div class="tab-pane active" role="tabpanel" id="featureT1">

                    <section class="row slider app-landing-features section-padding">
                        <div class="owl-carousel home_slider">
                            <div class="item container owl-slide">
                                <div class="row section-title">
                                    <div class="col col-lg-8 col-lg-offset-2">
                                        <h2>LTE室内型双载波皮基站</h2>
                                        <p>HN1830 TD-SCDMA/TD-LTE双模家用基站，针对于覆盖和容量较弱的家庭覆盖场景，如公寓，别墅，老房子等，利用已有宽带连接，使用双模飞基站进行室内3G/4G信号的精确覆盖和容量提升。</p>
                                    </div>
                                </div> <!-- end section-title -->

                                <div class="row content">
                                    <div class="col col-md-4 left-col">
                                        <div class="feature">
                                            <div class="details">
                                                <h3>工作频段</h3>
                                                <p>1.6MHz，同时支持1.4MHz载波压缩</p>
                                            </div>
                                        </div>
                                        <div class="feature">
                                            <div class="details">
                                                <h3>容量</h3>
                                                <p>支持32个并发数据或者VOLTE用户</p>
                                            </div>
                                        </div>
                                        <div class="feature">
                                            <div class="details">
                                                <h3>性能</h3>
                                                <p>最大输出功率: 100mW（双流） </p>
                                            </div>
                                        </div>
                                    </div> <!-- end col -->

                                    <div class="col col-md-4 col-md-offset-4 right-col">
                                        <div class="feature">

                                            <div class="details">
                                                <h3>WIFI</h3>
                                                <p style="height: 56px;">Wi-Fi最大输出功率: 20dBm</p>
                                            </div>
                                        </div>

                                        <div class="feature">
                                            <div class="details">
                                                <h3>尺寸</h3>
                                                <p>173（长）X131（宽）X35（高）mm（不含外置天线高度）</p>
                                            </div>
                                        </div>

                                        <div class="feature">
                                            <div class="details">
                                                <h3>接口</h3>
                                                <p>ANT×2（LTE MIMO）</p>
                                            </div>
                                        </div>
                                    </div>
                                </div> <!-- end row -->
                                <div class="row section-title">

                                </div>
                                <div class="row section-title">
                                    <a href="#" class="btn btn-primary">文档下载</a>
                                    <a href="#" class="btn btn-primary">视频下载</a>
                                </div>
                            </div>
                            <div class="item container owl-slide">
                                <div class="row section-title">
                                    <div class="col col-lg-8 col-lg-offset-2">
                                        <h2>LTE室外型双载波皮基站</h2>
                                        <p>HN1830 TD-SCDMA/TD-LTE双模家用基站，针对于覆盖和容量较弱的家庭覆盖场景，如公寓，别墅，老房子等，利用已有宽带连接，使用双模飞基站进行室内3G/4G信号的精确覆盖和容量提升。</p>
                                    </div>
                                </div> <!-- end section-title -->

                                <div class="row content">
                                    <div class="col col-md-4 left-col">
                                        <div class="feature">
                                            <div class="details">
                                                <h3>工作频段</h3>
                                                <p>1.6MHz，同时支持1.4MHz载波压缩</p>
                                            </div>
                                        </div>
                                        <div class="feature">
                                            <div class="details">
                                                <h3>容量</h3>
                                                <p>支持32个并发数据或者VOLTE用户</p>
                                            </div>
                                        </div>
                                        <div class="feature">
                                            <div class="details">
                                                <h3>性能</h3>
                                                <p>最大输出功率: 100mW（双流） </p>
                                            </div>
                                        </div>
                                    </div> <!-- end col -->

                                    <div class="col col-md-4 col-md-offset-4 right-col">
                                        <div class="feature">

                                            <div class="details">
                                                <h3>WIFI</h3>
                                                <p style="height: 56px;">Wi-Fi最大输出功率: 20dBm</p>
                                            </div>
                                        </div>

                                        <div class="feature">
                                            <div class="details">
                                                <h3>尺寸</h3>
                                                <p>173（长）X131（宽）X35（高）mm（不含外置天线高度）</p>
                                            </div>
                                        </div>

                                        <div class="feature">
                                            <div class="details">
                                                <h3>接口</h3>
                                                <p>ANT×2（LTE MIMO）</p>
                                            </div>
                                        </div>
                                    </div>
                                </div> <!-- end row -->
                                <div class="row section-title">

                                </div>
                                <div class="row section-title">
                                    <a href="#" class="btn btn-primary">文档下载</a>
                                    <a href="#" class="btn btn-primary">视频下载</a>
                                </div>
                            </div>
                        </div>
                    </section>

                </div>
                <div class="tab-pane" role="tabpanel" id="featureT2" >

                    <!-- start app-landing-features -->
                    <section class="app-landing-features section-padding">
                        <div class="container">
                            <div class="row section-title">
                                <div class="col col-lg-8 col-lg-offset-2">
                                    <h2>3G/4G双模飞基站HN1830</h2>
                                    <p>HN1830 TD-SCDMA/TD-LTE双模家用基站，针对于覆盖和容量较弱的家庭覆盖场景，如公寓，别墅，老房子等，利用已有宽带连接，使用双模飞基站进行室内3G/4G信号的精确覆盖和容量提升。</p>
                                </div>
                            </div> <!-- end section-title -->

                            <div class="row content">
                                <div class="col col-md-4 left-col">
                                    <div class="feature">
                                        <div class="details">
                                            <h3>工作频段</h3>
                                            <p>1.6MHz，同时支持1.4MHz载波压缩</p>
                                        </div>
                                    </div>
                                    <div class="feature">
                                        <div class="details">
                                            <h3>容量</h3>
                                            <p>支持32个并发数据或者VOLTE用户</p>
                                        </div>
                                    </div>
                                    <div class="feature">
                                        <div class="details">
                                            <h3>性能</h3>
                                            <p>最大输出功率: 100mW（双流） </p>
                                        </div>
                                    </div>
                                </div> <!-- end col -->

                                <div class="col col-md-4 col-md-offset-4 right-col">
                                    <div class="feature">

                                        <div class="details">
                                            <h3>WIFI</h3>
                                            <p style="height: 56px;">Wi-Fi最大输出功率: 20dBm</p>
                                        </div>
                                    </div>

                                    <div class="feature">
                                        <div class="details">
                                            <h3>尺寸</h3>
                                            <p>173（长）X131（宽）X35（高）mm（不含外置天线高度）</p>
                                        </div>
                                    </div>

                                    <div class="feature">
                                        <div class="details">
                                            <h3>接口</h3>
                                            <p>ANT×2（LTE MIMO）</p>
                                        </div>
                                    </div>
                                </div>
                            </div> <!-- end row -->
                            <div class="row section-title">

                            </div>
                            <div class="row section-title">
                                <a href="#" class="btn btn-primary">文档下载</a>
                                <a href="#" class="btn btn-primary">视频下载</a>
                            </div>

                        </div> <!-- end container -->

                    </section>
                    <!-- end app-landing-features -->

                </div>
                <div class="tab-pane" role="tabpanel" id="featureT3">
                    <!-- start app-landing-features -->
                    <section class="app-landing-features section-padding">
                        <div class="container">
                            <div class="row section-title">
                                <div class="col col-lg-8 col-lg-offset-2">
                                    <h2>LTE专网模块</h2>
                                    <p>HN1830 TD-SCDMA/TD-LTE双模家用基站，针对于覆盖和容量较弱的家庭覆盖场景，如公寓，别墅，老房子等，利用已有宽带连接，使用双模飞基站进行室内3G/4G信号的精确覆盖和容量提升。</p>
                                </div>
                            </div> <!-- end section-title -->

                            <div class="row content">
                                <div class="col col-md-4 left-col">
                                    <div class="feature">
                                        <div class="details">
                                            <h3>工作频段</h3>
                                            <p>1.6MHz，同时支持1.4MHz载波压缩</p>
                                        </div>
                                    </div>
                                    <div class="feature">
                                        <div class="details">
                                            <h3>容量</h3>
                                            <p>支持32个并发数据或者VOLTE用户</p>
                                        </div>
                                    </div>
                                    <div class="feature">
                                        <div class="details">
                                            <h3>性能</h3>
                                            <p>最大输出功率: 100mW（双流） </p>
                                        </div>
                                    </div>
                                </div> <!-- end col -->

                                <div class="col col-md-4 col-md-offset-4 right-col">
                                    <div class="feature">

                                        <div class="details">
                                            <h3>WIFI</h3>
                                            <p style="height: 56px;">Wi-Fi最大输出功率: 20dBm</p>
                                        </div>
                                    </div>

                                    <div class="feature">
                                        <div class="details">
                                            <h3>尺寸</h3>
                                            <p>173（长）X131（宽）X35（高）mm（不含外置天线高度）</p>
                                        </div>
                                    </div>

                                    <div class="feature">
                                        <div class="details">
                                            <h3>接口</h3>
                                            <p>ANT×2（LTE MIMO）</p>
                                        </div>
                                    </div>
                                </div>
                            </div> <!-- end row -->
                            <div class="row section-title">

                            </div>
                            <div class="row section-title">
                                <a href="#" class="btn btn-primary">文档下载</a>
                                <a href="#" class="btn btn-primary">视频下载</a>
                            </div>

                        </div> <!-- end container -->

                    </section>
                    <!-- end app-landing-features -->
                </div>
                <div class="tab-pane" role="tabpanel" id="featureT4">
                    <!-- start app-landing-features -->
                    <section class="app-landing-features section-padding">
                        <div class="container">
                            <div class="row section-title">
                                <div class="col col-lg-8 col-lg-offset-2">
                                    <h2>LTE网关与网管</h2>
                                    <p>HN1830 TD-SCDMA/TD-LTE双模家用基站，针对于覆盖和容量较弱的家庭覆盖场景，如公寓，别墅，老房子等，利用已有宽带连接，使用双模飞基站进行室内3G/4G信号的精确覆盖和容量提升。</p>
                                </div>
                            </div> <!-- end section-title -->

                            <div class="row content">
                                <div class="col col-md-4 left-col">
                                    <div class="feature">
                                        <div class="details">
                                            <h3>工作频段</h3>
                                            <p>1.6MHz，同时支持1.4MHz载波压缩</p>
                                        </div>
                                    </div>
                                    <div class="feature">
                                        <div class="details">
                                            <h3>容量</h3>
                                            <p>支持32个并发数据或者VOLTE用户</p>
                                        </div>
                                    </div>
                                    <div class="feature">
                                        <div class="details">
                                            <h3>性能</h3>
                                            <p>最大输出功率: 100mW（双流） </p>
                                        </div>
                                    </div>
                                </div> <!-- end col -->

                                <div class="col col-md-4 col-md-offset-4 right-col">
                                    <div class="feature">

                                        <div class="details">
                                            <h3>WIFI</h3>
                                            <p style="height: 56px;">Wi-Fi最大输出功率: 20dBm</p>
                                        </div>
                                    </div>

                                    <div class="feature">
                                        <div class="details">
                                            <h3>尺寸</h3>
                                            <p>173（长）X131（宽）X35（高）mm（不含外置天线高度）</p>
                                        </div>
                                    </div>

                                    <div class="feature">
                                        <div class="details">
                                            <h3>接口</h3>
                                            <p>ANT×2（LTE MIMO）</p>
                                        </div>
                                    </div>
                                </div>
                            </div> <!-- end row -->
                            <div class="row section-title">

                            </div>
                            <div class="row section-title">
                                <a href="#" class="btn btn-primary">文档下载</a>
                                <a href="#" class="btn btn-primary">视频下载</a>
                            </div>

                        </div> <!-- end container -->

                    </section>
                    <!-- end app-landing-features -->
                </div>
            </div>
        </div>
    </section>

    <footer class="row">
		<%@include file="/WEB-INF/views/modules/cms/front/themes/gongjin/include/footer.jsp" %>
    </footer>

</body>
</html></html>