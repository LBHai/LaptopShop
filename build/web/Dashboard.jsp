
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản Lý - Admin</title>
        <meta name="viewport"
              content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
        <link rel="icon" type="image/png" href="image/logoshop.jpg" />

        <!-- Import lib -->
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.css">
        <link rel="stylesheet" type="text/css" href="fontawesome-free/css/all.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
        <!-- End import lib -->

        <link rel="stylesheet" type="text/css" href="style/sell.css">
    </head>

    <body class="overlay-scrollbar">
        <!-- navbar -->
        <div class="navbar">
            <!-- nav left -->
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link">
                        <i class="fas fa-bars" onclick="collapseSidebar()"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="Home" class="logo">LAPTOP</a>
                </li>
            </ul>
            <!-- end nav left -->
            <!-- form -->
            <form class="navbar-search">
                <input type="text" name="Search" class="navbar-search-input" placeholder="What you looking for...">
                <i class="fas fa-search"></i>
            </form>
            <!-- end form -->
            <!-- nav right -->
            <ul class="navbar-nav nav-right">
                <li class="nav-item mode">
                    <a class="nav-link" href="#" onclick="switchTheme()">
                        <i class="fas fa-moon dark-icon"></i>
                        <i class="fas fa-sun light-icon"></i>
                    </a>
                </li>
                <li class="nav-item avt-wrapper">
                    <div class="avt dropdown">
                        <img src="image/chamsoc.png" alt="User image" class="dropdown-toggle" data-toggle="user-menu">
                        <ul id="user-menu" class="dropdown-menu"    >
                            <c:if test="${sessionScope.acc != null}">
                                <li class="dropdown-menu-item">
                                    <a class="dropdown-menu-link">
                                        <div>
                                            <i class="fas fa-user-tie"></i>
                                        </div>

                                        <span>Profile ${sessionScope.acc.username}</span>


                                    </a>
                                </li>
                            </c:if>
                            <li class="dropdown-menu-item">
                                <a href="updateProfile" class="dropdown-menu-link">
                                    <div>
                                        <i class="fas fa-cog"></i>
                                    </div>
                                    <span>Settings</span>
                                </a>
                            </li>
                            <li class="dropdown-menu-item">
                                <a href="Logout" class="dropdown-menu-link">
                                    <div>
                                        <i class="fas fa-sign-out-alt"></i>
                                    </div>
                                    <span>Logout</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </li>
            </ul>
            <!-- end nav right -->
        </div>
        <!-- end navbar -->
        <!-- sidebar -->
        <div class="sidebar">
            <ul class="sidebar-nav">
                <li class="sidebar-nav-item">
                    <a href="DashBoard" class="sidebar-nav-link">
                        <div>
                            <i class="fas fa-tachometer-alt"></i>
                        </div>
                        <span>
                            Dashboard
                        </span>
                    </a>
                </li>
                <li class="sidebar-nav-item">
                    <a href="seller" class="sidebar-nav-link">
                        <div>
                            <i class="fab fa-accusoft"></i>
                        </div>
                        <span>PRODUCT</span>
                    </a>
                </li>
                <li class="sidebar-nav-item">
                    <a href="addproduct" class="sidebar-nav-link">
                        <div>
                            <i class="fas fa-tasks"></i>
                        </div>
                        <span>ADD PRODUCT</span>
                    </a>
                </li>

                <li class="sidebar-nav-item">
                    <a href="listUser" class="sidebar-nav-link">
                        <div>
                            <i class="fas fa-spinner"></i>
                        </div>

                        <span>MANAGER ADMIN</span>

                    </a>
                </li>
                <li class="sidebar-nav-item">
                    <a href="listCart" class="sidebar-nav-link">
                        <div>
                            <i class="fas fa-check-circle"></i>
                        </div>
                        <span>BILL</span>
                    </a>
                </li>
            </ul>
        </div>
        <!-- end sidebar -->
        <!-- main content -->
        <div class="wrapper">
            <div class="page-header">
                <h3 class="page-title">
                    <span class="page-title-icon bg-gradient-primary text-white me-2">
                        <i class="mdi mdi-home"></i>
                    </span>
                    Dashboard
                </h3>
            </div>
            <div class="row">
                <div class="col-md-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body" style="display: flex; justify-content: center; align-items: center;">
                            <h4 class="card-title">TRENDING PRODUCT</h4>
                            <div id="columnchart_3d" style="width: 900px; height: 500px;"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end main content -->
        <!-- import script -->
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        <script type="text/javascript">
                        google.charts.load("current", {packages: ["corechart"]});
                        google.charts.setOnLoadCallback(drawChart);
                        function drawChart() {
                            var data = google.visualization.arrayToDataTable([
                                ['ProductName', 'Quantity'],
            <c:forEach items="${MKT}" var="m">
                                ['${m.pName}', ${m.total}],
            </c:forEach>
                            ]);

                            var options = {
                                is3D: true,
                            };

                            var chart = new google.visualization.PieChart(document.getElementById('columnchart_3d'));
                            chart.draw(data, options);
                        }
        </script>

    </script>
</body>
</html>
