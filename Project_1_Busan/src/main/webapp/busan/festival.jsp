<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html data-wf-page="5baf791a7a16ad127cda1ebc" data-wf-site="5badda2935e11303a89a461e">
    <head>
        <meta charset="utf-8"/>
        <meta content="width=device-width, initial-scale=1" name="viewport"/>
        <title>Busan Tour</title>
        <link href="../css/style.css" rel="stylesheet" type="text/css"/> 
        <script type="text/javascript">
            !function(o, c) {
                var n = c.documentElement
                  , t = " w-mod-";
                n.className += t + "js",
                ("ontouchstart"in o || o.DocumentTouch && c instanceof DocumentTouch) && (n.className += t + "touch")
            }(window, document);
        </script>
       <!--  <link href="https://assets.website-files.com/5badda2935e11303a89a461e/5bd83035e7345f2f22c0bece_favicon.png" rel="shortcut icon" type="image/x-icon"/>
        <link href="https://assets.website-files.com/5badda2935e11303a89a461e/5bd8303816e1ea6c375be6cb_webclip.png" rel="apple-touch-icon"/> -->
        <script type="text/javascript">
            window.__WEBFLOW_CURRENCY_SETTINGS = {
                "currencyCode": "USD",
                "$init": true,
                "symbol": "$",
                "decimal": ".",
                "fractionDigits": 2,
                "group": ",",
                "template": "{{wf {\"path\":\"symbol\",\"type\":\"PlainText\"} }} {{wf {\"path\":\"amount\",\"type\":\"CommercePrice\"} }} {{wf {\"path\":\"currencyCode\",\"type\":\"PlainText\"} }}",
                "hideDecimalForWholeNumbers": false
            };
        </script>
    </head>
    
    <body>
        <!-- <div class="preloader">
            <div class="loading-icon">
                <img src="https://assets.website-files.com/5badda2935e11303a89a461e/5bc1931d898dce4c7abcd74f_preloader.gif" alt="" class="preloader-icon"/>
            </div>
        </div> -->
        <div class="page-wrapper">
            <div class="section no-padding-vertical">
                <div class="wrapper side-paddings">
                    <div class="breadcrumbs">
                        <a href="/" class="link-grey">Home</a>
                        <img src="https://assets.website-files.com/5badda2935e11303a89a461e/5baf79eb570913b9781a96f2_arrow-right-mini-icon.svg" alt="" class="breadcrumbs-arrow"/>
                        <div>Catalog</div>
                    </div>
                </div>
            </div>
            <div class="section">
                <div class="wrapper">
                    <div class="shop-header">
                        <h3 class="no-margin w-hidden-small w-hidden-tiny">축제</h3>
                        <div class="shop-categories-wrapper">
                            <a href="/catalog" aria-current="page" class="shop-category-link w--current">최신순</a>
                            <div class="w-dyn-list">
                                <div role="list" class="shop-categories w-dyn-items">
                                    <div role="listitem" class="w-dyn-item">
                                        <a href="/category/wooden-toys" class="shop-category-link">조회순</a>
                                    </div>
                                    <div role="listitem" class="w-dyn-item">
                                        <a href="/category/stuffed-animals" class="shop-category-link">좋아요순</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="shop-header-line">
                            <div class="shop-header-color green w-hidden-small w-hidden-tiny"></div>
                        </div>
                    </div>
<!--    <div class="row">
     <c:forEach var="vo" items="${list }">
       <div class="col-md-4">
	    <div class="thumbnail">
	      <a href="#">
	        <img src="${vo.poster }" style="width:310px;height: 200px">
	        <div class="caption">
	          <p>${vo.title }</p>
	        </div>
	      </a>
	    </div>
	  </div>
     </c:forEach>
    </div> -->
                    <div class="full-width w-dyn-list">
                        <div role="list" class="products w-dyn-items">
                        
                          <c:forEach var="vo" items="${list }">
                          <div class="col-md-3">
                           <!-- <div role="listitem" class="product-card-wrapper w-dyn-item"> -->
                                <a href="#" class="product-card w-inline-block">
                                    <div class="product-card-image-wrapper">
                                        <img src="${vo.poster }" sizes="(max-width: 479px) 73vw, (max-width: 767px) 34vw, (max-width: 991px) 33vw, 12vw" />
                                    </div>
                                    <h6 class="product-card-heading">${vo.title }</h6>
                                    <div data-wf-sku-bindings="%5B%7B%22from%22%3A%22f_price_%22%2C%22to%22%3A%22innerHTML%22%7D%5D" class="product-card-price">$ 30.00 USD</div>
                                </a>
                            </div>
                          </c:forEach>
                          
                        </div>
                    </div>
                </div>
            </div>
