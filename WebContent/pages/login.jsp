<%@ page pageEncoding="utf-8"%>
<!doctype html>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Đăng nhập</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- icon hình ảnh -->
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.ico">

<!-- Toàn bộ css -->
<link rel="stylesheet" href="../assets/css/bootstrap.min.css">
<link rel="stylesheet" href="../assets/css/magnific-popup.css">
<link rel="stylesheet" href="../assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="../assets/css/font-awesome.min.css">
<link rel="stylesheet" href="../assets/css/pe-icon-7-stroke.css">
<link rel="stylesheet" href="../lib/css/nivo-slider.css" type="text/css" />
<link rel="stylesheet" href="../lib/css/preview.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="../assets/css/animate.css">
<link rel="stylesheet" href="../assets/css/meanmenu.min.css">
<link rel="stylesheet" href="../assets/css/bundle.css">
<link rel="stylesheet" href="../assets/css/style.css">
<link rel="stylesheet" href="../assets/css/responsive.css">
<script src="../assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>

	<!-- Thêm phần tiêu đề trang -->
	<jsp:include page="../layout/headerpage.jsp"></jsp:include>
	<!-- Xong phần tiêu đề trang -->


	<!-- Bắt đầu tiêu đề trang con -->
	<div class="breadcrumbs-area breadcrumb-bg ptb-100">
		<div class="container">
			<div class="breadcrumbs text-center">
				<h2 class="breadcrumb-title">Đăng nhập hệ thống</h2>
				<ul>
					<li><a class="active" href="../index.jsp">Trang chủ</a></li>
					<li>Đăng nhập</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- Xong tiêu đề trang con-->
	<!-- Bắt đầu phần đăng nhập -->
	<div class="login-area ptb-100">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3">
					<div class="login-content">
						<div class="login-title">
							<%
								if (session.getAttribute("SingupSuccess") != null) {
							%>
							<div class="alert alert-success">
								<%=session.getAttribute("SingupSuccess")%>
							</div>
							<%
								session.removeAttribute("SingupSuccess");
								}
							%>
							<h4>Đăng nhập</h4>
							<p>Cung cấp thông tin đăng nhập bên dưới.</p>
						</div>
						<div class="login-form">
							<form action="login" method="post">
								<input name="user-name" placeholder="Tên tài khoản hoặc email"
									type="text" required> <input name="user-password"
									placeholder="Mật khẩu" type="password" required>
								<%
									if (session.getAttribute("errorlogin") != null) {
								%>
								<div class="alert alert-danger"><center><%=session.getAttribute("errorlogin")%></center></div>
								<%
									session.removeAttribute("errorlogin");
									}
								%>  
								<input name="link-back" hidden value="<%=request.getHeader("referer")%>">
								<div class="button-remember">
									<button class="login-btn" type="submit">Đăng nhập</button>
								</div> 
								<div class="new-account">
									<p>
										<i class="pe-7s-add-user"></i> <a href="register.jsp">Tạo
											mới một tài khoản.</a>
									</p>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Xong phần đăng nhập -->


	<!-- Thêm chân trang -->
	<jsp:include page="../layout/footerpage.jsp"></jsp:include>
	<!-- Xong thêm chân trang -->


	<!-- Toàn bộ js -->
	<script src="../assets/js/vendor/jquery-1.12.0.min.js"></script>
	<script src="../assets/js/bootstrap.min.js"></script>
	<script src="../assets/js/jquery.meanmenu.js"></script>
	<script src="../assets/js/jquery.magnific-popup.min.js"></script>
	<script src="../assets/js/isotope.pkgd.min.js"></script>
	<script src="../assets/js/imagesloaded.pkgd.min.js"></script>
	<script src="../assets/js/jquery.validate.min.js"></script>
	<script src="../assets/js/owl.carousel.min.js"></script>
	<script src="../lib/js/jquery.nivo.slider.js"></script>
	<script src="../lib/home.js"></script>
	<script src="../assets/js/plugins.js"></script>
	<script src="../assets/js/main.js"></script> 
</body>
</html>