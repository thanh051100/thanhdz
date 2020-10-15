<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Đăng ký</title>
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">
<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
<style type="text/css">
.main {
	padding: 50px 0 !important;
}

body {
	font-family: Arial;
}

.form-title {
	font-family: Tahoma;
}

input {
	font-family: Arial;
}
</style>
</head>
<body>
	<div class="main">
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Đăng ký</h2>
						<form action="register" method="POST" class="register-form"
							id="register-form">
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="user" id="name" placeholder="Tên đăng nhập" required="required" />
							</div>
							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="pass" id="pass" placeholder="Mật khẩu" required="required" />
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									type="email" name="email" id="email" placeholder="Email" />
							</div>
							<div class="form-group">
								<label for="fullname"><i class="zmdi zmdi-account-o"></i></label>
								<input type="text" name="fullname" id="fullname" required="required"
									placeholder="Họ tên" />
							</div>
							<div class="form-group">
								<label for="phone"><i class="zmdi zmdi-phone"></i></label> <input
									type="text" name="phone" id="phone" placeholder="Số điện thoại" />
							</div>
							
					
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Đăng ký" />
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="images/signup-image.jpg" alt="sing up image">
						</figure>
						<div class="signup-image-link">
							<a href="dangnhap.jsp">Đăng nhập</a>/<a href="trangchu.jsp"> Trang chủ</a>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
</body>
</html>