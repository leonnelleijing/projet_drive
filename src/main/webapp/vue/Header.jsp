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
    <title>${param.title}</title>
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

    <!-- Header  Start -->
    <header>

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


                    <div class="col-6 col-md-9 col-lg-5">
                        <div class="d-flex align-items-center justify-content-end">
                            <nav class="main-menu d-none d-lg-inline-block">
                                <ul class="d-flex">

<!--                                    <li class="main-menu-item">
                                        <a class="main-menu-link" href="#">pages</a>
                                         pages sub menu 
                                        <ul class="sub-menu">
                                            <li><a class="sub-menu-link" href="about-us.html">About Page</a></li>
                                            <li><a class="sub-menu-link" href="cart.html">Cart Page</a></li>
                                            <li><a class="sub-menu-link" href="checkout.html">Checkout Page</a></li>
                                            <li><a class="sub-menu-link" href="compare.html">Compare Page</a></li>
                                            <li><a class="sub-menu-link" href="login.html">Login &amp; Register Page</a></li>
                                            <li><a class="sub-menu-link" href="myaccount.html">Account Page</a></li>
                                            <li><a class="sub-menu-link" href="wishlist.html">Wishlist Page</a></li>
                                        </ul>
                                         pages sub menu end
                                    </li>-->

                                    <li class="main-menu-item">
                                        <a class="main-menu-link" href="contact.html">Ma Liste de course</a>
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
                                                    <span class="product-price">75.10€</span>
                                                    <a class="remove-cart" href="#">
                                                        <i class="fa fa-remove pull-xs-left"></i>
                                                    </a>
                                                    <div class="product-size">
                                                        <span>Format: 150ml</span>
                                                    </div>
                                                </div>
                                            </li>

                                        </ul>

                                        <ul class="list-group checkout-sub-total">
                                            <li class="list-group-item">
                                                <span>Subtotal</span>
                                                <span>146.00€</span>
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