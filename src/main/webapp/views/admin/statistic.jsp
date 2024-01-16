<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thống Kê</title>
    <link rel="icon" type="image/x-icon" href="/icon/statustic.png">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="/css/statustics.css">
    <script src="/js/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
</head>

<body>
    <%@include file="/views/admin/menu.jsp"%>
    <main id="main" class="main">
        <div class="pagetitle">
            <h1>Thống Kê</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/Statistics.html">Trang Chủ</a></li>
                    <li class="breadcrumb-item active">Thống Kê</li>
                </ol>
            </nav>
        </div>
        <section class="section dashboard">
            <div class="col-lg-12">
                <div class="row">
                    <div class="col-sm-3">
                        <div class="card mb-3" style="max-width: 540px; background-color:white">
                            <div class="row g-0">
                                <div class="col-md-4 card-">
                                    <i class="fa-regular fa-eye fai" style="font-size: 30px; color: rgb(164, 164, 164);"></i>
                                </div>
                                <div class="col-md-8">
                                    <div class="card-body">
                                        <h5 class="card-title" style="color: blue; font-weight: 600;">999</h5>
                                        <p class="card-text" style="color: gray;">Lượt xem</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="card mb-3" style="max-width: 540px;">
                            <div class="row g-0">
                                <div class="col-md-4 card-">
                                    <i class="fa-solid fa-cart-shopping fai" style="font-size: 30px; color: rgb(164, 164, 164);"></i>
                                </div>
                                <div class="col-md-8">
                                    <div class="card-body">
                                        <h5 class="card-title" style="color: blue; font-weight: 600;">${luotMua }</h5>
                                        <p class="card-text" style="color: gray;">Lượt bán</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="card mb-3" style="max-width: 540px;">
                            <div class="row g-0">
                                <div class="col-md-4 card-">
                                    <i class="fa-regular fa-comments fai" style="font-size: 30px; color: rgb(164, 164, 164);"></i>
                                </div>
                                <div class="col-md-8">
                                    <div class="card-body">
                                        <h5 class="card-title" style="color: blue; font-weight: 600;">100</h5>
                                        <p class="card-text" style="color: gray;">Bình luận</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="card text-bg-primary mb-3" style="max-width: 540px;">
                            <div class="row g-0">
                                <div class="col-md-4 card-">
                                    <i class="fa-solid fa-money-bills fai" style="font-size: 30px;"></i>
                                </div>
                                <div class="col-md-8">
                                    <div class="card-body">
                                        <h5 class="card-title" style="font-weight: 600;">${doanhThu }</h5>
                                        <p class="card-text">Doanh thu</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Tên sản phẩm</th>
                            <th scope="col">Đơn giá</th>
                            <th scope="col">Tổng số lượng</th>
                            <th scope="col">Tổng tiền</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="item" items="${listTK }" varStatus="loop">
                        <tr>
                            <th scope="row">${loop.index+1 }</th>
                            <td>${item.name }</td>
                            <td>${item.price }</td>
                            <td>${item.total_qty }</td>
                            <td>${item.total_qty * item.price }</td>
                        </tr>
                      </c:forEach>
                    </tbody>
                </table>
            </div>
        </section>

    </main>

    <footer id="footer" class="footer">
        <div class="copyright">
            &copy; CAO ĐẲNG THỰC HÀNH FPT POLYTECHNIC CƠ SỞ CẦN THƠ 2023
        </div>
        <div class="credits">

            Designed by <a href="/memberInformation.html">Tùng - Thiên - Tường - Phát - Hào</a>
        </div>
    </footer>
    <div class="backTop">
        <button onclick="topFunction()" id="totop" title="Go to top"><i class="fa-solid fa-arrow-up"></i></button>
    </div>

    <script src="/js/statistics.js"></script>
    <script src="/js/backTop.js"></script>
</body>

</html>