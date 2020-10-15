<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Đăng nhập</title>
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">
<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
<style type="text/css">
	.main{
		padding: 50px 0 !important;
	} 
	body{
		font-family: Arial;
	}
	.form-title{
		font-family: Tahoma;
	}
	input{
		font-family: Arial;
	}
	.form-submit{
		border: none;
	}
</style>
</head>
<body>
	<div class="main">
		<section class="sign-in">
			<div class="container">
				<div class="signin-content">
					<div class="signin-image">
						<figure>
							<img src="images/signin-image.jpg" alt="sing up image">
						</figure>
						<a href="dangky.jsp" class="signup-image-link">Tạo tài khoản</a>
					</div>

					<div class="signin-form">
						<h2 class="form-title">Đăng nhập</h2>
						${fail}
						<form action="login" method="POST" class="register-form" id="login-form">
							<div class="form-group">
								<label for="your_name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="txtUser" id="your_name"
									placeholder="Tên đăng nhập" />
							</div>
							<div class="form-group">
								<label for="your_pass"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="txtPass" id="your_pass"
									placeholder="Mật khẩu" />
							</div>
							<div class="form-group">
								<input type="checkbox" name="remember-me" id="remember-me"
									class="agree-term" /> <label for="remember-me"
									class="label-agree-term"><span><span></span></span>Lưu mật khẩu</label>
							</div>
							<div class="form-group form-button">
									<button class="form-submit" name="btAction" value="Login">Đăng nhập</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>
	</div>
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
</body>
</html>