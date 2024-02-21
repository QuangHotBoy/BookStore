<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sản Phẩm</title>
<link rel="icon" type="image/x-icon" href="/icon/statustic.png">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<link rel="stylesheet" href="/css/statustics.css">
<link rel="stylesheet" href="/css/ListProduct.css">
<link rel="stylesheet" href="/css/index.css">
<script src="/js/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js"
	integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js"
	integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ"
	crossorigin="anonymous"></script>
</head>

<body>
	<%@include file="/views/admin/menu.jsp"%>
	<main id="main" class="main">
		<div class="pagetitle">
			<h1>Danh Sách Sản Phẩm</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="/Statistics.html">Trang
							Chủ</a></li>
					<li class="breadcrumb-item"><a href="/Statistics.html">Sản
							Phẩm</a></li>
					<li class="breadcrumb-item active">Danh Sách Sản Phẩm</li>
				</ol>
			</nav>
		</div>
		<section class="shop_section layout_padding">
			<c:if test="${userNull == true}">
				<div class="notification">
					<div class="toast-war warning-war">
						<i class="fa-solid fa-triangle-exclamation"></i>
						<div class="content">
							<div class="title-war">Cảnh Báo!</div>
							<span>Bạn chưa đăng nhập vào tài khoản.</span>
						</div>
					</div>
				</div>
			</c:if>
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<div class="box">
							
								<div class="img-box">
									<img src="/img/${item.product_img}" alt="">
								</div>
								<div class="detail-box">
									<h6>${item.product_name}</h6>
									<h6>
										Giá: <span> ${item.product_price} VNĐ </span>
									</h6>
								</div>
								<div class="new">
									<span> Nổi Bật </span>
								</div>
							
						</div>
					</div>
					<c:forEach var="p" items="${items}">
						<div class="col-sm-6 col-xl-3">

							<div class="box">
								
									<div class="img-box">
										<img src="/img/${p.product_img}" alt="">
									</div>
									<div class="detail-box">
										<h6>${p.product_name}</h6>
										<h6>
											Giá: <span> ${p.product_price} VNĐ </span>
										</h6>
									</div>
									<div class="new">
										<span> Mới </span>
									</div>
								
							</div>

						</div>
					</c:forEach>
				</div>
				
			</div>
		</section>

	</main>

	<footer id="footer" class="footer">
		<div class="copyright">&copy; CAO ĐẲNG THỰC HÀNH FPT POLYTECHNIC
			CƠ SỞ CẦN THƠ 2023</div>
		<div class="credits">

			Designed by <a href="/memberInformation.html">Tùng - Thiên -
				Tường - Phát - Hào</a>
		</div>
	</footer>
	<div class="backTop">
		<button onclick="topFunction()" id="totop" title="Go to top">
			<i class="fa-solid fa-arrow-up"></i>
		</button>
	</div>

	<script src="/js/statistics.js"></script>
	<script src="/js/backTop.js"></script>
</body>
</html>