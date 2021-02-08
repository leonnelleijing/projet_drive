<%-- 
    Document   : Accueil
    Created on : 5 févr. 2021, 15:43:46
    Author     : 33667
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file ="/vue/Header.jsp"%>



<div class="container">
        <div class="row">
            <div class="col-12">
                <div class="mobile-category-nav d-lg-none pt-4">
                    <!--=======  category menu  =======-->
                    <div class="hero-side-category">
                        <!-- Category Toggle Wrap -->
                        <div class="category-toggle-wrap">
                            <!-- Category Toggle -->
                            <button class="more-btn">
                                <span class="lnr lnr-text-align-left"></span> All Categories
                            </button>
                        </div>

                        <!-- Category Menu -->
                        <nav class="category-menu">
                            <ul>
                                <li class="menu-item-has-children menu-item-has-children-1">
                                    <a href="#">Accessories &amp; Parts<i class="ion-ios-arrow-down"></i></a>
                                    <!-- category submenu -->
                                    <ul class="category-mega-menu category-mega-menu-1">
                                        <li><a href="#">Cables &amp; Adapters</a></li>
                                        <li><a href="#">Batteries</a></li>
                                        <li><a href="#">Chargers</a></li>
                                        <li><a href="#">Bags &amp; Cases</a></li>
                                        <li><a href="#">Electronic Cigarettes</a></li>
                                    </ul>
                                </li>
                                <li class="menu-item-has-children menu-item-has-children-2">
                                    <a href="#">Camera &amp; Photo<i class="ion-ios-arrow-down"></i></a>
                                    <!-- category submenu -->
                                    <ul class="category-mega-menu category-mega-menu-2">
                                        <li><a href="#">Digital Cameras</a></li>
                                        <li><a href="#">Camcorders</a></li>
                                        <li><a href="#">Camera Drones</a></li>
                                        <li><a href="#">Action Cameras</a></li>
                                        <li><a href="#">Photo Studio Supplies</a></li>
                                    </ul>
                                </li>
                                <li class="menu-item-has-children menu-item-has-children-3">
                                    <a href="#">Smart Electronics <i class="ion-ios-arrow-down"></i></a>
                                    <!-- category submenu -->
                                    <ul class="category-mega-menu category-mega-menu-3">
                                        <li><a href="#">Wearable Devices</a></li>
                                        <li><a href="#">Smart Home Appliances</a></li>
                                        <li><a href="#">Smart Remote Controls</a></li>
                                        <li><a href="#">Smart Watches</a></li>
                                        <li><a href="#">Smart Wristbands</a></li>
                                    </ul>
                                </li>
                                <li class="menu-item-has-children menu-item-has-children-4">
                                    <a href="#">Audio &amp; Video <i class="ion-ios-arrow-down"></i></a>
                                    <!-- category submenu -->
                                    <ul class="category-mega-menu category-mega-menu-4">
                                        <li><a href="#">Televisions</a></li>
                                        <li><a href="#">TV Receivers</a></li>
                                        <li><a href="#">Projectors</a></li>
                                        <li><a href="#">Audio Amplifier Boards</a></li>
                                        <li><a href="#">TV Sticks</a></li>
                                    </ul>
                                </li>
                                <li class="menu-item-has-children menu-item-has-children-5">
                                    <a href="#">Portable Audio &amp; Video
                                        <i class="ion-ios-arrow-down"></i></a>
                                    <!-- category submenu -->
                                    <ul class="category-mega-menu category-mega-menu-5">
                                        <li><a href="#">Headphones</a></li>
                                        <li><a href="#">Speakers</a></li>
                                        <li><a href="#">MP3 Players</a></li>
                                        <li><a href="#">VR/AR Devices</a></li>
                                        <li><a href="#">Microphones</a></li>
                                    </ul>
                                </li>
                                <li class="menu-item-has-children menu-item-has-children-6">
                                    <a href="#">Video Game <i class="ion-ios-arrow-down"></i></a>
                                    <!-- category submenu -->
                                    <ul class="category-mega-menu category-mega-menu-6">
                                        <li><a href="#">Handheld Game Players</a></li>
                                        <li><a href="#">Game Controllers</a></li>
                                        <li><a href="#">Joysticks</a></li>
                                        <li><a href="#">Stickers</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">Televisions</a></li>
                                <li><a href="#">Digital Cameras</a></li>
                                <li><a href="#">Headphones</a></li>
                                <li><a href="#">Wearable Devices</a></li>
                                <li><a href="#">Smart Watches</a></li>
                                <li><a href="#">Game Controllers</a></li>
                                <li><a href="#"> Smart Home Appliances</a></li>
                                <li class="hidden" style="display: none">
                                    <a href="#">Projectors</a>
                                </li>
                                <li>
                                    <a href="#" id="more-btn"><i class="ion-ios-plus-empty"></i> More Categories</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>

 <!-- Hero Slider Start -->
    <section class="hero-section bg-light position-relative section-pt">
        <div class="container">
            <div class="row mb-n7 g-0">
                <div class="col-xl-3 col-lg-4">
                    <div class="vertical-menu d-none d-lg-block">
                        <button class="menu-btn d-flex">
                            <span class="lnr lnr-text-align-left"></span>Rayon
                        </button>
                        <ul class="vmenu-content">
                            <li class="menu-item">
                                <a href="#">Cookware<i class="ion-ios-arrow-right"></i></a>
                                <ul class="verticale-mega-menu flex-wrap">
                                    <li>
                                        <a href="#">
                                            <strong> Baking & Pastry Mats</strong>
                                        </a>
                                        <ul class="submenu-item">
                                            <li><a href="#">Baking Cups</a></li>
                                            <li><a href="#">Baking Dishes</a></li>
                                            <li><a href="#">Baking Mats</a></li>
                                            <li><a href="#">Pastry Boards</a></li>
                                            <li><a href="#">Pastry Mats</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span><strong>Chocolate Moulds</strong></span>
                                        </a>
                                        <ul class="submenu-item">
                                            <li><a href="#">Decorating Pens</a></li>
                                            <li><a href="#">Decorating Sets</a></li>
                                            <li><a href="#">Decorating Tips</a></li>
                                            <li><a href="#">Sweetly Does It</a></li>
                                            <li><a href="#">Aprons</a></li>
                                            <li><a href="#">Electric Mixers</a></li>
                                        </ul>
                                    </li>
                                </ul>
                                <!-- sub menu -->
                            </li>
                            <li class="menu-item">
                                <a href="#">Appliances<i class="ion-ios-arrow-right"></i></a>
                                <ul class="verticale-mega-menu flex-wrap">
                                    <li>
                                        <a href="#">
                                            <strong> Baking & Pastry Mats</strong>
                                        </a>
                                        <ul class="submenu-item">
                                            <li><a href="#">Baking Cups</a></li>
                                            <li><a href="#">Baking Dishes</a></li>
                                            <li><a href="#">Baking Mats</a></li>
                                            <li><a href="#">Pastry Boards</a></li>
                                            <li><a href="#">Pastry Mats</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span><strong>Chocolate Moulds</strong></span>
                                        </a>
                                        <ul class="submenu-item">
                                            <li><a href="#">Decorating Pens</a></li>
                                            <li><a href="#">Decorating Sets</a></li>
                                            <li><a href="#">Decorating Tips</a></li>
                                            <li><a href="#">Sweetly Does It</a></li>
                                            <li><a href="#">Aprons</a></li>
                                            <li><a href="#">Electric Mixers</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li class="menu-item">
                                <a href="#">Kitchenair<i class="ion-ios-arrow-right"></i></a>
                                <ul class="verticale-mega-menu flex-wrap">
                                    <li>
                                        <a href="#">
                                            <strong> Baking & Pastry Mats</strong>
                                        </a>
                                        <ul class="submenu-item">
                                            <li><a href="#">Baking Cups</a></li>
                                            <li><a href="#">Baking Dishes</a></li>
                                            <li><a href="#">Baking Mats</a></li>
                                            <li><a href="#">Pastry Boards</a></li>
                                            <li><a href="#">Pastry Mats</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span><strong>Chocolate Moulds</strong></span>
                                        </a>
                                        <ul class="submenu-item">
                                            <li><a href="#">Decorating Pens</a></li>
                                            <li><a href="#">Decorating Sets</a></li>
                                            <li><a href="#">Decorating Tips</a></li>
                                            <li><a href="#">Sweetly Does It</a></li>
                                            <li><a href="#">Aprons</a></li>
                                            <li><a href="#">Electric Mixers</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li class="menu-item">
                                <a href="#">KitchenAid Artisan<i class="ion-ios-arrow-right"></i></a>
                                <ul class="verticale-mega-menu flex-wrap">
                                    <li>
                                        <a href="#">
                                            <strong> Baking & Pastry Mats</strong>
                                        </a>
                                        <ul class="submenu-item">
                                            <li><a href="#">Baking Cups</a></li>
                                            <li><a href="#">Baking Dishes</a></li>
                                            <li><a href="#">Baking Mats</a></li>
                                            <li><a href="#">Pastry Boards</a></li>
                                            <li><a href="#">Pastry Mats</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span><strong>Chocolate Moulds</strong></span>
                                        </a>
                                        <ul class="submenu-item">
                                            <li><a href="#">Decorating Pens</a></li>
                                            <li><a href="#">Decorating Sets</a></li>
                                            <li><a href="#">Decorating Tips</a></li>
                                            <li><a href="#">Sweetly Does It</a></li>
                                            <li><a href="#">Aprons</a></li>
                                            <li><a href="#">Electric Mixers</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li class="menu-item">
                                <a href="#">Ceramic Artisan<i class="ion-ios-arrow-right"></i></a>
                                <ul class="verticale-sub-menu">
                                    <li>
                                        <ul class="submenu-item">
                                            <li><a href="#">Pots</a></li>
                                            <li><a href="#">Pans</a></li>
                                            <li><a href="#">Living</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li class="menu-item"><a href="#">Appliances1</a></li>
                            <li class="menu-item"><a href="#">Bakeware</a></li>
                            <li class="menu-item"><a href="#">Knives</a></li>
                            <li class="menu-item"><a href="#">Tableware</a></li>
                            <li class="menu-item"><a href="#">DIY</a></li>
                            <li class="menu-item"><a href="#">Baking Cups</a></li>
                            <li class="menu-item"><a href="#">Decorating Pens</a></li>
                            <li class="menu-item"><a href="#">Sweetly Does It</a></li>
                        </ul>
                        <!-- menu content -->
                    </div>

                </div>
                <div class="col-xl-6 col-lg-8">

                </div>

            </div>
        </div>
    </section>
    <!-- Hero Slider End -->

        
    <%@ include file="/vue/Footer.jsp"%>
    
    
    
    
    

            }