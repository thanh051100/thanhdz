<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản lý sản phẩm</title>
<link rel="stylesheet" href="./css1/style.css" />
<link rel="stylesheet" href="css1/bootstrap.min.css" />
<style type="text/css">
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
.span9{
	width: 70%;
	margin-left: 20%;
	text-align: center;
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
							<button>
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
		<div class="row">
			


			<div class="span9">
				<div class="content">
					<div class="module">
						<div class="module-head">
							<h3 style="display: inline;">Quản lý sản phẩm</h3>
							<a href="themSp" class="btn btn-primary" style="float: right;"> Thêm sản phẩm </a>
						</div>
						<div class="module-body table">
							<table cellpadding="0" cellspacing="0" border="0"
								class="datatable-1 table table-bordered table-striped display"
								width="100%">
								<thead>
									<tr>
										<th>Mã sản phẩm</th>
										<th>Tến sản phẩm</th>
										<th>Giá</th>
										<th>Mô tả</th>
										<th>Ảnh</th>
										<th>Danh mục</th>
										<td>Chức năng</td>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="prod" items="">
										<tr class="odd gradeX">
											<td style="width: 50px;"></td>
											<td style="width: 80px;">}</td>
											<td style="width: 50px;"></td>
											<td style="width: 150px;"></td>
											<td style="width: 70px; height: 70px;"><img alt=""
												src=""></td>
											<td style="width: 30px;"></td>
											<td style="width: 50px;">
												<a href="" style="width: 70px;" class="btn btn-info">Cập nhật</a>
												<a href="" style="width: 70px;" class="btn btn-danger">Xóa</a>
											</td>
										</tr>
									</c:forEach>
								</tbody>
								<tfoot>
									<tr>
										<th>Mã sản phẩm</th>
										<th>Tến sản phẩm</th>
										<th>Giá</th>
										<th>Mô tả</th>
										<th>Ảnh</th>
										<th>Danh mục</th>
										<td>Chức năng</td>
									</tr>
								</tfoot>
							</table>
						</div>
					</div>
					<!--/.module-->

					<br />

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