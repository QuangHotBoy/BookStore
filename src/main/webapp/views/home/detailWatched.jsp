<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Lucas Shop</title>
<link rel="icon" type="image/x-icon" href="/icon/smartwatch-app.png">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="/css/detailWatches.css">
<link rel="stylesheet" href="/css/index.css">
<link rel="stylesheet" href="/css/comments.css">

<link rel="stylesheet" href="/css/responsive.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
</head>

<body>
	<div class="cover">
				<header class="header_section">
			<div class="container-fluid">
				<nav class="navbar navbar-expand-lg custom_nav-container ">
					<a class="navbar-brand" href="/home/watch"
						style="margin-left: 15px;"> <span class="text-uppercase">
							Book Store </span>
					</a>
						<div class="right-item d-flex ml-auto">					
							<a href="/cart/view"> <i class="fa fa-cart-plus"
									aria-hidden="true"></i>
							</a>
								<div class="dropdown">
									<a type="button" class="dropbtn">
										<i class="fa fa-user" aria-hidden="true"></i>
									</a>
									<div class="dropdown-content">
										<a href="/home/profile">Trang cá nhân</a> 
								<div class="dropdown-divider"></div>
								<a href="/account/logout">Đăng xuất</a>
									</div>
								</div>
						</div>
				</nav>
			</div>
		</header>


		<!-- Chi tiết sản phẩm -->
		<section class="detail" style="margin-bottom: 10px">
			<main>
				<div class="col-sm-12">
					<div class="card sm-12">
						<div class="row no-gutters">
							<div class="col-md-4">
								<div id="carouselExampleFade"
									class="carousel slide carousel-fade" data-ride="carousel">
									<div class="carousel-inner">
										<div class="carousel-item active" style="padding: 50px;">
											<img src="/img/${p.product_img }" class="d-block w-100"
												alt="...">
										</div>
										<div class="carousel-item" style="padding: 50px;">
											<img src="/img/w1.png" class="d-block w-100" alt="...">
										</div>
										<div class="carousel-item" style="padding: 50px;">
											<img src="/img/w3.png" class="d-block w-100" alt="...">
										</div>
									</div>
									<a class="carousel-control-prev" href="#carouselExampleFade"
										role="button" data-slide="prev"> <span
										class="carousel-control-prev-icon" aria-hidden="true"
										style="color: #000;"></span> <span class="sr-only">Previous</span>
									</a> <a class="carousel-control-next" href="#carouselExampleFade"
										role="button" data-slide="next"> <span
										class="carousel-control-next-icon" aria-hidden="true"></span>
										<span class="sr-only">Next</span>
									</a>
									<div class="share">
										<strong>Chia sẻ: &nbsp;</strong> <a href=""><i
											class="fa-brands fa-facebook-f"></i></a> <a href=""><i
											class="fa-brands fa-facebook-messenger"></i></a>
									</div>
								</div>
							</div>
							<div class="col-md-8">
								<div class="card-body">
									<h5 class="card-title">
										<span class="badge badge-danger">Giảm 10%</span>${p.product_name}
									</h5>
									<p class="card-text">
									<div class="d-flex">
										<div class="content text-center">
											<div class="ratings">
												<span class="product-rating">4.6</span><span>/5</span>
												<div class="stars">
													<i class="fa-solid fa-star"></i> <i
														class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
													<i class="fa-solid fa-star"></i>
												</div>

											</div>
										</div>
										<div class="content text-center">
											<div class="ratings">
												<span class="product-rating">3k </span><span>Đánh giá</span>

											</div>
										</div>
										<div class="content text-center">
											<div class="ratings">
												<span class="product-rating">100k </span><span>Đã bán</span>

											</div>
										</div>
										<div class="content text-center">
											<div class="ratings">
												<small class="product-rating-small">Tố cáo <i
													class="fa-solid fa-triangle-exclamation"></i></small>

											</div>
										</div>
									</div>

									</p>
									<p class="card-text">
										<small class="text-muted">3 giây trước</small>
									</p>
									<div class="alert alert-dark" role="alert"
										style="display: flex; padding: 20px;">
										<strike style="margin-right: 20px;">
											₫790.000</strike>
										<h3 style="margin-right: 20px;">
											<mark style="color: red;">${p.product_price}</mark>
										</h3>
										<a href="#" class="badge badge-danger" style="height: 100%;">Giá
											sốc</a>
									</div>
									<div class="row">
										<div class="col-sm-2">Màu:</div>
										<div class="col-sm-10">
											<div class="btn-group btn-group-toggle" data-toggle="buttons">
												<label class="btn btn-outline-secondary active"> <input
													type="checkbox" name="options" id="option1"
													autocomplete="off" checked> Hồng
												</label> <label class="btn btn-outline-secondary"> <input
													type="checkbox" name="options" id="option2"
													autocomplete="off"> Cam
												</label> <label class="btn btn-outline-secondary"> <input
													type="checkbox" name="options" id="option3"
													autocomplete="off"> Đỏ
												</label> <label class="btn btn-outline-secondary"> <input
													type="checkbox" name="options" id="option4"
													autocomplete="off"> Vàng
												</label> <label class="btn btn-outline-secondary"> <input
													type="checkbox" name="options" id="option5"
													autocomplete="off"> Xanh Lá
												</label>
											</div>
										</div>
									</div>
									<div class="row" style="margin: 50px 0 50px -10px;">
										<div class="col-sm-2">Số lượng:</div>
										<div class="col-sm-10">
											${inven.quantity}
										</div>
									</div>
									<div class="row">
										<a href="/cart/add/${p.product_id}" type="button"
											class="button"> <span class="button__text">Thêm vỏ
												hàng</span> <span class="button__icon"> <svg
													xmlns="http://www.w3.org/2000/svg" width="24"
													viewBox="0 0 24 24" stroke-width="2"
													stroke-linejoin="round" stroke-linecap="round"
													stroke="currentColor" height="24" fill="none" class="svg">
													<line y2="19" y1="5" x2="12" x1="12"></line>
													<line y2="12" y1="12" x2="19" x1="5"></line>
                                                </svg>
										</span>
										</a> <a href="/cart/buy/${p.product_id}" type="button"
											class="btn btn-danger">Mua Ngay</a>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</main>

		</section>

		<!-- sản phẩm liên quan -->
		<section class="related_products">
			<div class="row">
				<div class="col-sm-2" style="margin-right: 90px;">
					<div class="card" style="width: 18rem; padding: 10px;">
						<img src="/img/w2.png" class="card-img-top related_products_img"
							alt="...">
						<div class="card-body" style="margin-bottom: -30px;">
							<h5 class="card-title">Đồng hồ một</h5>
							<p class="card-text">Chuột không dây Logiteche Silent M220-Có
								công tắc On/Off...</p>
							<p class="card-text">
							<div class="row">
								<strike>150.000đ - 300.000đ</strike> <strong
									style="color: red; margin-left: 10px;">200.000đ</strong>
							</div>
							</p>

						</div>
					</div>
				</div>
				<div class="col-sm-2" style="margin-right: 90px;">
					<div class="card" style="width: 18rem; padding: 10px;">
						<img src="/img/w3.png" class="card-img-top related_products_img"
							alt="...">
						<div class="card-body" style="margin-bottom: -30px;">
							<h5 class="card-title">Đồng hồ một</h5>
							<p class="card-text">Chuột không dây Logiteche Silent M220-Có
								công tắc On/Off...</p>
							<p class="card-text">
							<div class="row">
								<strike>150.000đ - 300.000đ</strike> <strong
									style="color: red; margin-left: 10px;">200.000đ</strong>
							</div>
							</p>

						</div>
					</div>
				</div>
				<div class="col-sm-2" style="margin-right: 90px;">
					<div class="card" style="width: 18rem; padding: 10px;">
						<img src="/img/w5.png" class="card-img-top related_products_img"
							alt="...">
						<div class="card-body" style="margin-bottom: -30px;">
							<h5 class="card-title">Đồng hồ một</h5>
							<p class="card-text">Chuột không dây Logiteche Silent M220-Có
								công tắc On/Off...</p>
							<p class="card-text">
							<div class="row">
								<strike>150.000đ - 300.000đ</strike> <strong
									style="color: red; margin-left: 10px;">200.000đ</strong>
							</div>
							</p>

						</div>
					</div>
				</div>
				<div class="col-sm-2" style="margin-right: 90px;">
					<div class="card" style="width: 18rem; padding: 10px;">
						<img src="/img/w1.png" class="card-img-top related_products_img"
							alt="...">
						<div class="card-body" style="margin-bottom: -30px;">
							<h5 class="card-title">Đồng hồ một</h5>
							<p class="card-text">Chuột không dây Logiteche Silent M220-Có
								công tắc On/Off...</p>
							<p class="card-text">
							<div class="row">
								<strike>150.000đ - 300.000đ</strike> <strong
									style="color: red; margin-left: 10px;">200.000đ</strong>
							</div>
							</p>

						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- Đánh giá xếp hạng sản phẩm -->
		<section class="comments">
			<h5>Xếp loại sản phẩm</h5>
			<div class="alert alert-dark" role="alert">
				<div class="d-flex">
					<div class="content text-center">
						<div class="ratings" style="border: none; margin-left: -100px;">
							<span class="product-rating">4.6</span><span>/5</span>
							<div class="stars">
								<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
								<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
							</div>

						</div>
					</div>
					<div class="content" style="width: 800px; margin-left: -154px;">
						<div class="btn-group btn-group-toggle" data-toggle="buttons">
							<label class="btn btn-outline-danger active"> <input
								type="radio" name="options" id="option1" autocomplete="off"
								checked> Tất cả
							</label> <label class="btn btn-outline-danger"> <input
								type="radio" name="options" id="option2" autocomplete="off">
								5 sao (456)
							</label> <label class="btn btn-outline-danger"> <input
								type="radio" name="options" id="option2" autocomplete="off">
								4 sao (256)
							</label> <label class="btn btn-outline-danger"> <input
								type="radio" name="options" id="option2" autocomplete="off">
								3 sao (156)
							</label> <label class="btn btn-outline-danger"> <input
								type="radio" name="options" id="option2" autocomplete="off">
								2 sao (56)
							</label> <label class="btn btn-outline-danger"> <input
								type="radio" name="options" id="option2" autocomplete="off">
								1 sao (6)
							</label>
						</div>
					</div>
				</div>
				<div class="content" style="width: 800px; margin-left: 150px;">
					<div class="btn-group btn-group-toggle" data-toggle="buttons">
						<label class="btn btn-outline-danger active"> <input
							type="radio" name="options" id="option1" autocomplete="off">
							Bình luận (488)
						</label> <label class="btn btn-outline-danger"> <input
							type="radio" name="options" id="option2" autocomplete="off">
							Phương tiện truyền thông (56)
						</label>
					</div>
				</div>
			</div>
			<section style="background-color: #f7f6f6;">
				<div class="container my-5 py-5 text-dark">
					<div class="row d-flex justify-content-center">
						<div class="col-md-12 col-lg-10 col-xl-8">
							<div
								class="d-flex justify-content-between align-items-center mb-4">
								<h4 class="text-dark mb-0">Bình luận gần đây nhất (5)</h4>
								<div class="card">
									<div class="card-body p-2 d-flex align-items-center">
										<h6 class="text-primary fw-bold small mb-0 me-1">Comments
											"ON"</h6>
										<div class="form-check form-switch">
											<input class="form-check-input" type="checkbox"
												id="flexSwitchCheckChecked" checked /> <label
												class="form-check-label" for="flexSwitchCheckChecked"></label>
										</div>
									</div>
								</div>
							</div>

							<div class="card mb-3">
								<div class="card-body">
									<div class="d-flex flex-start">
										<img class="rounded-circle shadow-1-strong me-3"
											src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/img%20(26).webp"
											alt="avatar" width="40" height="40" />
										<div class="w-100">
											<div
												class="d-flex justify-content-between align-items-center mb-3">
												<h6 class="text-primary fw-bold mb-0">
													Lucy <span class="text-dark ms-2">great product</span>
												</h6>
												<p class="mb-0">2 days ago</p>
											</div>
											<div
												class="d-flex justify-content-between align-items-center">
												<p class="small mb-0" style="color: #aaa;">
													<a href="#!" class="link-grey">Remove</a> • <a href="#!"
														class="link-grey">Reply</a> • <a href="#!"
														class="link-grey">Translate</a>
												</p>
												<div class="d-flex flex-row">
													<i class="fas fa-star text-warning me-2"></i> <i
														class="far fa-check-circle" style="color: #aaa;"></i>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="card mb-3">
								<div class="card-body">
									<div class="d-flex flex-start">
										<img class="rounded-circle shadow-1-strong me-3"
											src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/img%20(21).webp"
											alt="avatar" width="40" height="40" />
										<div class="w-100">
											<div
												class="d-flex justify-content-between align-items-center mb-3">
												<h6 class="text-primary fw-bold mb-0">
													Lucas <span class="text-dark ms-2">great product i
														love this product</span>
												</h6>
												<p class="mb-0">3 days ago</p>
											</div>
											<div
												class="d-flex justify-content-between align-items-center">
												<p class="small mb-0" style="color: #aaa;">
													<a href="#!" class="link-grey">Remove</a> • <a href="#!"
														class="link-grey">Reply</a> • <a href="#!"
														class="link-grey">Translate</a>
												</p>
												<div class="d-flex flex-row">
													<i class="far fa-check-circle text-primary"></i>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="card mb-3">
								<div class="card-body">
									<div class="d-flex flex-start">
										<img class="rounded-circle shadow-1-strong me-3"
											src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/img%20(20).webp"
											alt="avatar" width="40" height="40" />
										<div class="w-100">
											<div
												class="d-flex justify-content-between align-items-center mb-3">
												<h6 class="text-primary fw-bold mb-0">
													WOW <span class="text-dark ms-2"> great product I
														love it so much I can't believe how good this product is </span>
												</h6>
												<p class="mb-0">3 days ago</p>
											</div>
											<div
												class="d-flex justify-content-between align-items-center">
												<p class="small mb-0" style="color: #aaa;">
													<a href="#!" class="link-grey">Remove</a> • <a href="#!"
														class="link-grey">Reply</a> • <a href="#!"
														class="link-grey">Translate</a>
												</p>
												<div class="d-flex flex-row">
													<i class="fas fa-user-plus" style="color: #aaa;"></i> <i
														class="far fa-star mx-2" style="color: #aaa;"></i> <i
														class="far fa-check-circle text-primary"></i>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="card mb-3">
								<div class="card-body">
									<div class="d-flex flex-start">
										<img class="rounded-circle shadow-1-strong me-3"
											src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/img%20(14).webp"
											alt="avatar" width="40" height="40" />
										<div class="w-100">
											<div
												class="d-flex justify-content-between align-items-center mb-3">
												<h6 class="text-primary fw-bold mb-0">
													HAHAHA <span class="text-dark ms-2"><span
														class="text-primary">@Tô Quốc Tùng</span> <span
														class="text-primary">@LC</span> Thanks </span>
												</h6>
												<p class="mb-0">4 days ago</p>
											</div>
											<div
												class="d-flex justify-content-between align-items-center">
												<p class="small mb-0" style="color: #aaa;">
													<a href="#!" class="link-grey">Remove</a> • <a href="#!"
														class="link-grey">Reply</a> • <a href="#!"
														class="link-grey">Translate</a>
												</p>
												<div class="d-flex flex-row">
													<i class="far fa-check-circle text-primary"></i>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<hr>
				<nav aria-label="Page navigation example"
					style="display: flex; align-items: center; justify-content: center;">
					<ul class="pagination">
						<li class="page-item"><a class="page-link" href="#"
							aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
						</a></li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">...</a></li>
						<li class="page-item"><a class="page-link" href="#"
							aria-label="Next"> <span aria-hidden="true">&raquo;</span>
						</a></li>
					</ul>
				</nav>
			</section>
		</section>

		<div class="backTop">
			<button onclick="topFunction()" id="totop" title="Go to top">
				<i class="fa-solid fa-arrow-up"></i>
			</button>
		</div>

		<%@include file="/views/home/footer.jsp"%>
	</div>
	<script src="/js/backTop.js"></script>
</body>
</html>