<%--     <div class=row>
      <div class="text-center">
       <a href="../busan/festival.do?page=${curpage>1?curpage-1:curpage }" class="btn btn-sm btn-danger">이전</a>
       ${curpage } page / ${totalpage } pages
       <a href="../busan/festival.do?page=${curpage<totalpage?curpage+1:curpage }" class="btn btn-sm btn-danger">다음</a>
      </div>
    </div> --%>
	  <div class="row">
	    <div class="text-center">
	       <ul class="pagination">
	          <%--
	             <!ENTITY lt "<">
	             <!ENTITY gt ">">
	             => &lt;
	           --%>
	          <c:if test="${startPage>1 }">
			   <li><a href="festival.do?page=${startPage-1}">&lt;</a></li>
			  </c:if>
			  <c:forEach var="i" begin="${startPage }" end="${endPage }">
			   <li ${curpage==i?"class=active":"" }><a href="festival.do?page=${i}">${i }</a></li>
			  </c:forEach>
			  <c:if test="${endPage<totalpage }">
			   <li><a href="festival.do?page=${endPage+1}">&gt;</a></li>
			  </c:if>
			</ul>
	    </div>
	  </div>
	  
            <!-- <div class="section no-padding-vertical">
                <div class="wrapper side-paddings">
                    <div data-w-id="e89551e9-b5ae-51a6-c418-02c90497790c" class="subscribe">
                        <div class="subscribe-info">
                            <div class="subscribe-icon">
                                <img src="https://assets.website-files.com/5badda2935e11303a89a461e/5baf56dcace69cfd39b34f7a_paperplane-icon-white.svg" alt=""/>
                            </div>
                            <h4>
                                Subscribe to our newsletter<br/>
                                &amp;get <span class="text-green">10% discount!</span>
                            </h4>
                        </div>
                        <div class="subscribe-form-wrapper w-form">
                            <form id="wf-form-Subscribe-Form" name="wf-form-Subscribe-Form" data-name="Subscribe Form" method="get" class="subscribe-form" data-wf-page-id="5baf791a7a16ad127cda1ebc" data-wf-element-id="e89551e9-b5ae-51a6-c418-02c904977917">
                                <input type="email" class="input subscribe-input w-input" maxlength="256" name="email-2" data-name="Email 2" placeholder="Enter your email address" id="email-2" required=""/>
                                <input type="submit" value="Subscribe" data-wait="Please wait..." class="button w-button"/>
                            </form>
                            <div class="form-success w-form-done">
                                <div>Thank you! Your submission has been received!</div>
                            </div>
                            <div class="form-error w-form-fail">
                                <div>Oops! Something went wrong while submitting the form.</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="section">
                <div class="wrapper">
                    <div class="intro">
                        <div class="title">@ElasticThemes</div>
                        <h2 class="no-margin-bottom">We &#x27;re on Instagram!</h2>
                    </div>
                    <div data-w-id="6e1d3527-5090-7380-17f7-30bf0f5a58b4" class="instagram">
                        <a href="https://instagram.com" target="_blank" class="instagram-link w-inline-block">
                            <img src="https://assets.website-files.com/5badda2935e11303a89a461e/5badecf79395558fbeb88a49_instagram-01.jpg" alt="" class="full-width"/>
                        </a>
                        <a href="https://instagram.com" target="_blank" class="instagram-link w-inline-block">
                            <img src="https://assets.website-files.com/5badda2935e11303a89a461e/5badecf735e113f8679a57e6_instagram-02.jpg" alt="" class="full-width"/>
                        </a>
                        <a href="https://instagram.com" target="_blank" class="instagram-link w-inline-block">
                            <img src="https://assets.website-files.com/5badda2935e11303a89a461e/5badecf735e11327b99a57e7_instagram-03.jpg" alt="" class="full-width"/>
                        </a>
                        <a href="https://instagram.com" target="_blank" class="instagram-link w-inline-block">
                            <img src="https://assets.website-files.com/5badda2935e11303a89a461e/5badecf7939555df08b88a48_instagram-04.jpg" alt="" class="full-width"/>
                        </a>
                        <a href="https://instagram.com" target="_blank" class="instagram-link w-inline-block">
                            <img src="https://assets.website-files.com/5badda2935e11303a89a461e/5badecf7939555514eb88a4a_instagram-05.jpg" alt="" class="full-width"/>
                        </a>
                        <a href="https://instagram.com" target="_blank" class="instagram-link w-inline-block">
                            <img src="https://assets.website-files.com/5badda2935e11303a89a461e/5badecf71f2da2228d17155f_instagram-06.jpg" alt="" class="full-width"/>
                        </a>
                    </div>
                    <a href="https://instagram.com" target="_blank" class="button w-button">See More Photos</a>
                </div>
            </div> -->
            
        </div>
        <script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=5badda2935e11303a89a461e" type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script src="https://assets.website-files.com/5badda2935e11303a89a461e/js/webflow.9828d3d6a.js" type="text/javascript"></script>
    </body>
</html>