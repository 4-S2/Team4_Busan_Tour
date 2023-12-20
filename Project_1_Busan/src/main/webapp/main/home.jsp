<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   
<!-- 메인 비주얼 -->
<section id="mainVisual" class="section hero-section">
    <div class="container">
        <!-- 추천 명소 -->
        <!-- Swiper -->
        <div class="swiper tourSlide">
            <div class="swiper-wrapper">
                <div class="swiper-slide slide1">부산 명소1</div>
                <div class="swiper-slide slide2">Slide 2</div>
                <div class="swiper-slide slide3">Slide 3</div>
            </div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
            <div class="tour swiper-pagination"></div>
        </div>

        <!-- 현재 날씨 배너 -->
        <!-- <div class="weather">
            <h3>현재 날씨</h3>
        </div> -->
    </div>
</section>

<!-- 추천 맛집 / 특산물 쇼핑-->
<section id="food-shop" class="section haze">
    <div class="container flex">
        <div class="food">
            <h3 class="no-margin">추천 맛집</h3>
            <!-- <div class="shop-header">
                <a href="/catalog" class="link arrow-link">See All Toys</a>
                <div class="shop-header-line">
                    <div class="shop-header-color"></div>
                </div>
            </div> -->
            <div class="full-width w-dyn-list">
                <div role="list" class="products w-dyn-items">
                <c:forEach var="vo" items="${fdtoplist }" varStatus="f">              
               <div data-w-id="86c7c915-bcbe-c30c-93c0-5bed50ef155d" style="opacity:0" role="listitem" class="product-card-wrapper w-dyn-item">
                        <a href="../busan/food_detail.do?no=${vo.no}" class="product-card w-inline-block">
                            <div class="product-card-image-wrapper">
                                <img alt="" src="${vo.poster }"/>
                            </div>
                            <h6 class="product-card-heading">${vo.title }</h6>
                            <div data-wf-sku-bindings="%5B%7B%22from%22%3A%22f_price_%22%2C%22to%22%3A%22innerHTML%22%7D%5D" class="product-card-price">$ 30.00 USD</div>
                        </a>
                    </div> 
                    </c:forEach>
                </div>
            </div>
        </div>

        <!-- 특산물 쇼핑 -->
        <div class="shop">
            <h3 class="no-margin">특산물 쇼핑</h3>
            <!-- Swiper -->
            <div class="swiper shopSlide">
                <div class="swiper-wrapper">
                    <div class="swiper-slide slide1">특산물 1</div>
                    <div class="swiper-slide slide2">Slide 2</div>
                    <div class="swiper-slide slide3">Slide 3</div>
                </div>
                <!-- <div class="shop swiper-pagination"></div> -->
            </div>
        </div>
    </div>
</section>

<!-- 추천 축제 / 체험 -->
<section id="activity" class="section haze">
    <!-- id="Scroll-Section" -->
    <div class="container flex">
        <!-- 축제 목록 -->
        <div data-w-id="79f09a57-05ab-ed81-c059-4d50244b2341" style="opacity:0" class="home-category-card festival">
            <!-- <img src="https://assets.website-files.com/5badda2935e11303a89a461e/5badf21356ac5470c84dfbf4_33903-2-plush-toy-transparent-image-min.png" srcset="https://assets.website-files.com/5badda2935e11303a89a461e/5badf21356ac5470c84dfbf4_33903-2-plush-toy-transparent-image-min-p-500.png 500w, https://assets.website-files.com/5badda2935e11303a89a461e/5badf21356ac5470c84dfbf4_33903-2-plush-toy-transparent-image-min.png 1200w" sizes="(max-width: 479px) 64vw, (max-width: 991px) 176px, 220px" alt="" class="home-category-image-1"/> -->
            <div class="home-category-info-1">
                <h3>추천 축제</h3>
                <a href="/catalog" class="button small white w-button">Button</a>
            </div>
        </div>

        <!-- 체험 목록 -->
        <div data-w-id="b498480a-a03d-afff-8227-912980ab2a0a" style="opacity:0" class="home-category-card red experience">
            <!-- <img src="https://assets.website-files.com/5badda2935e11303a89a461e/5badf2131f2da24c02171c72_33727-9-wooden-toy-transparent-image-min.png" srcset="https://assets.website-files.com/5badda2935e11303a89a461e/5badf2131f2da24c02171c72_33727-9-wooden-toy-transparent-image-min-p-500.png 500w, https://assets.website-files.com/5badda2935e11303a89a461e/5badf2131f2da24c02171c72_33727-9-wooden-toy-transparent-image-min.png 1200w" sizes="(max-width: 479px) 60vw, (max-width: 991px) 176px, 220px" alt="" class="home-category-image-2"/> -->
            <div class="home-category-info-2">
                <h3>추천 체험</h3>
                <a href="/catalog" class="button small white w-button">Button</a>
            </div>
        </div>
        <!-- <div class="home-categories">
            
        </div> -->
    </div>
</section>

<!-- 추천 전시 -->
<section id="exhibition" class="section haze">
    <div class="container">
        <div class="shop-header">
            <h3 class="no-margin">추천 전시</h3>
            <a href="/catalog" class="link arrow-link">전체보기</a>
            <!-- <div class="shop-header-line">
                <div class="shop-header-color"></div>
            </div> -->
        </div>
        <div class="full-width w-dyn-list">
            <div role="list" class="products w-dyn-items">
                <c:forEach var="vo" items="${exToplist }">
                <div data-w-id="a677a252-157c-7121-064d-fe101c861b40" style="opacity:0" role="listitem" class="product-card-wrapper w-dyn-item">
                    <a href="/product/happy-flower" class="product-card w-inline-block">
                        <div class="product-card-image-wrapper">
                            <img alt="" src="${vo.poster }" data-wf-sku-bindings="%5B%7B%22from%22%3A%22f_main_image_4dr%22%2C%22to%22%3A%22src%22%7D%5D" sizes="100vw" srcset=""/>
                        </div>
                        <p>
                        <br>
                        <h6 class="product-card-heading">${vo.ename }</h6>
                        <div class="product-card-price">${vo.s_date}~${vo.e_date}</div>
                    </a>
                </div>
                </c:forEach>
        </div>
    </div>
</section>

<!-- 공지사항, 문의하기, 고객센터 -->
<section id="bottom" class="section no-padding-vertical">
    <div class="container flex">
        <div class="subscribe-info notice con-box">
            <h4>공지사항</h4>
        </div>
        <div class="subscribe-info inquiry con-box">
            <h4>묻고 답하기</h4>
        </div>
        <div class="subscribe-info service con-box">
            <h4>고객센터</h4>
        </div>
    </div>
</section>

<!-- 쿠키 -->
<!-- <div class="section haze">
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