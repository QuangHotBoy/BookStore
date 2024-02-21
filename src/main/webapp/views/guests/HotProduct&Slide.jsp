<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<div class="container" align="center">
	<h2 class="homepage">Các Sản Phẩm</h2>
	<br>
	<div class="col-sm-12">
		<c:forEach var="hp" items="${ hotProducts }" end="2">
			<div class="col-sm-4">
				<div class="panel panel-info text-center">
					<div class="panel-heading">${ hp.name }</div>
					<div class="panel-body">
						<a href="#"> <img
							src="/image/${hp.image }"
							class="img-responsive" style="width: 300px; height: 300px" alt="Image">
						</a>
					</div>
					<div class="panel-footer">
						<h4 class="text-dark">
							<b> ${ hp.price.toString().replace(".0", " VNĐ") }</b>
						</h4>
						<a href="/cart/add/${hp.id}">
							<button class="btn btn-info">Thêm Vào Giỏ Hàng</button>
						</a>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>


	<hr>
	<a href="/shop">
		<button type="button" class="btn-lg btn-info"
			style="align-content: center;">Xem Thêm</button>
	</a>
	<hr>
</div>

<div class="container" align="center">
	<h1 style="color: red; font-style: inherit;">Sản Phẩm Mới</h1>
	<br>
	<div class="row">
		<c:forEach var="np" items="${ newProducts }" end="2">
			<div class="col-sm-4">
				<div class="panel panel-info text-center">
					<div class="panel-heading">${ np.name }</div>
					<div class="panel-body">
						<a href="#"> <img
							src="/image/${np.image }"
							class="img-responsive" style="width: 400px; height: 400px" alt="Image">
						</a>
					</div>
					<div class="panel-footer">
						<h4 class="text-dark">
							<b> ${ np.price.toString().replace(".0", " VNĐ") }</b>
						</h4>
						<a href="/cart/add/${np.id}">
							<button class="btn btn-info">Thêm Vào Giỏ Hàng</button>
						</a>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>

	<hr>
	<a href="/shop">
		<button type="button" class="btn-lg btn-info"
			style="align-content: center;">Xem Thêm</button>
	</a>
	<hr>
</div>

<div class="container" align="center">
	<h3>Đang Giảm Giá</h3>
	<br>
	<div class="row">
		<c:forEach var="sp" items="${ saleProducts }" end="7">
			<div class="col-sm-3">
				<div class="panel panel-info text-center">
					<div class="panel-heading">${ sp.name }</div>
					<div class="panel-body">
						<a href="#"> <img
							src="/image/${sp.image }"
							class="img-responsive" style="width: 390px; height: 300px" alt="Image">
						</a>
					</div>
					<div class="panel-footer">
						<mark>
							<del>${ sp.price / 0.5 } VNĐ</del>
						</mark>
						<h4 class="text-dark">
							<b>${ sp.price.toString().replace(".0", " VNĐ") }</b>
						</h4>
						<a href="/cart/add/${sp.id}">
							<button class="btn btn-info">Thêm Vào Giỏ Hàng</button>
						</a>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>

	<hr>
	<a href="/shop">
		<button type="button" class="btn-lg btn-info"
			style="align-content: center;">Xem Thêm</button>
	</a>
	<hr>
</div>
