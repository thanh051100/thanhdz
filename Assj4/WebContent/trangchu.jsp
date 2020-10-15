<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.List"%>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="./img/favicon.ico" rel="shortcut icon" />
<title>Developer shop</title>
<link rel="stylesheet" href="css1/bootstrap.min.css" />
<link rel="stylesheet" href="css1/font-awesome.min.css" />
<link rel="stylesheet" href="css1/flaticon.css" />
<link rel="stylesheet" href="css1/slicknav.min.css" />
<link rel="stylesheet" href="css1/jquery-ui.min.css" />
<link rel="stylesheet" href="css1/owl.carousel.min.css" />
<link rel="stylesheet" href="css1/animate.css" />
<link rel="stylesheet" href="./css1/style.css" />
<style type="text/css">
.add-card:hover {
	/* 	box-sizing: content-box; */
	width: 185px !important;
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
</style>
</head>
<body>
	<!-- 	<!-- 	Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header section -->
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
							<!-- 							<button> -->
							<!-- 								<img alt="" -->
							<!-- 									src="https://i0.wp.com/s1.uphinh.org/2020/04/26/search.png"> -->
							<!-- 							</button> -->
							<button>
								<i class="flaticon-search"></i>
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
								<a href="giohang">Giỏ hàng</a>
							</div>
							<div class="up-item">
								<%-- 								<a href="#" id="chuadangnhap" style="margin-left: 10px; display: ${displaylog};">Đăng xuất</a> --%>
								<form action="logoff">
									<button id="dadangnhap" class="btnlogout"
										style="margin-left: 250px; display: ${displaylog};"
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
					<li><a href="">Trang chủ</a></li>
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
					<li id="ql" style="float: right; display: "><a
						href="#">Quản lý</a>
						<ul class="sub-menu">
							<li><a href="qlsp">Quản lý sản phẩm</a></li>
							<li><a href="qltk">Quản lý người dùng</a></li>
						</ul></li>
				</ul>
			</div>
		</nav>
	</header>
	<!-- Header section end -->
	<!-- letest product section -->
	<section class="top-letest-product-section">
		<div class="container">
			<div class="section-title">
				<h2>SẢN PHẨM MỚI NHẤT</h2>
			</div>
			<div class="product-slider owl-carousel">
				<div class="card" style="width: 18rem;">
					<img class="card-img-top" src="img/product/5.jpg"
						alt="Card image cap">
					<div class="price">
						<span class="old_price"> 450.000 <sup> đ </sup>
						</span> <br /> <span class="new_price"> 350.000 <sup> đ </sup>
						</span>
					</div>
				</div>
				<div class="card" style="width: 18rem;">
					<img class="card-img-top" src="img/product/6.jpg"
						alt="Card image cap">
					<div class="price">
						<span class="old_price"> 450.000 <sup> đ </sup>
						</span> <br /> <span class="new_price"> 350.000 <sup> đ </sup>
						</span>
					</div>
				</div>
				<div class="card" style="width: 18rem;">
					<img class="card-img-top" src="img/product/7.jpg"
						alt="Card image cap">
					<div class="price">
						<span class="old_price"> 450.000 <sup> đ </sup>
						</span> <br /> <span class="new_price"> 350.000 <sup> đ </sup>
						</span>
					</div>
				</div>
				<div class="card" style="width: 18rem;">
					<img class="card-img-top" src="img/product/8.jpg"
						alt="Card image cap">
					<div class="price">
						<span class="old_price"> 450.000 <sup> đ </sup>
						</span> <br /> <span class="new_price"> 350.000 <sup> đ </sup>
						</span>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- letest product section end -->

	<!-- Product filter section -->
	<section class="product-filter-section">
		<div class="container">
			<div class="section-title">
				<h2>SẢN PHẨM BÁN CHẠY</h2>
			</div>
			
			<div class="product-slider owl-carousel">
				<div class="card" style="width: 18rem;">
					<img class="card-img-top" src="img/product/1.jpg"
						alt="Card image cap">
					<div class="price">
						<span class="old_price"> 450.000 <sup> đ </sup>
						</span> <br /> <span class="new_price"> 350.000 <sup> đ </sup>
						</span>
					</div>
				</div>
				<div class="card" style="width: 18rem;">
					<img class="card-img-top" src="img/product/2.jpg"
						alt="Card image cap">
					<div class="price">
						<span class="old_price"> 450.000 <sup> đ </sup>
						</span> <br /> <span class="new_price"> 350.000 <sup> đ </sup>
						</span>
					</div>
				</div>
				<div class="card" style="width: 18rem;">
					<img class="card-img-top" src="img/product/3.jpg"
						alt="Card image cap">
					<div class="price">
						<span class="old_price"> 450.000 <sup> đ </sup>
						</span> <br /> <span class="new_price"> 350.000 <sup> đ </sup>
						</span>
					</div>
				</div>
				<div class="card" style="width: 18rem;">
					<img class="card-img-top" src="img/product/4.jpg"
						alt="Card image cap">
					<div class="price">
						<span class="old_price"> 450.000 <sup> đ </sup>
						</span> <br /> <span class="new_price"> 350.000 <sup> đ </sup>
						</span>
					</div>
				</div>
		
			</div>
			<div class="text-center pt-5">
				<button class="site-btn sb-line sb-dark">Xem thêm</button>

			</div>
	</section>
	<!-- Product filter section end -->
	<jsp:include page="fotter.jsp"></jsp:include>
	<script src="js1/jquery-3.2.1.min.js"></script>
	<script src="js1/bootstrap.min.js"></script>
	<script src="js1/jquery.slicknav.min.js"></script>
	<script src="js1/owl.carousel.min.js"></script>
	<script src="js1/jquery.nicescroll.min.js"></script>
	<script src="js1/jquery.zoom.min.js"></script>
	<script src="js1/jquery-ui.min.js"></script>
	<script src="js1/main.js"></script>
</body>
</html>