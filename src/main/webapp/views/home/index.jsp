<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html>
<head>
<meta charset="UTF-8">
<title>Trang Chủ</title>
<link rel="icon" type="image/x-icon" href="/icon/smartwatch-app.png">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="/css/index.css">
<link rel="stylesheet" href="/css/CardMagic.css">
<link rel="stylesheet" href="/css/chatBox.css">
<link rel="stylesheet" href="/css/responsive.css">
<link rel="stylesheet" href="/css/loading.css">

<script src="/js/jquery.min.js"></script>
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
		<!-- menu  trang chu -->
		<header class="header_section">
			<div class="container-fluid">
				<div class="row no-gutters" style="height: 15px;">
					<div class="col-12 col-sm-6 col-md-8" style="margin-top: -20px;">
						<ul class="nav nav-top">
							<c:if test="${hidden == false}">
								<li class="nav-item nav_item"><a
									class="nav-link nav_link active" href="/account/login"
									style="color: rgb(0, 0, 0);">Đăng nhập</a></li>
								<li class="nav-item"><a class="nav-link"
									href="/account/register" style="color: rgb(0, 0, 0);">Đăng
										ký</a></li>
							</c:if>
						</ul>
					</div>
					<div class="col-6 col-md-4" style="margin-top: -20px;">
						<ul class="nav" style="float: right;">
							<li class="nav-item dropdown"><a href="#" class="nav-link"
								style="color: rgb(0, 0, 0);">Ngôn ngữ</a>
								<div class="dropdown-content">
									<a class="dropdown-item" href="#">Việt Nam</a> <a
										class="dropdown-item" href="#">English</a> <a
										class="dropdown-item" href="#">中国</a>
								</div></li>
							<li class="nav-item"><a class="nav-link" href="#"
								style="color: rgb(0, 0, 0);"><i class="fa-solid fa-question"></i>
									Giúp đỡ ?</a></li>
						</ul>
					</div>
				</div>
				<nav class="navbar navbar-expand-lg custom_nav-container ">
					<a class="navbar-brand" href="/home/watch"
						style="margin-left: 15px;"> <span class="text-uppercase">
							BOOK STORE </span>
					</a>
					<div class="right-item d-flex ml-auto">
						<div class="find container">
							<input placeholder="Nhập tên đồng hồ ..." required=""
								class="input" name="text" type="text">
							<div class="icon">
								<i class="fa-brands fa-searchengin"></i>
							</div>
						</div>
											<div class="dropdown">
						<a type="button" class="dropbtn"> <i class="fa fa-user"
							aria-hidden="true"></i>
						</a>
						<div class="dropdown-content">
							<a href="/home/profile">Trang cá nhân</a> 
								<div class="dropdown-divider"></div>
								<a href="/account/logout">Đăng xuất</a>
						</div>
						<!-- test222 -->
						
					</div>
						<a href="/cart/view"> <i class="fa fa-cart-plus"
							aria-hidden="true"></i>
						</a>
					</div>
				</nav>
			</div>
		</header>
		<!-- Slide banner -->

		<section>
			<div class="row">
				<div class="col-sm-1 icon_header">
					<i class="fa-brands fa-facebook-f"></i> <i
						class="fa-brands fa-instagram"></i>
				</div>
				<div class="col-sm-11">
					<div class="slider">
						<div class="list">
							<div class="item">
								<img src="/img/sl.jpg" alt="">
							</div>
							<div class="item">
								<img src="/img/Slide1.jpg" alt="">
							</div>
							<div class="item">
								<img src="/img/Slide2.jpg" alt="">
							</div>
							<div class="item">
								<img src="/img/Slide3.jpg" alt="">
							</div>
							<div class="item">
								<img src="/img/Slide4.jpg" alt="">
							</div>
						</div>
						<div class="buttons">
							<button id="prev">
								<i class="fa-solid fa-angle-left"></i>
							</button>
							<button id="next">
								<i class="fa-solid fa-angle-right"></i>
							</button>
						</div>
						<ul class="dots">
							<li class="active"></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
						</ul>
					</div>
				</div>

			</div>
		</section>
		<!-- Danh Sách Sản Phẩm -->
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

				<div class="heading_container heading_center">
					<h2>Sách Mới Nhất</h2>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="box">
							<a href="/home/detailWatched/${item.product_id}">
								<div class="img-box">
									<img src="/img/${item.product_img}" alt="">
								</div>
								<div class="detail-box">
									<h6>${item.product_name}</h6>
									<h6>
										Giá: <span> ${item.product_price} VNĐ </span>
									</h6>
								</div>
								<div class="new1">
									<span> Nổi Bật </span>
								</div>
							</a>
						</div>
					</div>
					<c:forEach var="p" items="${items}">
						<div class="col-sm-6 col-xl-3">

							<div class="box">
								<a href="/home/detailWatched/${p.product_id}">
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
								</a>
							</div>

						</div>
					</c:forEach>
				</div>
				<div class="btn-box">
					<a href="/home/watch"> Tất cả </a>
				</div>
			</div>
		</section>
		<!-- Layout giới thiệu Chức năng sản phẩm -->
		
		<!-- Layout giới liên hệ góp ý sản phẩm -->
		<section class="contact_section">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<div class="form_container">
							<div class="heading_container">
								<h2>Liên Hệ</h2>
							</div>
							<form action="/account/sendEmail" method="post">
								<div>
									<input type="text" name="fullname" placeholder="Họ và tên " />
								</div>
								<div>
									<input type="email" name="email" placeholder="Email" />
								</div>
								<div>
									<input type="text" name="phone" placeholder="Số điện thoại" />
								</div>
								<div>
									<input type="text" name="content" class="message-box"
										placeholder="Nội dung" />
								</div>
								<div class="d-flex ">
									<button>Gửi</button>
								</div>
							</form>
						</div>
					</div>
					<div class="col-md-6">
						<div class="img-box">
							<img src="/img/contact-img.jpg" alt="">
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Layout giới đánh giá sản phẩm -->
	
		<!-- back to top -->
		<div class="backTop">
			<button onclick="topFunction()" id="totop" title="Go to top">
				<i class="fa-solid fa-arrow-up"></i>
			</button>
		</div>
		<!-- hỗ trợ -->
		<div class="fabs">
			<div class="chat">
				<div class="chat_header">
					<div class="chat_option">
						<div class="header_img">
							<img src="/icon/avatarNEW.png" />
						</div>
						<span id="chat_head">Lucas Tùng</span> <br> <span
							class="agent"><i class="fa-solid fa-circle"
							style="color: rgb(0, 224, 0);"></i> Hoạt Động</span> <span
							class="online">(Online)</span> <span id="chat_fullscreen_loader"
							class="chat_fullscreen_loader"><i
							class="fa-solid fa-expand"></i></span>

					</div>

				</div>
				<div class="chat_body chat_login">
					<a id="chat_first_screen" class="fab"><i
						class="fa-solid fa-arrow-right" style="color: #ffff;"></i></a>
					<p>Lucas Shop, Xin kính chào quý khách!</p>

				</div>
				<div id="chat_converse" class="chat_conversion chat_converse">

					<a id="chat_second_screen" class="fab"><i
						class="fa-solid fa-comments" style="color: #ffff;"></i></a> <span
						class="chat_msg_item chat_msg_item_admin">
						<div class="chat_avatar">
							<img src="/icon/avatarNEW.png" />
						</div>Tôi có thể giúp được gì cho bạn?
					</span> <span class="chat_msg_item chat_msg_item_user"> Hello!</span> <span
						class="status">20m ago</span> <span
						class="chat_msg_item chat_msg_item_admin">
						<div class="chat_avatar">
							<img src="/icon/avatarNEW.png" />
						</div>Tôi có thể giúp được gì cho bạn?
					</span> <span class="chat_msg_item chat_msg_item_user"> Tôi muốn
						hỏi về các loại đồng hồ cặp.</span> <span class="status2">1m ago</span>
				</div>
				<div class="fab_field">
					<a id="fab_camera" class="fab"><i class="fa-solid fa-camera"></i></a>
					<a id="fab_send" class="fab"><i class="fa-solid fa-paper-plane"></i></a>
					<textarea id="chatSend" name="chat_message"
						placeholder="Send a message" class="chat_field chat_message"></textarea>
				</div>
			</div>
			<a id="prime" class="fab"><i
				class="prime zmdi zmdi-comment-outline" style="color: #ffff;"></i></a>
		</div>
		<!-- footer -->
		<%@include file="/views/home/footer.jsp"%>
	</div>
	<script src="/js/slide.js"></script>
	<script src="/js/backTop.js"></script>
	<script src="/js/chatBox.js"></script>
	<script src="/js/notification.js"></script>
</body>
</html>