<%-- 
    Document   : Article
    Created on : 6 févr. 2021, 16:55:22
    Author     : leonl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:includepage="/vue/Header.jsp">
    <jsp:param name="title" value="Home"/>
</jsp:include>


    <nav class="breadcrumb-section">
        <div class="container wrapper">
            <div class="row">
                <div class="col-12">
                    <ol class="breadcrumb bg-transparent m-0 p-0 align-items-center">
                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">KitchenAid Artisan KSM150</li>
                    </ol>
                </div>
            </div>
        </div>
    </nav>
    <!-- bread-crumb2 start -->
    <div class="single-product-wrap">
        <div class="container wrapper">
            <div class="row mb-n10">
                <div class="col-lg-5 mb-10">
                    <div class="product-detail_img vertical-slider_wrap2">
                        <div class="swiper-container pd-vertical_slider2 lightgallery">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <div class="single-img">
                                        <img src="images/products/product2.jpg" alt="Product Image" />
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="single-img">
                                        <img src="images/products/product3.jpg" alt="Product Image" />
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="single-img">
                                        <img src="images/products/product4.jpg" alt="Product Image" />
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="vertical-slider_nav2">
                            <div class="swiper-navination-vertical2 d-none d-md-inline-block">
                                <div class="swiper-button-prev">
                                    <span class="lnr lnr-chevron-up"></span>
                                </div>
                                <div class="swiper-button-next">
                                    <span class="lnr lnr-chevron-down"></span>
                                </div>
                            </div>
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <a href="#?">
                                        <img src="images/products/small/2.jpg" alt="Product Thumnail" /></a>
                                </div>
                                <div class="swiper-slide">
                                    <a href="#?">
                                        <img src="images/products/small/3.jpg" alt="Product Thumnail" /></a>
                                </div>
                                <div class="swiper-slide">
                                    <a href="#?"><img src="images/products/small/4.jpg" alt="Product Thumnail" /></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-7 mb-10">
                    <div class="content">
                        <h3 class="title">KitchenAid Artisan KSM150 Stand Mixer</h3>
                        <p class="reference">Reference: demo_1</p>
                        <a href="#" class="open-comment-form">Write a review</a>
                        <div class="mb-4">
                            <span class="old-price text-decoration-line-through">$87.80</span>
                            <span class="price-lg regular-price d-inline-block mx-1">$82.53</span>
                            <span class="badge bg-success">Save 6%</span>
                        </div>
                        <p class="border-bottom pb-4">
                            Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et
                            mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum
                            ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia
                            Curae; Aenean eleifend ..
                        </p>

                        <h4 class="modal-quantity">Quantity</h4>
                        <div class="product-count style d-flex my-4">
                            <div class="count d-flex">
                                <input type="number" min="1" max="100" step="1" value="1" />
                                <div class="button-group">
                                    <button class="count-btn increment">
                                        <span class="lnr lnr-chevron-up"></span>
                                    </button>
                                    <button class="count-btn decrement">
                                        <span class="lnr lnr-chevron-down"></span>
                                    </button>
                                </div>
                            </div>
                            <div>
                                <button data-bs-toggle="modal" data-bs-target="#add-to-cart" class="btn btn-warning btn-hover-primary text-uppercase">
                                    Add to cart
                                </button>
                            </div>
                        </div>
                        <div>
                            <a href="#">Add to wishlist</a>
                            <a class="mx-2" href="#">My wishlist</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="section-py">
        <div class="container wrapper">
            <div class="row">
                <div class="col-12">
                    <ul class="nav nav-tabs single-product-tab justify-content-center" id="myTab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <a class="nav-link" data-bs-toggle="tab" href="#description" role="tab">Description</a>
                        </li>
                        <li class="nav-item" role="presentation">
                            <a class="nav-link active" data-bs-toggle="tab" href="#productdetails" role="tab">Product Details</a>
                        </li>
                        <li class="nav-item" role="presentation">
                            <a class="nav-link" data-bs-toggle="tab" href="#reviews" role="tab">Reviews</a>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade" id="description" role="tabpanel">
                    <div class="row">
                        <div class="col-12">
                            <div class="single-product-desc">
                                <p>
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit, sed
                                    do eiusmod tempor incididunt ut labore et dolore magna
                                    aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                                    ullamco laboris nisi ut aliquip ex ea commo consequat. Duis
                                    aute irure dolor in reprehend in voluptate velit esse cillum
                                    dolore eu fugiat nulla pariatur. Excepteur sint occaecat
                                    cupidatat non proident, sunt in culpa qui officia deserunt
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade show active" id="productdetails" role="tabpanel">
                    <div class="row">
                        <div class="col-12">
                            <div class="single-product-desc">
                                <div class="product-anotherinfo-wrapper">
                                    <ul>
                                        <li><span>Weight</span> 400 g</li>
                                        <li><span>Dimensions</span>10 x 10 x 15 cm</li>
                                        <li><span>Materials</span> 60% cotton, 40% polyester</li>
                                        <li>
                                            <span>Other Info</span> American heirloom jean shorts
                                            pug seitan letterpress
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="reviews" role="tabpanel">
                    <div class="single-product-desc">
                        <div class="row">
                            <div class="col-lg-7">
                                <div class="review-wrapper">
                                    <div class="single-review">
                                        <div class="review-img">
                                            <img src="images/testimonial/1.png" alt="" />
                                        </div>
                                        <div class="review-content">
                                            <div class="review-top-wrap">
                                                <div class="review-left">
                                                    <div class="review-name">
                                                        <h4>White Lewis</h4>
                                                    </div>
                                                    <div class="rating-product">
                                                        <i class="ion-android-star"></i>
                                                        <i class="ion-android-star"></i>
                                                        <i class="ion-android-star"></i>
                                                        <i class="ion-android-star"></i>
                                                        <i class="ion-android-star"></i>
                                                    </div>
                                                </div>
                                                <div class="review-left">
                                                    <a href="#">Reply</a>
                                                </div>
                                            </div>
                                            <div class="review-bottom">
                                                <p>
                                                    Vestibulum ante ipsum primis aucibus orci
                                                    luctustrices posuere cubilia Curae Suspendisse
                                                    viverra ed viverra. Mauris ullarper euismod
                                                    vehicula. Phasellus quam nisi, congue id nulla.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-review child-review">
                                        <div class="review-img">
                                            <img src="images/testimonial/2.png" alt="" />
                                        </div>
                                        <div class="review-content">
                                            <div class="review-top-wrap">
                                                <div class="review-left">
                                                    <div class="review-name">
                                                        <h4>White Lewis</h4>
                                                    </div>
                                                    <div class="rating-product">
                                                        <i class="ion-android-star"></i>
                                                        <i class="ion-android-star"></i>
                                                        <i class="ion-android-star"></i>
                                                        <i class="ion-android-star"></i>
                                                        <i class="ion-android-star"></i>
                                                    </div>
                                                </div>
                                                <div class="review-left">
                                                    <a href="#">Reply</a>
                                                </div>
                                            </div>
                                            <div class="review-bottom">
                                                <p>
                                                    Vestibulum ante ipsum primis aucibus orci
                                                    luctustrices posuere cubilia Curae Sus pen disse
                                                    viverra ed viverra. Mauris ullarper euismod
                                                    vehicula.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-5">
                                <div class="ratting-form-wrapper">
                                    <h3>Add a Review</h3>
                                    <div class="ratting-form">
                                        <form action="#">
                                            <div class="star-box">
                                                <span>Your rating:</span>
                                                <div class="rating-product">
                                                    <i class="ion-android-star"></i>
                                                    <i class="ion-android-star"></i>
                                                    <i class="ion-android-star"></i>
                                                    <i class="ion-android-star"></i>
                                                    <i class="ion-android-star"></i>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="rating-form-style mb-10">
                                                        <input placeholder="Name" type="text" />
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="rating-form-style mb-10">
                                                        <input placeholder="Email" type="email" />
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="rating-form-style form-submit">
                                                        <textarea name="Your Review" placeholder="Message"></textarea>
                                                        <button type="submit" class="btn btn-warning btn-hover-primary text-uppercase">
                                                            Submit
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

     <!-- Product tab Start -->
    <section class="section section-pb">
        <div class="container wrapper">
            <div class="row">
                <div class="col-12">
                    <div class="title-section">
                        <!-- title section Start -->
                        <h3 class="title">related products</h3>
                        <!-- title section End -->
                    </div>
                </div>

                <div class="col-12">
                    <div class="product-carousel6">
                        <div class="d-none d-sm-block swiper-navination-arrows">
                            <div class="swiper-button-prev">
                                <span class="ion-android-arrow-back"></span>
                            </div>
                            <div class="swiper-button-next">
                                <span class="ion-android-arrow-forward"></span>
                            </div>
                        </div>
                        <div class="swiper-container">
                            <div class="swiper-wrapper">
                                <!-- single slide Start -->
                                <div class="swiper-slide">
                                    <div class="product-card">
                                        <a class="thumb" href="single-product.html"><img src="images/products/product1.jpg" alt="img" />
                                            <div class="onsales-badges">
                                                <span class="badge bg-dark">new</span>
                                            </div>
                                        </a>
                                        <div class="product-content">
                                            <a class="product-category" href="#?">Graphic Corner</a>
                                            <h3 class="product-title">
                                                <a href="single-product.html">Scanpan Classic Covered Saute Pan 26cm</a>
                                            </h3>
                                            <span class="price regular-price">$68.30</span>
                                            <button class="product-btn btn btn-warning btn-hover-primary" data-bs-toggle="modal" data-bs-target="#add-to-cart">
                                                Add to cart
                                            </button>
                                        </div>
                                        <!-- actions links start -->
                                        <ul class="actions">
                                            <li class="action-item"><button class="action quick-view" data-bs-toggle="modal" data-bs-target="#quickview"><span class="lnr lnr-magnifier"></span></button></li>
                                            <li class="action-item"><button class="action wishlist" data-bs-toggle="modal" data-bs-target="#addtowishlist"><span class="lnr lnr-heart"></span></button></li>
                                        </ul>
                                        <!-- actions links end -->
                                    </div>
                                </div>
                                <!-- single slide End -->
                                <!-- single slide Start -->
                                <div class="swiper-slide">
                                    <div class="product-card">
                                        <a class="thumb" href="single-product.html"><img src="images/products/product2.jpg" alt="img" />
                                            <div class="onsales-badges">
                                                <span class="badge bg-dark">new</span>
                                            </div>
                                        </a>
                                        <div class="product-content">
                                            <a class="product-category" href="#?">Studio Design</a>
                                            <h3 class="product-title">
                                                <a href="single-product.html">Scanpan Classic Covered Saute Pan</a>
                                            </h3>
                                            <span class="price regular-price">$68.30</span>
                                            <button class="product-btn btn btn-warning btn-hover-primary" data-bs-toggle="modal" data-bs-target="#add-to-cart">
                                                Add to cart
                                            </button>
                                        </div>
                                        <!-- actions links start -->
                                        <ul class="actions">
                                            <li class="action-item"><button class="action quick-view" data-bs-toggle="modal" data-bs-target="#quickview"><span class="lnr lnr-magnifier"></span></button></li>
                                            <li class="action-item"><button class="action wishlist" data-bs-toggle="modal" data-bs-target="#addtowishlist"><span class="lnr lnr-heart"></span></button></li>
                                        </ul>
                                        <!-- actions links end -->
                                    </div>
                                </div>
                                <!-- single slide End -->
                                <!-- single slide Start -->
                                <div class="swiper-slide">
                                    <div class="product-card">
                                        <a class="thumb" href="single-product.html"><img src="images/products/product3.jpg" alt="img" />
                                            <div class="onsales-badges">
                                                <span class="badge bg-dark">new</span>
                                            </div>
                                        </a>
                                        <div class="product-content">
                                            <a class="product-category" href="#?">Studio Design</a>
                                            <h3 class="product-title">
                                                <a href="single-product.html">Leaf & Bean Electric Milk Frother &...</a>
                                            </h3>
                                            <span class="price regular-price">$68.30</span>
                                            <button class="product-btn btn btn-warning btn-hover-primary" data-bs-toggle="modal" data-bs-target="#add-to-cart">
                                                Add to cart
                                            </button>
                                        </div>
                                        <!-- actions links start -->
                                        <ul class="actions">
                                            <li class="action-item"><button class="action quick-view" data-bs-toggle="modal" data-bs-target="#quickview"><span class="lnr lnr-magnifier"></span></button></li>
                                            <li class="action-item"><button class="action wishlist" data-bs-toggle="modal" data-bs-target="#addtowishlist"><span class="lnr lnr-heart"></span></button></li>
                                        </ul>
                                        <!-- actions links end -->
                                    </div>
                                </div>
                                <!-- single slide End -->
                                <!-- single slide Start -->
                                <div class="swiper-slide">
                                    <div class="product-card">
                                        <a class="thumb" href="single-product.html"><img src="images/products/product4.jpg" alt="img" />
                                            <div class="onsales-badges">
                                                <span class="badge bg-dark">new</span>
                                            </div>
                                        </a>
                                        <div class="product-content">
                                            <a class="product-category" href="#?">Studio Design</a>
                                            <h3 class="product-title">
                                                <a href="single-product.html">Leaf & Bean Electric Milk Frother &...</a>
                                            </h3>
                                            <span class="price regular-price">$68.30</span>
                                            <button class="product-btn btn btn-warning btn-hover-primary" data-bs-toggle="modal" data-bs-target="#add-to-cart">
                                                Add to cart
                                            </button>
                                        </div>
                                        <!-- actions links start -->
                                        <ul class="actions">
                                            <li class="action-item"><button class="action quick-view" data-bs-toggle="modal" data-bs-target="#quickview"><span class="lnr lnr-magnifier"></span></button></li>
                                            <li class="action-item"><button class="action wishlist" data-bs-toggle="modal" data-bs-target="#addtowishlist"><span class="lnr lnr-heart"></span></button></li>
                                        </ul>
                                        <!-- actions links end -->
                                    </div>
                                </div>
                                <!-- single slide End -->
                                <!-- single slide Start -->
                                <div class="swiper-slide">
                                    <div class="product-card">
                                        <a class="thumb" href="single-product.html"><img src="images/products/product5.jpg" alt="img" />
                                            <div class="onsales-badges">
                                                <span class="badge bg-dark">new</span>
                                            </div>
                                        </a>
                                        <div class="product-content">
                                            <a class="product-category" href="#?">Studio Design</a>
                                            <h3 class="product-title">
                                                <a href="single-product.html">Le Creuset Signature Cast Iron Round...</a>
                                            </h3>
                                            <span class="price regular-price">$68.30</span>
                                            <button class="product-btn btn btn-warning btn-hover-primary" data-bs-toggle="modal" data-bs-target="#add-to-cart">
                                                Add to cart
                                            </button>
                                        </div>
                                        <!-- actions links start -->
                                        <ul class="actions">
                                            <li class="action-item"><button class="action quick-view" data-bs-toggle="modal" data-bs-target="#quickview"><span class="lnr lnr-magnifier"></span></button></li>
                                            <li class="action-item"><button class="action wishlist" data-bs-toggle="modal" data-bs-target="#addtowishlist"><span class="lnr lnr-heart"></span></button></li>
                                        </ul>
                                        <!-- actions links end -->
                                    </div>
                                </div>
                                <!-- single slide End -->
                                <!-- single slide Start -->
                                <div class="swiper-slide">
                                    <div class="product-card">
                                        <a class="thumb" href="single-product.html"><img src="images/products/product6.jpg" alt="img" />
                                            <div class="onsales-badges">
                                                <span class="badge bg-dark">new</span>
                                            </div>
                                        </a>
                                        <div class="product-content">
                                            <a class="product-category" href="#?">Studio Design</a>
                                            <h3 class="product-title">
                                                <a href="single-product.html">KitchenAid Artisan KSM160 Stand Mixer</a>
                                            </h3>
                                            <span class="price regular-price">$68.30</span>
                                            <button class="product-btn btn btn-warning btn-hover-primary" data-bs-toggle="modal" data-bs-target="#add-to-cart">
                                                Add to cart
                                            </button>
                                        </div>
                                        <!-- actions links start -->
                                        <ul class="actions">
                                            <li class="action-item"><button class="action quick-view" data-bs-toggle="modal" data-bs-target="#quickview"><span class="lnr lnr-magnifier"></span></button></li>
                                            <li class="action-item"><button class="action wishlist" data-bs-toggle="modal" data-bs-target="#addtowishlist"><span class="lnr lnr-heart"></span></button></li>
                                        </ul>
                                        <!-- actions links end -->
                                    </div>
                                </div>
                                <!-- single slide End -->
                                <!-- single slide Start -->
                                <div class="swiper-slide">
                                    <div class="product-card">
                                        <a class="thumb" href="single-product.html"><img src="images/products/product7.jpg" alt="img" />
                                            <div class="onsales-badges">
                                                <span class="badge bg-dark">new</span>
                                            </div>
                                        </a>
                                        <div class="product-content">
                                            <a class="product-category" href="#?">Studio Design</a>
                                            <h3 class="product-title">
                                                <a href="single-product.html">KitchenAid Artisan KSM150 Stand Mixer</a>
                                            </h3>
                                            <span class="price regular-price">$68.30</span>
                                            <button class="product-btn btn btn-warning btn-hover-primary" data-bs-toggle="modal" data-bs-target="#add-to-cart">
                                                Add to cart
                                            </button>
                                        </div>
                                        <!-- actions links start -->
                                        <ul class="actions">
                                            <li class="action-item"><button class="action quick-view" data-bs-toggle="modal" data-bs-target="#quickview"><span class="lnr lnr-magnifier"></span></button></li>
                                            <li class="action-item"><button class="action wishlist" data-bs-toggle="modal" data-bs-target="#addtowishlist"><span class="lnr lnr-heart"></span></button></li>
                                        </ul>
                                        <!-- actions links end -->
                                    </div>
                                </div>
                                <!-- single slide End -->
                                <!-- single slide Start -->
                                <div class="swiper-slide">
                                    <div class="product-card">
                                        <a class="thumb" href="single-product.html"><img src="images/products/product8.jpg" alt="img" />
                                            <div class="onsales-badges">
                                                <span class="badge bg-dark">new</span>
                                            </div>
                                        </a>
                                        <div class="product-content">
                                            <a class="product-category" href="#?">Studio Design</a>
                                            <h3 class="product-title">
                                                <a href="single-product.html">KitchenAid Artisan KSM153 Stand Mixer</a>
                                            </h3>
                                            <span class="price regular-price">$68.30</span>
                                            <button class="product-btn btn btn-warning btn-hover-primary" data-bs-toggle="modal" data-bs-target="#add-to-cart">
                                                Add to cart
                                            </button>
                                        </div>
                                        <!-- actions links start -->
                                        <ul class="actions">
                                            <li class="action-item"><button class="action quick-view" data-bs-toggle="modal" data-bs-target="#quickview"><span class="lnr lnr-magnifier"></span></button></li>
                                            <li class="action-item"><button class="action wishlist" data-bs-toggle="modal" data-bs-target="#addtowishlist"><span class="lnr lnr-heart"></span></button></li>
                                        </ul>
                                        <!-- actions links end -->
                                    </div>
                                </div>
                                <!-- single slide End -->
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product tab End -->
        
        
<%@ include file="/vue/Footer.jsp"%>
