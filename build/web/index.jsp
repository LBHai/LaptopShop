<%-- 
    Document   : index
    Created on : 16-03-2022, 12:58:22
    Author     : MSII
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
            integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
            crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
        <title>LAPTOP</title>
                <style>
            .container1::before
{   
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width:0%;
    height: 100%;
    backdrop-filter: blur(10px);
    
}
        </style>

    </head>

    <body>
        <section>
            <div class="bannerVideo" id="slideshow">
                <video src="video/y2mate.com - Introducing Surface Laptop 5_1080p.mp4" autoplay muted loop
                       class="active"></video>
                       <video src="video/y2mate.com - THE SPEED OF CREATIVITY_1080p.mp4" autoplay muted
                       loop></video>
                <video src="video/y2mate.com - GE76GE66 Raider10UX  World 1st Gaming Laptop Equips with WiFi 6E  MSI_1080p.mp4" autoplay muted loop></video>
            </div>
            <div class="container1" >
                <header class="navbar" id="navbar">
                    <a href="#" class="logo">LAPTOP</a>
                    <ul>
                        <li>
                            <a href="Home" class="active">Home</a>
                        </li>
                        <li>
                            <a href="listProduct">PRODUCT</a>
                        </li>
                        <li><a href="ListCart"><i class="fa fa-shopping-bag"></i> <span></span></a></li>
                    </ul>
                    <span class="menuIcon" onclick="toggleMenu();"></span>
                </header>
                
                <ul class="sci">
                    <li>
                        <a href="https://www.facebook.com/lebahai123/"><img src="image/fa-removebg-preview.png" alt=""></a>
                    </li>
                    <li>
                        <a href="https://www.instagram.com/le_ba_hai_ha/"><img src="image/instagram-logo.png" alt=""></a>
                    </li>
                    <li>
                        <a href="https://www.facebook.com/lebahai123/"><img src="image/images.png" alt=""></a>
                    </li>
                </ul>
                <ul class="controls">
                    <li onclick="prevSlide();prevSlideText();">
                        <img src="image/angle-left-512.png" alt="">
                    </li>
                    <li onclick="nextSlide();nextSlideText();">
                        <img src="image/right.png" alt="">
                    </li>
                </ul>
            </div>
        </section>
        <!--------start---------------------->
        <div class="container blogger">
            <div class="row">
                <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 blogger-text">
                    <h1><span style="color: red;font-size: 80px;">WELCOME</span> TO
                         <span style="color: red;">LAPTOP SHOP</span></h1>
                    <p>Laptop computers are a technology device that many users love and choose thanks to their convenience, meeting the learning, working and entertainment needs of many users. Currently, laptop brands do not continue to improve their products to bring a line of lightweight laptops with strong performance, good battery life, especially with an extremely reasonable price. physical.</p>
                    <button>READ MORE</button>
                </div>
                <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 blogger-img">
                    <img src="image/banner1234.jpg" alt="">
                </div>
            </div>
        </div>
        <!--------end---------------------->
        <!--------start---------------------->
        <div class="icon container" style="text-align: center">
            <h2>Sản phẩm mới nhất</h2>
            <div class="row">
                <c:forEach items="${listN}" var="p" >
                    <a href="ShowProductToCart?pID=${p.pID}">
                    <div class="col-3 col-sm-3 col-md-3 col-lg-3 col-xl-3 icon-img">
                        <img src="image/${p.imge}" alt="">
                        <h5>${p.pName}</h5>
                    </div>
                    </a>
                </c:forEach>
            </div>
        </div>
        <!--------end---------------------->
        <!--------start---------------------->

        <!--------end---------------------->
        <!--------start---------------------->
        <div class="container travel">
            <div class="row">
                <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 title">
                    <h2>TRENDING <span>PRODUCT</span></h2>
                </div>
                <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 title-travel-1">
                    <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 title-travel-1-1">
                        <img src="image/${product.imge}" alt="" style="width: 500px;;object-fit: contain;">
                    </div>
                    <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 title-travel-1-2">
                        <div>
                            <h1> TREND <span style="color: red;">PRODUCT</span></h1>
                            <p>${product.pName}</p>
                            <a href="ShowProductToCart?pID=${product.pID}">
                            <h3>READ MORE</h3>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 title-travel-2">
                    <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 title-travel-2-2">
                        <div>
                            <h1>FEATURED <span style="color: red;">PRODUCTS</span></h1>
                            <p>${h.pName}</p>
                            <a href="ShowProductToCart?pID=${h.pID}">
                            <h3>READ MORE</h3>
                            </a>
                        </div>
                    </div>
                    <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 title-travel-2-1">
                        <img src="image/${h.imge}" alt="" style="width: 500px;;object-fit: contain;">
                    </div>
                </div>
            </div>
        </div>
        <!--------end---------------------->
        <!--------start---------------------->
        <div class="email ">
            <div class="row">
                <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 email-img">
                    <img src="image/banner2.webp" alt="" style="margin-top: 100px;">
                </div>
                <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 email-title">
                    <h3>Contact and Consultation</h3>
                    <h1>LEAVE YOUR NAME AND EMAIL</h1>
                    <p>we will contact you to support and advise you</p>
                    <div class="email-from">
                        <input type="text" placeholder="Name" class="form-control">
                        <input type="text" placeholder="E-mail" class="form-control">
                        <button class="btn">SUBCRIBE</button>
                    </div>
                </div>
            </div>
        </div>
        <!--------end---------------------->
        <!--------start---------------------->
        <div class="post container">
            <div class="row">
                <div class="col-12 post-title">
                    <h1>FEATURED BLOG <span>POSTS</span></h1>
                </div>
                <div class="col-12 col-sm-12 col-md-4 col-lg-4 col-xl-4 post-card">
                    <img src="image/blog1.jpg" alt="">
                    <h5><i class="fas fa-pen"></i> by <span style="color: red;font-weight: 900;">HA NOI</span> </h5>
                    <h1>There are many reputable branches</h1>
                </div>
                <div class="col-12 col-sm-12 col-md-4 col-lg-4 col-xl-4 post-card">
                    <img src="image/blog2.jpg" alt="">
                    <h5><i class="fas fa-pen"></i> by <span style="color: red;font-weight: 900;">DA NANG</span> </h5>
                    <h1>Rated with the best service</h1>
                </div>
                <div class="col-12 col-sm-12 col-md-4 col-lg-4 col-xl-4 post-card">
                    <img src="image/blog3.jpg" alt="">
                    <h5><i class="fas fa-pen"></i> by <span style="color: red;font-weight: 900;">HCM</span> </h5>
                    <h1>The head office is located in Ho Chi Minh City</h1>
                </div>
            </div>
        </div>
        <!--------end---------------------->
        <!--------start---------------------->
        <footer class=" text-lg-start bg-light text-muted">
            <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 footer-text">
                <div class="col-12 col-sm-12 col-md-3 col-lg-3 col-xl-3 footer-text-1">
                    <h1>LAPTOP</h1>
                </div>
                <div class="col-12 col-sm-12 col-md-9 col-lg-9 col-xl-9 footer-text-2">
                    <h3>Has a base in Hoa Lac <span>Thach That</span>.<br>You can contact them directly for advice and support</h3>
                </div>
            </div>
            <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 footer-texts-1">
                <div class="col-12 col-sm-12 col-md-3 col-lg-3 col-xl-3 footer-texts">
                    <h2>ABOUT THE BLOG</h2>
                    <p>prestige, high quality, commitment to exchange if faulty</p>
                </div>
                <div class="col-12 col-sm-12 col-md-3 col-lg-3 col-xl-3 footer-texts">
                    <h2>FACEBOOK FEEDBACK</h2>
                    <p>https://www.facebook.com/lebahai123/</p>
                </div>
                <div class="col-12 col-sm-12 col-md-3 col-lg-3 col-xl-3 footer-texts-2">
                    <h2>RECENT NEWS</h2>
                    <h5><i class="far fa-calendar-alt"></i> <span>July 11, 2023</span> Manufacture factory in HN</h5>
                    <h5><i class="far fa-calendar-alt"></i> <span>July 11, 2023</span> Manufacture factory in DN</h5>
                    <h5><i class="far fa-calendar-alt"></i> <span>July 11, 2023</span> Manufacture factory in HCM</h5>
                </div>
                <div class="col-12 col-sm-12 col-md-3 col-lg-3 col-xl-3 footer-texts">
                    <h2>INSTAGRAM FEED</h2>
                    <p>https://www.instagram.com/le_ba_hai_ha/</p>
                </div>
            </div>
            <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
                © 2023 Copyright:
                <a class="text-white" href="">HAIHA</a>
            </div>
        </footer>
        <!--------end---------------------->
        <div class="login">
            <c:if test="${sessionScope.acc != null}">
                <a class="nav-link" href="updateProfile" style="background: #ddd">${sessionScope.acc.username}</a>
                <a class="nav-link" href="Logout" style="background: graytext">Logout</a>
                <a class="nav-link" href="changepass.jsp" style="background: graytext">ChangePass</a>
            </c:if>
            <c:if test="${sessionScope.acc == null}">
                <a class="nav-link" href="login.jsp" style="background: graytext">Login</a>
            </c:if>
            <a href="ViewBill" class="bxcart">
                <i class='bx bx-cart'></i>
            </a>
        </div>
        <script src="app.js"></script>
    </body>
</html>
