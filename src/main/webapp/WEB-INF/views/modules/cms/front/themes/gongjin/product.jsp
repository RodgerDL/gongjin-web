<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/themes/gongjin/include/taglib.jsp"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>${site.title} - 产品及服务</title>
    <%@include file="/WEB-INF/views/modules/cms/front/themes/gongjin/include/header.jsp" %>
    
	<style type="text/css">

	
	</style>

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
					<c:forEach items="${product}" var="productKind" varStatus="statusTitle">
						<c:choose>  
						   <c:when test="${statusTitle.first}">
						   	  <li role="presentation" class="active"><a href="#featureT${ statusTitle.count}" onclick="inita()" aria-controls="featureT${ statusTitle.count}" role="tab" data-toggle="tab">${productKind.kd_name}</a></li>
						   </c:when>  
						   <c:otherwise>
						      <li role="presentation"><a href="#featureT${ statusTitle.count}" aria-controls="featureT${ statusTitle.count}" role="tab" data-toggle="tab">${productKind.kd_name}</a></li>
						   </c:otherwise>  
						</c:choose>
					</c:forEach>
                    </ul>
                </div>
            </div>
        </div>

        <div class="row m0 featureTab_contents">

            <div class="tab-content">
            
			<c:forEach items="${product}" var="productKind" varStatus="statusKind">
				<c:choose>  
				   <c:when test="${statusKind.first}">
				   	  <div class="tab-pane active" role="tabpanel" id="featureT${ statusKind.count}">
				   </c:when>  
				   <c:otherwise>
				      <div class="tab-pane" role="tabpanel" id="featureT${ statusKind.count}">
				   </c:otherwise>  
				</c:choose>
				<c:choose>  
				   <c:when test="${product.size() > 1}">
		                    <section class="row slider app-landing-features section-padding">
		                        <div id="owldiv" class="owl-carousel home_slider">

		                        	<c:forEach items="${productKind.productList}" var="product" varStatus="statusProduct" >
		                        		<div class="item container owl-slide">
		                            	<div class="imgcl">
		                            		<img src="../static/modules/cms/front/themes/gongjin/images/app-landing/1.jpg" />
		                            	</div>
		                                <div class="row section-title">
		                                    <div class="col col-lg-8 col-lg-offset-2">
		                                        <h2>${product.pd_name}</h2>
		                                        <p>${product.pd_introduce}</p>
		                                    </div>
		                                </div> <!-- end section-title -->
		
		                                <div class="row content">
		                                    <div class="col col-md-4 left-col">
		                                        <div class="feature">
		                                            <div class="details">
		                                                <h3>${product.pd_title1}</h3>
		                                                <p>${product.pd_intr1}</p>
		                                            </div>
		                                        </div>
		                                        <div class="feature">
		                                            <div class="details">
		                                                <h3>${product.pd_title2}</h3>
		                                                <p>${product.pd_intr2}</p>
		                                            </div>
		                                        </div>
		                                        <div class="feature">
		                                            <div class="details">
		                                                <h3>${product.pd_title3}</h3>
		                                                <p>${product.pd_intr3}</p>
		                                            </div>
		                                        </div>
		                                    </div> <!-- end col -->
		
		                                    <div class="col col-md-4 col-md-offset-4 right-col">
		                                        <div class="feature">
		
		                                            <div class="details">
		                                                <h3>${product.pd_title4}</h3>
		                                                <p>${product.pd_intr4}</p>
		                                            </div>
		                                        </div>
		
		                                        <div class="feature">
		                                            <div class="details">
		                                                <h3>${product.pd_title5}</h3>
		                                                <p>${product.pd_intr5}</p>
		                                            </div>
		                                        </div>
		
		                                        <div class="feature">
		                                            <div class="details">
		                                                <h3>${product.pd_title6}</h3>
		                                                <p>${product.pd_intr6}</p>
		                                            </div>
		                                        </div>
		                                    </div>
		                                </div> <!-- end row -->
		                                <div class="row section-title">
		
		                                </div>
		                                <div class="row section-title">
		                                    <a href="#" class="btn btn-primary">文档下载</a>
                                            <div class="btn btn-primary"><a class="video" href="${product.pd_mv}">视频下载</a></div>
		                                </div>
		                            </div>
		                            </c:forEach>
		                            
		                        </div>
		                    </section>
		
		                </div>
				   </c:when>  
				   <c:otherwise>
				   
				   </c:otherwise>  
				</c:choose>
			</c:forEach>
			
            </div>
        </div>
    </section>

    <footer class="row">
		<%@include file="/WEB-INF/views/modules/cms/front/themes/gongjin/include/footer.jsp" %>
    </footer>
	<script>

	</script>
</body>
</html></html>