

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
        <link rel="stylesheet" href="style/Giohang.css">
        <link rel="stylesheet" href="style/product.css">
        <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
        <title>Giỏ hàng</title>
    </head>

    <body>
        <style>
            label {
                margin-bottom: 0;
            }

            /* Hide the checkboxes */
            input[type='radio'] {
                display: none;
            }

            /* Default styling for labels to make them look like buttons */
            input[type='radio']+label {
                display: inline-block;
                box-shadow: 1px 1px grey;
                background-color: #e0e0e0;
                padding: 0 40px;
                border-radius: 3px;
                font-family: Arial, Helvetica, sans-serif;
                cursor: pointer;
                margin-left: 16px;
                margin-top: 16px;
                margin-bottom: 16px;
            }

            /* Styling for labels when corresponding radio button is checked */
            input[type='radio']:checked+label {
                box-shadow: -1px -1px grey;
                background-color: #7fad39;
            }

            .modal-body p {
                margin: 0;
            }
        </style>
        <section>
            <div class="bannerVideo" id="slideshow">
                <img src="image/laptop-gaming.jpg" alt="">
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
        <div class="h1-g">
        </div>

        <div style="margin-left: 120px;font-size: 20px;color: green;">
            <span>GIỎ HÀNG</span>
            <hr>
        </div>
        <div style="text-align: center;">
            <span style=" color: red;">${cart}</span>
        </div>
        <form action="payControl" method="post">
            <div class="card-content" style="display: flex;  position: relative;" >
                <table class="table" style="width: 700px;margin-left: 120px;margin-bottom: 100px;">
                    <thead>
                        <tr >
                            <th style="display : flex; flex-direction : row">
                                <input type="checkbox" class="check" id="checkAll">
                                <label>
                                    Chọn tất cả
                                </label>
                            </th>
                            <th scope="col">Hình ảnh</th>
                            <th scope="col">Số Lượng</th>
                            <th scope="col">name</th>
                            <th scope="col">Giá</th>
                            <th scope="col">Total</th>
                            <th scope="col">Xóa</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:set var="totals" value="0"/>
                        <c:set var="totalr" value="0"/>
                        <c:forEach items="${listC}" var="cart">
                            <c:set var="total" value="${(totals + cart.quality) * cart.price}"/>
                            <c:set var="totalr" value="${totalr + total}"/>
                            <tr>
                                <td><label>
                                        <input type="checkbox" name="cID" value="${cart.cID}" class="check">
                                    </label>
                                </td>
                                <td style="width: 200px">
                                    <img src="image/${cart.imge}" alt="" style="width: 200px"/>
                                </td>
                                <td style="width: 100px;">
                                    <h5 class="product-titles" style="text-align: center;">${cart.quality}</h5>
                                </td>
                                <td style="width: 100px;">
                                    <h5 class="product-titles" style="text-align: center;">${cart.pName}</h5>
                                </td>
                                <td style="width: 100px;">
                                    <h5 class="product-titles" style="text-align: center;">$${cart.price}</h5>
                                </td>
                                <td style="width: 100px;">
                                    <h5 class="product-titles" style="text-align: center;">$${total}</h5>
                                </td>
                                <td style="width: 100px;">
                                    <a type="submit" href="DeleteCart?cID=${cart.cID}" style="text-align: center;">DELETE</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>

                <div class="totalprice" style="margin-top: 50px;">
                    <h2 style="color: #000; font-size: 50px;">Total Price :<span style="color: red">$${totalr}</span></h2>
                    <button type="submit" class="btn btn-success">Thanh toán</button>
                </div>
            </div>
        </form>

        <!-- The Modal -->
        <div class="modal fade" id="modal-delete" style="padding-top: 200px;">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">

                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Xóa</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <!-- Modal body -->
                    <div class="modal-body">
                        Bạn có chắc chắn xóa không?
                    </div>

                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                        <button type="button" class="btn btn-secondary" id="button-delete" data-dismiss="modal">Xóa</button>
                    </div>

                </div>
            </div>
        </div>

        <div class="modal fade" id="modal-delete-all" style="padding-top: 200px;">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">

                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Xóa tất cả</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <!-- Modal body -->
                    <div class="modal-body">
                        Bạn có chắc chắn xóa tất cả sản phẩm không?
                    </div>

                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="DeleteAll()">Xóa</button>
                    </div>

                </div>
            </div>
        </div>
        <!-- The Modal -->
        <div class="modal fade" id="modal-delete" style="padding-top: 200px;">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">

                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Xóa</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <!-- Modal body -->
                    <div class="modal-body">
                        Bạn có chắc chắn xóa không?
                    </div>

                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                        <button type="button" class="btn btn-secondary" id="button-delete" data-dismiss="modal">Xóa</button>
                    </div>

                </div>
            </div>
        </div>

        <div class="modal fade" id="modal-delete-all" style="padding-top: 200px;">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">

                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Xóa tất cả</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <!-- Modal body -->
                    <div class="modal-body">
                        Bạn có chắc chắn xóa tất cả sản phẩm không?
                    </div>

                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="DeleteAll()">Xóa</button>
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
        <script src="Giohang.js"></script>

        <script>
                            $("#checkAll").click(function () {
                                $(".check").prop('checked', $(this).prop('checked'));
                            });


                            document.getElementById("getChecked").addEventListener("click", function () {
                                // Get the one radio button (within its group) that is checked:
                                var checkedRadio = document.querySelector("input[type='radio'][name='rad']:checked");

                                // Clear old output and log new results
                                console.clear();
                                console.log(checkedRadio.value);
                            });
        </script>
    </body>
</html>
