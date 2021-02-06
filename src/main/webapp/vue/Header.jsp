<%-- 
    Document   : Header
    Created on : 6 févr. 2021, 15:45:26
    Author     : leonl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
﻿<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Benito - Mega Store Responsive Bootstrap 5 Template</title>
    <!-- Favicon -->
    

    <link rel="stylesheet" href="css/vendor/ionicons.css" />
    <link rel="stylesheet" href="css/vendor/linearicons-free.css" />
    <link rel="stylesheet" href="css/vendor/font-awesome.css" />
    <link rel="stylesheet" href="css/plugins/animate.min.css" />
    <link rel="stylesheet" href="css/plugins/swiper-bundle.min.css" />
    <link rel="stylesheet" href="css/style.css" />

    <!-- Use the minified version files listed below for better performance and remove the files listed above -->

    <!--  Minified  css  -->

    <!--  # vendor min css,plugins min css,style min css -->

    <!-- <link rel="stylesheet" href="assets/css/vendor/vendor.min.css" />
<link rel="stylesheet" href="assets/css/plugins/plugins.min.css" />
<link rel="stylesheet" href="assets/css/style.min.css" /> -->

</head>

<body>
    <!-- Modal -->
    <div class="modal fade offcanvas-modal" id="exampleModal">
        <div class="modal-dialog offcanvas-dialog">
            <div class="modal-content">
                <div class="modal-header offcanvas-header">
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>

                <form action="#" class="offcanvas-form">
                    <div class="input-group border">
                        <div class="input-group-text">
                            <select class="form-select d-none d-xl-block" aria-label="Default select example">
                                <option selected="">All categories</option>
                                <option value="1">One</option>
                                <option value="2">Two</option>
                                <option value="3">Three</option>
                            </select>
                        </div>
                        <input type="text" class="form-control border-0" placeholder="Enter your search key ... " />
                        <div class="input-group-text">
                            <button class="btn-search btn btn-hover-primary" type="submit">
                                Search
                            </button>
                        </div>
                    </div>
                </form>

                <!-- offcanvas-mobile-menu start -->

                <nav id="offcanvasNav" class="offcanvas-menu">
                    <ul>
                        <li>
                            <a href="javascript:void(0)">Home</a>
                            <!-- home sub menu -->
                            <ul>
                                <li><a href="index.html">Home 1</a></li>
                                <li><a href="index-2.html">Home 2</a></li>
                                <li><a href="index-3.html">Home 3</a></li>
                                <li><a href="index-4.html">Home 4</a></li>
                            </ul>
                            <!-- home sub menu end-->
                        </li>
                        <li>
                            <a href="javascript:void(0)">shop</a>

                            <!-- shop mega menu -->

                            <ul>
                                <li>
                                    <a href="#">Shop Grid</a>
                                    <ul>
                                        <li>
                                            <a href="shop-grid-5-column.html">Shop Grid 5 Column</a>
                                        </li>
                                        <li>
                                            <a href="shop-grid-6-column.html">Shop Grid 6 Column</a>
                                        </li>
                                        <li>
                                            <a href="shop-grid-left-sidebar.html">Shop Grid Left Sidebar</a>
                                        </li>
                                        <li>
                                            <a href="shop-grid-right-sidebar.html">Shop Grid Right Sidebar</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">Shop List</a>
                                    <ul>
                                        <li><a href="shop-grid-list.html">Shop List</a></li>
                                        <li>
                                            <a href="shop-grid-list-left-sidebar.html">Shop List Left Sidebar</a>
                                        </li>
                                        <li>
                                            <a href="shop-grid-list-right-sidebar.html">Shop List Right Sidebar</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">Shop Single</a>
                                    <ul>
                                        <li><a href="single-product.html">Shop Single</a></li>
                                        <li>
                                            <a href="single-product-configurable.html">Shop Variable</a>
                                        </li>
                                        <li>
                                            <a href="single-product-affiliate.html">Shop Affiliate</a>
                                        </li>
                                        <li><a href="single-product-group.html">Shop Group</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">other pages</a>
                                    <ul>
                                        <li><a href="about-us.html">About Page</a></li>
                                        <li><a href="cart.html">Cart Page</a></li>
                                        <li><a href="checkout.html">Checkout Page</a></li>
                                        <li><a href="compare.html">Compare Page</a></li>
                                    </ul>
                                </li>
                            </ul>
                            <!-- shop mega menu end-->
                        </li>
                        <li>
                            <a href="javascript:void(0)">pages</a>
                            <!-- pages sub menu -->
                            <ul>
                                <li><a href="about-us.html">About Page</a></li>
                                <li><a href="cart.html">Cart Page</a></li>
                                <li><a href="checkout.html">Checkout Page</a></li>
                                <li><a href="compare.html">Compare Page</a></li>
                                <li><a href="login.html">Login &amp; Register Page</a></li>
                                <li><a href="myaccount.html">Account Page</a></li>
                                <li><a href="wishlist.html">Wishlist Page</a></li>
                            </ul>
                            <!-- pages sub menu end-->
                        </li>
                        <li>
                            <a href="javascript:void(0)">Blog</a>
                            <!-- blog sub menu -->
                            <ul>
                                <li>
                                    <a href="#">Blog Grid</a>
                                    <ul>
                                        <li>
                                            <a href="blog-grid-5-column.html">Blog Grid 5 column</a>
                                        </li>
                                        <li>
                                            <a href="blog-grid-6-column.html">Blog Grid 6 column</a>
                                        </li>
                                        <li>
                                            <a href="blog-grid-left-sidebar.html">Blog Grid Left Sidebar</a>
                                        </li>
                                        <li>
                                            <a href="blog-grid-right-sidebar.html">Blog Grid Right Sidebar</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">Blog List</a>
                                    <ul>
                                        <li>
                                            <a href="blog-list-left-sidebar.html">Blog List Left Sidebar</a>
                                        </li>
                                        <li>
                                            <a href="blog-list-right-sidebar.html">Blog List Right Sidebar</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">Blog details</a>
                                    <ul>
                                        <li>
                                            <a href="blog-details-left-sidebar.html">Blog details Left Sidebar</a>
                                        </li>
                                        <li>
                                            <a href="blog-details-right-sidebar.html">Blog details Right Sidbar</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <!-- blog sub menu end-->
                        </li>
                        <li>
                            <a href="contact.html">Contact</a>
                        </li>
                    </ul>

                    <div class="offcanvas-social">
                        <ul>
                            <li>
                                <a href="#"><i class="ion-social-facebook"></i></a>
                            </li>
                            <li>
                                <a href="#"><i class="ion-social-twitter"></i></a>
                            </li>
                            <li>
                                <a href="#"><i class="ion-social-instagram"></i></a>
                            </li>
                            <li>
                                <a href="#"><i class="ion-social-google"></i></a>
                            </li>
                            <li>
                                <a href="#"><i class="ion-social-instagram"></i></a>
                            </li>
                        </ul>
                    </div>
                </nav>
                <!-- offcanvas-mobile-menu end -->
                <div class="header-top">
                    <p>
                        Email:
                        <a class="header-top-link" href="http://www.bootstrapmb.com">hastech@gmail.com</a>
                    </p>
                    <p>Free Shipping for all Order of $99</p>

                    <ul id="offcanvas-menu2" class="blog-ctry-menu blog-ctry-menu2">
                        <li>
                            <a href="javascript:void(0)">My Account</a>
                            <ul class="category-sub-menu">
                                <li>
                                    <a href="account.html">account</a>
                                </li>
                                <li>
                                    <a href="checkout.html">Checkout</a>
                                </li>
                                <li>
                                    <a href="login.html">Sign in</a>
                                </li>
                                <li>
                                    <a href="wishlist.html">Wishlist</a>
                                </li>
                            </ul>
                        </li>

                        <li>
                            <a href="javascript:void(0)">currency: USD $</a>
                            <ul class="category-sub-menu">
                                <li><a href="#">EUR €</a></li>
                                <li><a href="#">USD $</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="javascript:void(0)"><img class="me-1" src="assets/images/flag/1.jpg" alt="img" />English</a>
                            <ul class="category-sub-menu">
                                <li>
                                    <a href="#"><img src="assets/images/flag/1.jpg" alt="flags" />language:
                                        English</a>
                                </li>
                                <li>
                                    <a href="#"><img src="assets/images/flag/2.jpg" alt="flags" />
                                        Français</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- Header  Start -->
    <header>
        <div class="header-top bg-white border-bottom d-none d-lg-block">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-sm-6">
                        <p>Email: <a class="header-top-link" href="http://www.bootstrapmb.com">hastech@gmail.com</a></p>
                        <p>Free Shipping for all Order of $99</p>
                    </div>
                    <div class="col-12 col-sm-6">
                        <div class="header-top-nav">
                            <ul class="d-flex flex-wrap justify-content-center align-items-center justify-content-sm-end">
                                <li class="dropdown top-nav-item"><a class="top-nav-link" href="#" role="button" id="account" data-bs-toggle="dropdown">My Account <i class="ion-ios-arrow-down"></i></a>

                                    <!-- dropdown-menu start -->
                                    <ul class="dropdown-menu" aria-labelledby="account">
                                        <li><a class="dropdown-item" href="account.html">My account</a></li>
                                        <li><a class="dropdown-item" href="checkout.html">Checkout</a></li>
                                        <li><a class="dropdown-item" href="login.html">Sign in</a></li>
                                        <li><a class="dropdown-item" href="wishlist.html">Wishlist</a></li>
                                    </ul>
                                    <!-- dropdown-menu start -->
                                </li>
                                <li class="dropdown top-nav-item"><span></span><a class="top-nav-link" role="button" id="currency" data-bs-toggle="dropdown" href="#">USD $<i class="ion-ios-arrow-down"></i></a>

                                    <!-- dropdown-menu start -->
                                    <ul class="dropdown-menu" aria-labelledby="currency">
                                        <li><a class="dropdown-item" href="#">EUR €</a></li>
                                        <li><a class="dropdown-item" href="#">USD $</a></li>
                                    </ul>
                                    <!-- dropdown-menu start -->

                                </li>
                                <li class="dropdown top-nav-item"><img class="me-1" src="assets/images/flag/1.jpg" alt="img"> <span></span><a class="top-nav-link" role="button" id="language" data-bs-toggle="dropdown" href="#">English<i class="ion-ios-arrow-down"></i></a>
                                    <!-- dropdown-menu start -->
                                    <ul class="dropdown-menu" aria-labelledby="language">
                                        <li><a class="dropdown-item" href="#"><img src="assets/images/flag/1.jpg" alt="flags"> English</a></li>
                                        <li><a class="dropdown-item" href="#"><img src="assets/images/flag/2.jpg" alt="flags"> Français</a></li>
                                    </ul>
                                    <!-- dropdown-menu start -->
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div id="active-sticky" class="header-section">
            <div class="container position-relative">
                <div class="row align-items-center">
                    <!-- Header Logo Start -->
                    <div class="col-6 col-md-3 col-lg-3">
                        <div class="header-logo">
                            <a href="index.html"><img src="assets/images/logo/logo.jpg" alt="Site Logo" /></a>
                        </div>
                    </div>
                    <!-- Header Logo End -->

                    <!-- Header Menu Start -->
                    <div class="col-md-6 col-lg-4 d-none d-lg-block">
                        <form action="#">
                            <div class="input-group border">
                                <div class="input-group-text">
                                    <select class="form-select d-none d-xl-block" aria-label="Default select example">
                                        <option value="0">All categories</option>
                                        <option value="10">Cookware</option>
                                        <option value="19">- - Baking &amp; Pastry Mats</option>
                                        <option value="21">- - - - Baking Cups</option>
                                        <option value="22">- - - - Baking Dishes</option>
                                        <option value="23">- - - - Baking Mats</option>
                                        <option value="24">- - - - Pastry Boards</option>
                                        <option value="25">- - - - Pastry Mats</option>
                                        <option value="20">- - Chocolate Moulds</option>
                                        <option value="26">- - - - Decorating Pens</option>
                                        <option value="27">- - - - Decorating Sets</option>
                                        <option value="28">- - - - Decorating Tips</option>
                                        <option value="29">- - - - Sweetly Does It</option>
                                        <option value="30">- - - - Aprons</option>
                                        <option value="72">- - - - Electric Mixers</option>
                                        <option value="11">Appliances</option>
                                        <option value="31">- - Chopping Boards</option>
                                        <option value="33">- - - - Aprons</option>
                                        <option value="34">- - - - Baking Cups</option>
                                        <option value="35">- - - - Baking Dishes</option>
                                        <option value="36">- - - - Coffee</option>
                                        <option value="37">- - - - Coffee</option>
                                        <option value="38">- - - - Tea Accessories</option>
                                        <option value="32">- - Tea Towels</option>
                                        <option value="39">- - - - Baking Cups</option>
                                        <option value="40">- - - - Baking Moulds</option>
                                        <option value="41">- - - - Bundt Pans</option>
                                        <option value="42">- - - - Cake Moulds</option>
                                        <option value="43">- - - - Cake Pans</option>
                                        <option value="12">Kitchenair</option>
                                        <option value="44">- - Knives</option>
                                        <option value="46">- - - - Baking Dishes</option>
                                        <option value="47">- - - - Ice Cream</option>
                                        <option value="48">- - - - Mandoline Slicers</option>
                                        <option value="49">- - - - Slushy Makers</option>
                                        <option value="45">- - Pans</option>
                                        <option value="50">- - - - Decorating Tips</option>
                                        <option value="51">- - - - DecoSpoon</option>
                                        <option value="52">- - - - Rasps</option>
                                        <option value="53">- - - - Shavers</option>
                                        <option value="54">- - - - Sweetly Does It</option>
                                        <option value="13">KitchenAid Artisan</option>
                                        <option value="55">- - Appliances</option>
                                        <option value="57">- - - - DecoSpoon</option>
                                        <option value="58">- - - - Scales1</option>
                                        <option value="59">- - - - Sweetly Does It</option>
                                        <option value="60">- - - - Timers</option>
                                        <option value="56">- - Tea Towels</option>
                                        <option value="61">- - - - Cleaning Supplies</option>
                                        <option value="62">- - - - Cutting</option>
                                        <option value="63">- - - - Cutting1</option>
                                        <option value="64">- - - - Decorating Sets</option>
                                        <option value="14">Ceramic Artisan</option>
                                        <option value="68">- - Pots</option>
                                        <option value="69">- - Pans</option>
                                        <option value="70">- - Living</option>
                                        <option value="15">Appliances1</option>
                                        <option value="16">Bakeware</option>
                                        <option value="17">Knives</option>
                                        <option value="18">Tableware</option>
                                        <option value="71">DIY</option>
                                        <option value="74">Baking Cups</option>
                                        <option value="75">Decorating Pens</option>
                                        <option value="76">Sweetly Does It</option>
                                    </select>
                                </div>
                                <input type="text" class="form-control border-0" placeholder="Enter your search key ... " />
                                <div class="input-group-text">
                                    <button class="btn-search btn btn-hover-primary" type="submit">
                                        Search
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="col-6 col-md-9 col-lg-5">
                        <div class="d-flex align-items-center justify-content-end">
                            <nav class="main-menu d-none d-lg-inline-block">
                                <ul class="d-flex">
                                    <li class="main-menu-item">
                                        <a class="main-menu-link" href="index.html">Home</a>
                                        <!-- home sub menu -->
                                        <ul class="sub-menu">
                                            <li><a class="sub-menu-link" href="index.html">Home 1</a></li>
                                            <li><a class="sub-menu-link" href="index-2.html">Home 2</a></li>
                                            <li><a class="sub-menu-link" href="index-3.html">Home 3</a></li>
                                            <li><a class="sub-menu-link" href="index-4.html">Home 4</a></li>
                                        </ul>
                                        <!-- home sub menu end-->
                                    </li>
                                    <li class="position-static main-menu-item">
                                        <a class="main-menu-link" href="#">shop</a>

                                        <!-- shop mega menu -->
                                        <ul class="mega-menu row">
                                            <li class="col-3">
                                                <ul>
                                                    <li class="mega-menu-title"><a href="#">Shop Grid</a></li>
                                                    <li><a href="shop-grid-5-column.html">Shop Grid 5 Column</a></li>
                                                    <li><a href="shop-grid-6-column.html">Shop Grid 6 Column</a></li>
                                                    <li><a href="shop-grid-left-sidebar.html">Shop Grid Left Sidebar</a></li>
                                                    <li><a href="shop-grid-right-sidebar.html">Shop Grid Right Sidebar</a></li>
                                                </ul>
                                            </li>
                                            <li class="col-3">
                                                <ul>
                                                    <li class="mega-menu-title"><a href="#">Shop List</a></li>
                                                    <li><a href="shop-grid-list.html">Shop List</a></li>
                                                    <li><a href="shop-grid-list-left-sidebar.html">Shop List Left Sidebar</a>
                                                    </li>
                                                    <li><a href="shop-grid-list-right-sidebar.html">Shop List Right Sidebar</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="col-3">
                                                <ul>
                                                    <li class="mega-menu-title"><a href="#">Shop Single</a></li>
                                                    <li><a href="single-product.html">Shop Single</a></li>
                                                    <li><a href="single-product-configurable.html">Shop Variable</a></li>
                                                    <li><a href="single-product-affiliate.html">Shop Affiliate</a></li>
                                                    <li><a href="single-product-group.html">Shop Group</a></li>
                                                </ul>
                                            </li>
                                            <li class="col-3">
                                                <ul>
                                                    <li class="mega-menu-title"><a href="#">other pages</a></li>
                                                    <li><a href="about-us.html">About Page</a></li>
                                                    <li><a href="cart.html">Cart Page</a></li>
                                                    <li><a href="checkout.html">Checkout Page</a></li>
                                                    <li><a href="compare.html">Compare Page</a></li>
                                                </ul>
                                            </li>
                                            <li class="col-4 mt-4">
                                                <a href="single-product.html" class="zoom-in"><img src="assets/images/mega-menu/1.jpg" alt="img"></a>
                                            </li>
                                            <li class="col-4 mt-4">
                                                <a href="single-product.html" class="zoom-in"><img src="assets/images/mega-menu/2.jpg" alt="img"></a>
                                            </li>
                                            <li class="col-4 mt-4">
                                                <a href="single-product.html" class="zoom-in"><img src="assets/images/mega-menu/3.jpg" alt="img"></a>
                                            </li>
                                        </ul>
                                        <!-- shop mega menu end-->
                                    </li>
                                    <li class="main-menu-item">
                                        <a class="main-menu-link" href="#">pages</a>
                                        <!-- pages sub menu -->
                                        <ul class="sub-menu">
                                            <li><a class="sub-menu-link" href="about-us.html">About Page</a></li>
                                            <li><a class="sub-menu-link" href="cart.html">Cart Page</a></li>
                                            <li><a class="sub-menu-link" href="checkout.html">Checkout Page</a></li>
                                            <li><a class="sub-menu-link" href="compare.html">Compare Page</a></li>
                                            <li><a class="sub-menu-link" href="login.html">Login &amp; Register Page</a></li>
                                            <li><a class="sub-menu-link" href="myaccount.html">Account Page</a></li>
                                            <li><a class="sub-menu-link" href="wishlist.html">Wishlist Page</a></li>
                                        </ul>
                                        <!-- pages sub menu end-->
                                    </li>
                                    <li class="main-menu-item">
                                        <a class="main-menu-link" href="#">Blog</a>
                                        <!-- blog sub menu -->
                                        <ul class="sub-menu blog-sub-menu">
                                            <li>
                                                <a class="sub-menu-link" href="#">Blog Grid</a>
                                                <ul class="sub-menu">
                                                    <li><a class="sub-menu-link" href="blog-grid-5-column.html">Blog Grid 5 column</a></li>
                                                    <li><a class="sub-menu-link" href="blog-grid-6-column.html">Blog Grid 6 column</a></li>
                                                    <li><a class="sub-menu-link" href="blog-grid-left-sidebar.html">Blog Grid Left Sidebar</a></li>
                                                    <li><a class="sub-menu-link" href="blog-grid-right-sidebar.html">Blog Grid Right Sidebar</a></li>
                                                </ul>
                                            </li>
                                            <li>
                                                <a class="sub-menu-link" href="#">Blog List</a>
                                                <ul class="sub-menu">
                                                    <li><a class="sub-menu-link" href="blog-list-left-sidebar.html">Blog List Left Sidebar</a></li>
                                                    <li><a class="sub-menu-link" href="blog-list-right-sidebar.html">Blog List Right Sidebar</a></li>
                                                </ul>
                                            </li>
                                            <li>
                                                <a class="sub-menu-link" href="#">Blog details</a>
                                                <ul class="sub-menu">
                                                    <li><a class="sub-menu-link" href="blog-details-left-sidebar.html">Blog details Left Sidebar</a>
                                                    </li>
                                                    <li><a class="sub-menu-link" href="blog-details-right-sidebar.html">Blog details Right Sidbar</a>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                        <!-- blog sub menu end-->
                                    </li>
                                    <li class="main-menu-item">
                                        <a class="main-menu-link" href="contact.html">Contact</a>
                                    </li>
                                </ul>
                            </nav>
                            <div class="d-flex align-items-center justify-content-end">
                                <div class="block-cart-btn-wrapp">
                                    <button class="cart-action">
                                        <span class="lnr lnr-cart"></span>
                                        <span class="badge bg-dark">2</span>
                                    </button>

                                    <div class="checkout-cart">
                                        <ul class="checkout-scroll">
                                            <li class="checkout-cart-list">
                                                <div class="checkout-img">
                                                    <img class="product-image" src="assets/images/mini-cart/1.jpg" alt="img" />
                                                    <span class="product-quantity">1x</span>
                                                </div>
                                                <div class="checkout-block">
                                                    <a class="product-name" href="#">Leaf & Bean Electric Milk Frother & Warmets</a>
                                                    <span class="product-price">$75.10</span>
                                                    <a class="remove-cart" href="#">
                                                        <i class="fa fa-remove pull-xs-left"></i>
                                                    </a>
                                                    <div class="product-size">
                                                        <span>Size: S</span>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="checkout-cart-list">
                                                <div class="checkout-img">
                                                    <img class="product-image" src="assets/images/mini-cart/2.jpg" alt="img" />
                                                    <span class="product-quantity">1x</span>
                                                </div>
                                                <div class="checkout-block">
                                                    <a href="#" class="product-name">Le Creuset Signature Cast Iron Round Casserole</a>
                                                    <span class="product-price">$70.90</span>
                                                    <a class="remove-cart" href="#">
                                                        <i class="fa fa-remove pull-xs-left"></i>
                                                    </a>
                                                    <div class="product-size">
                                                        <span>Size: S</span>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>

                                        <ul class="list-group checkout-sub-total">
                                            <li class="list-group-item">
                                                <span>Subtotal</span>
                                                <span>$146.00</span>
                                            </li>
                                            <li class="list-group-item">
                                                <span>shipping</span>
                                                <span>$7.00</span>
                                            </li>
                                            <li class="list-group-item">
                                                <span>Taxes</span>
                                                <span>$0.00</span>
                                            </li>
                                            <li class="list-group-item">
                                                <span>Total</span>
                                                <span>$153.00</span>
                                            </li>
                                        </ul>

                                        <!-- checkout-action button start -->
                                        <div class="checkout-action">
                                            <a href="checkout.html" class="btn btn-lg btn-primary d-block">Checkout</a>
                                        </div>
                                        <!-- checkout-action button end -->
                                    </div>

                                </div>
                                <button class="toggle" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                    <span class="icon-top"></span>
                                    <span class="icon-middle"></span>
                                    <span class="icon-bottom"></span>
                                </button>
                            </div>
                        </div>
                    </div>
                    <!-- Header Menu End -->
                </div>
            </div>
        </div>
    </header>
    <!-- Header  End -->