<%@ page pageEncoding="utf-8"%>
<%@ page import="Model.dao_Blogs"%>
<%@ page import="Objects.Blogs"%>
<%@ page import="Objects.Users"%>
<%@ page import="Objects.Comments"%>
<%@ page import="Control.BlogsControl"%>
<%@ page import="Control.UserControl"%>
<%@ page import="Control.CommentsControl"%>
<!doctype html>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Chi tiết bài viết</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- icon hiển thị -->
<link rel="shortcut icon" type="image/x-icon"
	href="../assets/img/favicon.ico">

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
<link rel="stylesheet" href="../admin/lib/bower_components/sweetalert2/dist/sweetalert2.css">
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
				<h2 class="breadcrumb-title">Thảo luận bài viết</h2>
				<ul>
					<li><a class="active" href="../index.jsp">Trang chủ</a></li>
					<li>Thảo luận</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- Xong tiêu đề trang con-->
	<!-- Bắt đầu chi tiết bài viết -->
	<div class="blog-sidebar-area ptb-100">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-lg-9">
					<div class="blog-wrapper">
						<div class="single-blog">
							<%
								BlogsControl blog = new BlogsControl();
								UserControl user = new UserControl();
								Long id = Long.parseLong(request.getParameter("id_blog"));
								Blogs bl = blog.getFindWithId(id);

								CommentsControl comment = new CommentsControl();

								Users us = new Users();
								Long id_us = bl.getId_taikhoan();
								String name = user.getFindById(id_us).getTenhienthi();
							%>
							<div class="blog-details-text mt-20">
								<h3><%=bl.getTieude()%></h3>
								<div class="post-info">
									<ul>
										<li><i class="fa fa-user"></i> <%=name%></li>
										<li><i class="fa fa-calendar"></i><%=bl.getNgayDang()%></li>
										<li><a href="#"><i class="fa fa-comments-o"></i><%=comment.getListCommnetsWithID_BaiViet(id).size()%></a></li>
									</ul>
								</div>
								<div class="mt-50">
									<%=bl.getNoidung()%>
								</div>
								
								<br></br>
							</div>
							<%
								if (session.getAttribute("uslogin") != null) {
									Users uslog = (Users) session.getAttribute("uslogin"); 
									// Giá trị session tồn tại 2 giờ
									session.setMaxInactiveInterval(2 * 60 * 60); 
							%>
							<div class="leave-comment">
								<br></br>
								<div class="row">
									<div class="col-md-12">
										<div class="text-leave">
											<textarea id="textcmt" placeholder="Nội dung bình luận *"></textarea>
											<button class="submit" onclick="submitcmt(<%=id%>, <%=uslog.getId()%>)">Đăng
												bình luận</button>
										</div>
									</div>
								</div>
							</div>
							<%
								}
								else{
							%>
							<div class="leave-comment">
								<br></br>
								<div class="row">
									<div class="col-md-12">
										<div class="text-leave">
											<textarea placeholder="Bạn cần đăng nhập để dùng tính năng này... " disabled></textarea>
											<button class="submit" onclick="golog()">Đăng
												bình luận</button>
										</div>
									</div>
								</div>
							</div>
							<%} %>
							<div class="news-details-bottom mtb-60">
								<h3 class="leave-comment-text">Danh sách bình luận</h3>
								<div class="blog-top" id="viewcmt">
									<%
										for (Comments lscmt : comment.getListCommnetsWithID_BaiViet(id)) {
									%>
									<div class="news-allreply">
										<%
											Long id_uscmt = lscmt.getId_taikhoan();
												us = user.getFindById(id_uscmt);
										%>
										<a href="#"><img
											src="../assets/img/testimonial/<%=us.getHinhanh()%>" alt=""></a>
									</div>
									<div class="blog-img-details">
										<div class="blog-title">
											<div class="blog-title-1">
												<h3><%=us.getTenhienthi()%></h3>
												<span><i class="fa fa-calendar"></i> <%=lscmt.getNgayDang()%></span>
											</div>
										</div>
										<p class="p-border" id="contentcmt"><%=lscmt.getNoidung()%></p>
									</div>
									<%
										}
									%>
								</div>
							</div>

						</div>
					</div>
				</div>
				<div class="col-md-4 col-lg-3">
					<div class="blog-sidebar mrg-for-sm-top">
						<div class="single-sidebar">
							<h3 class="sidebar-title">Thể loại bài viết</h3>
							<div class="sidebar-list">
								<ul>
									<li><input type="checkbox"> <a href="#"> Công
											thức bánh ngọt (7)</a></li>
									<li><input type="checkbox"> <a href="#">Công
											thức bánh mặn (9)</a></li>
									<li><input type="checkbox"> <a href="#">Công
											thức Trà sữa (3)</a></li>
									<li><input type="checkbox"> <a href="#">Công
											thức nước ngọt(1)</a></li>
								</ul>
							</div>
						</div>
						<div class="single-sidebar">
							<h3 class="sidebar-title">Bài đăng xem nhiều</h3>
							<div class="recent-all">
								<div class="recent-img-text mb-20">
									<div class="recent-img">
										<a href="#"><img src="../assets/img/blog/1.jpg" alt=""></a>
									</div>
									<div class="recent-text">
										<h4>
											<a href="#">Tiêu đề bài viết</a>
										</h4>
										<div class="post-info">
											<ul>
												<li><i class="fa fa-calendar"></i>ngày 28 tháng 8 năm
													2018</li>
											</ul>
										</div>
									</div>
								</div>
								<div class="recent-img-text mb-20">
									<div class="recent-img">
										<a href="#"><img src="../assets/img/blog/2.jpg" alt=""></a>
									</div>
									<div class="recent-text">
										<h4>
											<a href="#">Tiêu đề bài viết</a>
										</h4>
										<div class="post-info">
											<ul>
												<li><i class="fa fa-calendar"></i>ngày 28 tháng 8 năm
													2018</li>
											</ul>
										</div>
									</div>
								</div>
								<div class="recent-img-text">
									<div class="recent-img">
										<a href="#"><img src="../assets/img/blog/3.jpg" alt=""></a>
									</div>
									<div class="recent-text">
										<h4>
											<a href="#">Tiêu đề bài viết</a>
										</h4>
										<div class="post-info">
											<ul>
												<li><i class="fa fa-calendar"></i>ngày 28 tháng 8 năm
													2018</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Kết thúc chi tiết bài viết -->

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
	<script src="../admin/lib/bower_components/sweetalert2/dist/sweetalert2.js"></script>
	<script> 
		function submitcmt(id_blog, id_user) { 
			$.ajax({
				url : '../blog_cmt?cmt='+$("#textcmt").val()+'&id_blog='+id_blog+'&id_user='+id_user,
				type : 'GET',
			}).done(function(responsive) { 
				$("#viewcmt").html(responsive); 
				$("#textcmt").val("");
			}); 
		}
		function golog() { 
			swal('Vui lòng đăng nhập để dùng tính năng này');
		}
	</script>
</body>


</html>