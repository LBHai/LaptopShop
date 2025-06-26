
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!--        <link rel="stylesheet" href="style.css">-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
              integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="style/product.css">
        <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="css/hw1.css">
        <title>PRODUCT</title>
    </head>

    <body>
        <section>
            <div class="bannerVideo" id="slideshow">
                <img src="image/0a042f9d8c9fcc6f96ec96bf893985ebea92d85d.jpeg" alt="">
                <h2>LAPTOP</h2>
            </div>
            <div class="container1">
                <header class="navbar" id="navbar">
                    <a href="#" class="logo">LAPTOP</a>
                    <ul>
                        <li>
                            <a href="Home">Home</a>
                        </li>
                        <li>
                            <a href="listProduct" class="active">PRODUCT</a>
                        </li>
                        <li><a href="ListCart"><i class="fa fa-shopping-bag"></i> <span></span></a></li>
                    </ul>
                    <span class="menuIcon" onclick="toggleMenu();"></span>
                </header>
            </div>
        </section>
        <div class="product-list container">
            <div class="row">

                <div class="col-12 col-sm-12 col-md-9 col-lg-9 col-xl-9 product-left1">
                    <h5></h5>
                    <div class="product-left container">
                        <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12" >
                            <div class="row">
                                <c:forEach items="${listP}" var="p">
                                    <div class="col-12 col-sm-12 col-md-4 col-lg-4 col-xl-4 product-left-1"  style="height: 300px; width: 250px; border-radius: 10px; padding: 30px " >
                                        <img src="image/${p.imge}" alt="" style="height: 60%; width: 100%;">
                                        <div class="product-left-text">
                                            <h5>${p.price}$</h5>
                                            <div>
                                                <i class="far fa-star"></i>
                                                <i class="far fa-star"></i>
                                                <i class="far fa-star"></i>
                                                <i class="far fa-star"></i>
                                                <i class="far fa-star"></i>
                                            </div>
                                            <h4>${p.pName}</h4>
                                        </div>
                                        <button><a href="ShowProductToCart?pID=${p.pID}">ADD TO CART</a></button>
                                    </div>
                                </c:forEach>
                            </div>
                            <ul class="listPage" style="text-align: center">
                                <c:forEach begin="1" end="${endPage}" var="i">
                                    <li class="${numPage == i ? "active":""}">
                                        <a href="listProduct?index=${i}">
                                            ${i}
                                        </a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>

                </div>
                <div class="col-12 col-sm-12 col-md-3 col-lg-3 col-xl-3 product-list-right">
                    <form action="SearchProduct" method="POST">
                        <div class="input-group col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
                            <div class="form-outline">
                                <input name="txt" type="text" id="form1" class="form-control" placeholder="search" />
                            </div>
                            <button type="submit" class="btn btn-primary">
                                <i class="fas fa-search"></i>
                            </button>
                        </div>
                    </form>
                    <br>
                    <form action="SearchPrice" method="POST">
                        <div class="input-group col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
                            <div class="form-outline">
                                <select class="form-control" name="price">
                                    <option value="1">giá giảm dần</option>
                                    <option value="2">giá tăng dần</option>
                                </select>
                            </div>
                            <button type="submit" class="btn btn-primary">
                                <i class="fas fa-search"></i>
                            </button>
                        </div>
                    </form>
                    <div class="product-categories">
                        <h1>PRODUCT CATEGORIES</h1>
                        <ul class="list-group">
                            <c:forEach items="${listC}" var="c">
                                <li class="list-group-item text-white"><a href="ListBrandProduct?bName=${c.bID}">${c.bName}</a></li>
                                </c:forEach>
                        </ul>
                    </div>
                    <div class="products">
                        <h1>NEW PRODUCT</h1>
                        <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 products-1">
                            <c:forEach items="${listN}" var="n">
                                <a href="ShowProductToCart?pID=${n.pID}">
                                    <div class="col-5 col-sm-5 col-md-5 col-lg-5 col-xl-5">
                                        <img src="image/${n.imge}" alt="" >
                                    </div>
                                    <div class="col-7 col-sm-7 col-md-7 col-lg-7 col-xl-7">
                                        <h4>${n.pName}</h4>
                                        <div>
                                            <i class="far fa-star"></i>
                                            <i class="far fa-star"></i>
                                            <i class="far fa-star"></i>
                                            <i class="far fa-star"></i>
                                            <i class="far fa-star"></i>
                                        </div>
                                        <h5>${n.price}$</h5>
                                    </div>
                                </a>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer class=" text-lg-start bg-light text-muted">
            <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 footer-text">
                <div class="col-12 col-sm-12 col-md-3 col-lg-3 col-xl-3 footer-text-1">
                    <h1></h1>
                </div>
                <div class="col-12 col-sm-12 col-md-9 col-lg-9 col-xl-9 footer-text-2">
                    <h3>Laptops or laptops are a compact personal computer that can be carried <span>People</span>. Machines <br>
                        for each object have different uses.</h3>
                </div>
            </div>
            <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 footer-texts-1">
                <div class="col-12 col-sm-12 col-md-3 col-lg-3 col-xl-3 footer-texts">
                    <h2>ABOUT THE LAPTOP</h2>
                    <p>Lorem ipsum dolor sit amet, conse ctetur adipisicing elit, sed do eiusmod mas.</p>
                </div>
                <div class="col-12 col-sm-12 col-md-3 col-lg-3 col-xl-3 footer-texts">
                    <h2>SUBSCRIBE TO VULADY_TECHNOLOGY</h2>
                </div>
                <div class="col-12 col-sm-12 col-md-3 col-lg-3 col-xl-3 footer-texts-2">
                    <h2>SHOP SYSTEM</h2>
                    <h5><i class="far fa-calendar-alt"></i> FPT SHOP ĐÀ NẴNG</h5>
                    <h5><i class="far fa-calendar-alt"></i> FPT SHOP HÀ NỘI</h5>
                    <h5><i class="far fa-calendar-alt"></i> FPT SHOP HỒ CHÍ MINH</h5>
                </div>
                <div class="col-12 col-sm-12 col-md-3 col-lg-3 col-xl-3 footer-texts">
                    <h2>INSTAGRAM FEED</h2>
                </div>
            </div>
            <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
                © 2023 Copyright:
                <a class="text-white" href="https://fptshop.com.vn/">FPTSHOP.COM</a>
            </div>
        </footer>
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
        <script>
            window.addEventListener("scroll", function () {
                var header = this.document.querySelector('header');
                header.classList.toggle('sticky', window.scrollY > 0);
            });
            function toggleMenu() {
                const menuIcon = document.querySelector('.menuIcon');
                const navbar = document.getElementById('navbar');
                menuIcon.classList.toggle('active');
                navbar.classList.toggle('active');
            }
        </script>
        <style>
            ul.listPage {
                list-style: none;
                margin: 0;
                padding: 0;
            }

            ul.listPage li {
                display: inline-block;
                margin-right: 10px;
            }

            ul.listPage li.active a {
                background-color: #4CAF50;
                color: white;
                padding: 6px 12px;
                border-radius: 5px;
            }

            ul.listPage li a {
                display: block;
                text-decoration: none;
                color: #333;
                padding: 6px 12px;
                border: 1px solid #ccc;
                border-radius: 5px;
                transition: background-color 0.3s ease;
            }

            ul.listPage li a:hover {
                background-color: #f2f2f2;
            }
        </style>
    </body>
</html>
