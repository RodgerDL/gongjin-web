<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/themes/gongjin/include/taglib.jsp"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>${site.title} - 联系我们</title>
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
                    <li><a href="/${site.theme}/web/companyInfo">企业相关</a></li>
                    <li><a href="/${site.theme}/web/recruitment">招聘信息</a></li>
                    <li class="active"><a href="/${site.theme}/web/contact">联系我们</a></li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
    
    <section class="row page_header">
        <div class="container">
            <h3>联系我们</h3>
            <ol class="breadcrumb">
                <li><a href="/${site.theme}/web">首页</a></li>
                <li class="active">联系我们</li>
            </ol>
        </div>
    </section>
    
    <section class="row contact_content">
        <div class="container">
           
            <div class="row form_row">
                <div class="col-sm-7 form_side">
                    <h2 class="part_number">01/</h2>
                    <h3 class="part_title">取得联系</h3>
                    <h4>请完成表格 发送给我们邮件.</h4>
                    <div class="contactForm row m0">
                        <form action="http://themedesigner.in/demo/hosting-press/contact_process.php" class="row m0" id="contactForm" novalidate="novalidate">
                            <input type="text" class="form-control" placeholder="Name" name="name" id="name">                    
                            <input type="email" class="form-control" placeholder="Email" name="email" id="email">
                            <textarea class="form-control" placeholder="Message" name="message" id="message"></textarea>
                            <input type="submit" value="发送邮件" class="btn btn-primary">                        
                        </form>
                        <div id="success">Your message successfully sent!</div>
                        <div id="error">Sorry, there must be something wrong!! Please try again.</div>
                    </div>
                </div>
                <div class="col-sm-5 detail_address">
                    <h2 class="part_number">02/</h2>
                    <h3 class="part_title">给我们发个信</h3>
                    <h4>这里是联系方式和联系人</h4>
                    <div class="media">
                        <div class="media-left"><i class="fa fa-home"></i></div>
                        <div class="media-body media-middle">
                         	${result[0].address}
                        </div>
                    </div>
                    <div class="media">
                        <div class="media-left"><i class="fa fa-phone"></i></div>
                        <div class="media-body media-middle">
                            ${result[0].phone} <br>
                            ${result[0].fax}
                        </div>
                    </div>
                    <div class="media">
                        <div class="media-left"><i class="fa fa-comments-o"></i></div>
                        <div class="media-body media-middle">
                            <a href="mailto:info@hostpress.com">${result[0].mail}</a>
                            <ul class="nav nav-pills">
                                <li><a href=""><i class="fa fa-facebook"></i></a></li>
                                <li><a href=""><i class="fa fa-twitter"></i></a></li>
                                <li><a href=""><i class="fa fa-linkedin"></i></a></li>
                                <li><a href=""><i class="fa fa-youtube"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <%@include file="/WEB-INF/views/modules/cms/front/themes/gongjin/include/footer.jsp" %>

</body></html>