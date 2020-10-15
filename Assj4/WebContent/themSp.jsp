<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản lý sản phẩm</title>
<link rel="stylesheet" href="./css1/style.css" />
<link rel="stylesheet" href="css1/bootstrap.min.css" />
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
<style type="text/css">
.header-search-form input {
	width: 100%;
	height: 44px;
	font-size: 14px;
	border-radius: 50px;
	border: none;
	padding: 0 19px;
	background: #f0f0f0;
}

a:hover {
	text-decoration: none;
}

.add-card {
	box-sizing: content-box;
}

.log {
	color: #00BFFF !important;
}

#chuadangnhap {
	display: inline;
}

#dadangnhap {
	display: none;
}

.btnlogout {
	margin-left: 10px;
	border: 0px;
	background-color: white;
	cursor: pointer;
}

#ql {
	display: none;
}

.imgUser {
	width: 50px;
	height: 50px;
	-moz-border-radius: 25px;
	-webkit-border-radius: 25px;
	-border-radius: 25px;
	border-radius: 25px;
}

.span9 {
	width: 70%;
	margin-left: 30px;
}

.span3 {
	width: 250px;
}

body {
	font-size: 13px;
	font-family: 'Open Sans', Arial, sans-serif;
	background: #fff;
	color: #777
}

