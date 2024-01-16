<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="fr"%>
<html>
<head>
<meta charset="UTF-8">
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
<script src="/js/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
	integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"
	integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V"
	crossorigin="anonymous"></script>
</head>
<body>
	<%@include file="/views/admin/menu.jsp"%>
	<main id="main" class="main">
		<div class="pagetitle">
			<h1>Cập Nhật Sản Phẩm</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="/Statistics.html">Trang
							Chủ</a></li>
					<li class="breadcrumb-item"><a href="/Statistics.html">Sản
							Phẩm</a></li>
					<li class="breadcrumb-item active">Cập Nhật Sản Phẩm</li>
				</ol>
			</nav>
		</div>
		<section class="section dashboard">
			<div class="row">
				<div class="col-xl-12">

					<table class="table table-dark table-striped table-hover">
						<thead>
							<tr>
								<th scope="col">Mã</th>
								<th scope="col">Tên Sản Phẩm</th>
								<th scope="col">Giá</th>
								<th scope="col">Mô Tả</th>
								<th scope="col"></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="item" items="${products}">
								<tr>
									<th>${item.product_id}</th>
									<td>${item.product_name}</td>
									<td>${item.product_price}</td>
									<td>${item.product_describe}</td>
									<td><a href="/product/edit/${item.product_id}">Cập
											nhật</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>

					<div class="card">
						<div class="card-body pt-3">
							<ul class="nav nav-tabs nav-tabs-bordered">
								<li class="nav-item">
									<button class="nav-link active" data-bs-toggle="tab"
										data-bs-target="#addProduct">Cập Nhật Sản Phẩm</button>
								</li>
							</ul>
							<div class="tab-content pt-2">
								<div class="tab-pane fade show active pt-3" id="addProduct">
									<form action="/product/updateProduct" method="post">
										
										<div class="row mb-3">
											<label for="" class="col-md-4 col-lg-3 col-form-label">Hình
												ảnh</label>
											<div class="col-md-8 col-lg-9">
												<img src="/img/${item.product_img}" alt=""
													style="width: 10%;">
												<div class="pt-2">
													<input type="text" value="${item.product_img}" name="product_img" id="Filename" >
														<input type="file" class="fileform" id="formFile"
															style="display: none;"> <label for="formFile"
															id="customFile" onclick="defautlBtnIMG()"
															class="btn btn-primary btn-sm"><i
															class="fa-solid fa-upload"></i></label> <label id="deleteFile"
															class="btn btn-danger btn-sm"><i
															class="fa-solid fa-trash-can"></i></label>
												</div>
											</div>
										</div>

										<div class="row mb-3">
											<label for="fullName"
												class="col-md-4 col-lg-3 col-form-label">Tên Sản
												Phẩm</label>
											<div class="col-md-8 col-lg-9">
												<input name="product_name"
													value="${item.product_name}" type="text"
													class="form-control" id="fullName"
													placeholder="Tên sản phẩm" />
											</div>
										</div>

										<div class="row mb-3">
											<label for="about" class="col-md-4 col-lg-3 col-form-label">Mô
												tả</label>
											<div class="col-md-8 col-lg-9">
												<input name="product_describe"
													value="${item.product_describe}" class="form-control"
													type="text" id="about" style="height: 100px" />


											</div>
										</div>

										<div class="row mb-3">
											<label for="price" class="col-md-4 col-lg-3 col-form-label">Giá</label>
											<div class="col-md-8 col-lg-9">
												<input name="product_price"
													value="${item.product_price}" type="text"
													class="form-control" id="price" />
											</div>
										</div>

										
										<div class="row mb-3">
											<label for="Country" class="col-md-4 col-lg-3 col-form-label"></label>
											<div class="col-md-8 col-lg-9">
												<button type="submit" 
													class="btn btn-primary">Cập nhật</button> <a type="submit"
													href="/product/delete/${item.product_id}"
													class="btn btn-primary">Xóa</a>
											</div>

										</div>
									</form>
								</div>
							</div>
						</div>
					</div>

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

	<script src="/js/jquery-latest.min.js"></script>
	<script src="/js/FileNameJS.js"></script>
	
	<script src="/js/statistics.js"></script>
	<script src="/js/backTop.js"></script>
</body>
</html>