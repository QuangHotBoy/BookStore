<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Người Dùng</title>
    <link rel="icon" type="image/x-icon" href="/icon/statustic.png">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="/css/statustics.css">
    <link rel="stylesheet" href="/css/ListProduct.css">
    <script src="/js/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js" integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js" integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ" crossorigin="anonymous"></script>
</head>

<body>
    <%@include file="/views/admin/menu.jsp"%>
    <main id="main" class="main">
        <div class="pagetitle">
            <h1>Lịch Sử Đăng Nhập</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/Statistics.html">Trang Chủ</a></li>
                    <li class="breadcrumb-item"><a href="/Statistics.html">Sản Phẩm</a></li>
                    <li class="breadcrumb-item active">Lịch Sử Đăng Nhập</li>
                </ol>
            </nav>
        </div>
        <section class="section dashboard">
            <table class="table table-striped table-dark">
                <thead class="table-light">
                    <tr>
                        <th scope="col">Họ Và Tên</th>
                        <th scope="col">Email</th>
                        <th scope="col">Thời Gian Đăng Nhập</th>
                        <th scope="col">Thời Gian Đăng Xuất</th>
                        <th scope="col"></th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach var="item" items="${logs}">
                    <tr>
                        <td>${item.user.fullname}</td>
                        <td>${item.user.email}</td>
                        <td>${item.login_time}</td>
                        <td>${item.login_out}</td>
                        <td><a href="/admin/delelelogs/${item.log_id}">Xóa</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
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