@media ( max-width :767px) {
	body {
		padding: 0 !important
	}
	.wrapper {
		padding: 20px 15px
	}
}
</style>
</head>
<body>
	<header class="header-section">
		<div class="header-top">
			<div class="container">
				<div class="row">
					<div class="col-lg-2 text-center text-lg-left">
						<!-- logo -->
						<a href="trangchu" class="site-logo"> <img src="img/logo.png"
							alt="">
						</a>
					</div>
					<div class="col-xl-6 col-lg-5">
						<form class="header-search-form">
							<input type="text" placeholder="Tìm kiếm ...">
							<button style="height: 80%">
								<img alt=""
									src="https://i0.wp.com/s1.uphinh.org/2020/04/26/search.png">
							</button>
						</form>
					</div>
					<div class="col-xl-4 col-lg-5">
						<div class="user-panel">
							<div id="chuadangnhap" style="display: ${displayout};"
								class="up-item">
								<i class="flaticon-profile"></i> <a class="log"
									href="dangnhap.jsp">Đăng nhập</a> hoặc <a class="log"
									href="dangky.jsp">tạo tài khoản</a>
							</div>
							<div id="dadangnhap"
								style="display: ${displaylog}; padding-right: 20px;"
								class="up-item">
								<img alt="user" class="imgUser" src="./img/user/${photo}">Xin
								chào, ${fullname}
							</div>
							<div class="up-item">
								<div class="shopping-card">
									<i class="flaticon-bag"></i>
								</div>
								<a href="#">Giỏ hàng</a>
							</div>
							<div class="up-item">
								<%-- 								<a href="#" id="chuadangnhap" style="margin-left: 10px; display: ${displaylog};">Đăng xuất</a> --%>
								<form action="logoff">
									<button id="dadangnhap" class="btnlogout"
										style=" margin-left: 250px; display: ${displaylog};"
										name="btAction" value="logout">Đăng xuất</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<nav class="main-navbar">
			<div class="container">
				<!-- menu -->
				<ul class="main-menu">
					<li><a href="trangchu">Trang chủ</a></li>
					<li><a href="#">Danh mục</a>
						<ul class="sub-menu">
							<li><a href="#">Apple</a></li>
							<li><a href="#">Samsung</a></li>
							<li><a href="#">XiaoMi</a></li>
							<li><a href="#">Oppo</a></li>
							<li><a href="#">Huwai</a></li>
							<li><a href="#">Nokia</a></li>
						</ul></li>
					<li><a href="#">Giới thiệu</a></li>
					<li><a href="#">Liên hệ</a></li>
					<li id="ql" style="float: right; display: ${isAdmin}"><a
						href="#">Quản lý</a>
						<ul class="sub-menu">
							<li><a href="qlsp">Quản lý sản phẩm</a></li>
							<li><a href="qltk">Quản lý người dùng</a></li>
						</ul></li>
				</ul>
			</div>
		</nav>
	</header>
	<div class="container">
		<div class="row" style="padding-top: 50px;">



			<div class="span9">
				<div class="content">
					<div class="module">
						<div class="module-head">
							<c:if test="${editProduct == null}">
								<h3>Thêm sản phẩm</h3>
							</c:if>
							<c:if test="${editProduct != null}">
								<h3>Sửa sản phẩm</h3>
							</c:if>
						</div>
						<div class="module-body">
							<c:if test="${editProduct == null}">
								<form action="insertProduct" class="form-horizontal row-fluid"
									method="post">
							</c:if>
							<c:if test="${editProduct != null}">
								<form action="updateProduct" class="form-horizontal row-fluid"
									method="post">
							</c:if>
							<c:if test="${editProduct != null}">
								<input type="hidden" name="txtMaSp"
									value="<c:out value='${editProduct.maSp}' />" />
							</c:if>
							<div class="control-group">
								<label class="control-label" for="basicinput">Tên sản
									phẩm</label>
								<div class="controls">
									<input type="text" name="txtTenSp" id="txtTenSp"
										value="<c:out value='${editProduct.tenSp}'/>" placeholder=""
										class="span8">
									
								</div>
							</div>

							<div class="control-group">
								<label class="control-label" for="basicinput">Giá</label>
								<div class="controls">
									<input type="text" name="txtGia" id="txtGia" placeholder=""
										value="<c:out value='${editProduct.gia}'/>" class="span8">
									<span class="add-on">$</span>
								</div>
							</div>

							<div class="control-group">
								<label class="control-label" for="basicinput">Mô tả</label>
								<div class="controls">
									<textarea class="span8" name="txtMota" rows="5"><c:out
											value='${editProduct.moTa}' /></textarea>
								</div>
							</div>

							<div class="control-group">
								<label class="control-label" for="basicinput">Ảnh</label>
								<div class="controls">
									<div class="input-prepend">
										<input type="text" name="txtAnh" id="txtTenSp"
											value="<c:out value='${editProduct.anh}'/>" placeholder=""
											class="span8"> <input class="span8" type="file"
											placeholder="prepend">
									</div>
								</div>
							</div>

							<div class="control-group">
								<label class="control-label" for="basicinput">Danh mục</label>
								<div class="controls">
									<c:if test="${editProduct == null}">
										<select name="txtDanhMuc" tabindex="1"
											data-placeholder="Select here.." class="span8">
											<option value="">Chọn tại đây ...</option>
											<c:forEach var="cate" items="${listAllCategories}">
												<option value="${cate.maDanhMuc}">${cate.tenDanhMuc}</option>
											</c:forEach>
										</select>
									</c:if>
									<c:if test="${editProduct != null}">
										<select name="txtDanhMuc" tabindex="1"
											data-placeholder="Select here.." class="span8">
											<option value="">Chọn tại đây ...</option>
											<c:forEach var="cate" items="${listAllCategories}">
												<option value="${cate.maDanhMuc}">${cate.tenDanhMuc}</option>
											</c:forEach>

											<option selected="selected"
												value="${editProduct.categories.maDanhMuc}">${editProduct.categories.tenDanhMuc}</option>
										</select>
									</c:if>
								</div>
							</div>

							<div class="control-group">
								<div class="controls">
									<c:if test="${editProduct == null}">
										<button type="submit" class="btn">Thêm</button>
									</c:if>
									<c:if test="${editProduct != null}">
										<button type="submit" class="btn">Cập nhật</button>
									</c:if>
								</div>
							</div>
							</form>
						</div>
					</div>
				</div>
				<!--/.content-->
			</div>
			<!--/.span9-->
		</div>
	</div>
	<!--/.container-->
	<jsp:include page="fotter.jsp"></jsp:include>
	<script src="scripts/jquery-1.9.1.min.js"></script>
	<script src="scripts/jquery-ui-1.10.1.custom.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="scripts/datatables/jquery.dataTables.js"></script>
	<script>
		$(document).ready(
				function() {
					$('.datatable-1').dataTable();
					$('.dataTables_paginate').addClass(
							"btn-group datatable-pagination");
					$('.dataTables_paginate > a').wrapInner('<span />');
					$('.dataTables_paginate > a:first-child').append(
							'<i class="icon-chevron-left shaded"></i>');
					$('.dataTables_paginate > a:last-child').append(
							'<i class="icon-chevron-right shaded"></i>');
				});
	</script>
</body>
</html>