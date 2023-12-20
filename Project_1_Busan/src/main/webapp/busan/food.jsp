<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<!-- This site was created in Webflow. https://www.webflow.com -->
<!-- Last Published: Thu Feb 11 2021 05:20:01 GMT+0000 (Coordinated Universal Time) -->
<html data-wf-domain="toystore-template.webflow.io" data-wf-page="5baf791a7a16ad127cda1ebc" data-wf-site="5badda2935e11303a89a461e">
    <head>
        <link href="../css/style.css" rel="stylesheet" type="text/css"/>
        <link href="https://fonts.googleapis.com" rel="preconnect"/>
        <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin="anonymous"/>
        <script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.26/webfont.js" type="text/javascript"></script>
        <script type="text/javascript">
            WebFont.load({
                google: {
                    families: ["Open Sans:300,300italic,400,400italic,600,600italic,700,700italic,800,800italic", "Varela Round:400"]
                }
            });
        </script>
        <script type="text/javascript">
            !function(o, c) {
                var n = c.documentElement
                  , t = " w-mod-";
                n.className += t + "js",
                ("ontouchstart"in o || o.DocumentTouch && c instanceof DocumentTouch) && (n.className += t + "touch")
            }(window, document);
        </script>
        <link href="https://assets.website-files.com/5badda2935e11303a89a461e/5bd83035e7345f2f22c0bece_favicon.png" rel="shortcut icon" type="image/x-icon"/>
        <link href="https://assets.website-files.com/5badda2935e11303a89a461e/5bd8303816e1ea6c375be6cb_webclip.png" rel="apple-touch-icon"/>
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
            <div style="margin-top:160px">
                <div class="">
                    <div class="search">
                        <div class="">
                            <form id="" name="Search-Form" data-name="Subscribe Form" method="get" class="subscribe-form">
                                <input type="text" class="input subscribe-input w-input" name="email-2" data-name="Email 2" placeholder="검색어를 입력하세요" 
                                id="" required style="width:500px"/>
                                <input type="submit" value="Search" class="button w-button"/>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="section">
                <div class="wrapper">
                    <div class="shop-header">
                        <h3 class="no-margin w-hidden-small w-hidden-tiny">맛집</h3>
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
	  <div class="row">
	    <div class="text-center">
	       <ul class="pagination">
	          <%--
	             <!ENTITY lt "<">
	             <!ENTITY gt ">">
	             => &lt;
	           --%>
	          <c:if test="${startPage>1 }">
			   <li><a href="food.do?page=${startPage-1}">&lt;</a></li>
			  </c:if>
			  <c:forEach var="i" begin="${startPage }" end="${endPage }">
			   <li ${curpage==i?"class=active":"" }><a href="food.do?page=${i}">${i }</a></li>
			  </c:forEach>
			  <c:if test="${endPage<totalpage }">
			   <li><a href="food.do?page=${endPage+1}">&gt;</a></li>
			  </c:if>
			</ul>
	    </div>
	  </div>
        <script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=5badda2935e11303a89a461e" type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script src="https://assets.website-files.com/5badda2935e11303a89a461e/js/webflow.9828d3d6a.js" type="text/javascript"></script>
    </body>
</html>