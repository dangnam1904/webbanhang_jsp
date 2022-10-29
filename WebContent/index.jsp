<%@page import="java.io.Writer"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page pageEncoding="utf-8"%>
<%@ page import="Control.ProductsControl"%>
<%@ page import="Objects.Products"%>
<%@ page import="Control.BlogsControl"%>
<%@ page import="Objects.Blogs"%>
<%@ page import="Control.CategoryControl"%>
<%@ page import="Objects.Category"%>
<%@ page import="java.text.DecimalFormat"%>
<!doctype html>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Trang chủ</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- icon cho trang -->
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.ico">
<!-- Toàn bộ link css -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/magnific-popup.css">
<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/pe-icon-7-stroke.css">
<link rel="stylesheet" href="lib/css/nivo-slider.css" type="text/css" />
<link rel="stylesheet" href="lib/css/preview.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="assets/css/animate.css">
<link rel="stylesheet" href="assets/css/meanmenu.min.css">
<link rel="stylesheet" href="assets/css/bundle.css">
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/responsive.css">
<script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
	<%
		ProductsControl produts = new ProductsControl();
		BlogsControl blogs = new BlogsControl();
		CategoryControl category = new CategoryControl();
	%>
	<!-- Thêm phần tiêu đề trang -->
	<jsp:include page="layout/header.jsp"></jsp:include>
	<!-- Xong phần tiêu đề trang -->

	<!-- Bắt đầu slide -->
	<div class="slider-area">
		<div class="bend niceties preview-2">

			<div id="ensign-nivoslider" class="slides">
				<img src="assets/img/slider/2.png" alt=""
					title="#slider-direction-1" /> <img src="assets/img/slider/1.png"
					alt="" title="#slider-direction-2" />
			</div>
			<!-- Hình ảnh 1 -->
			<div id="slider-direction-1" class="t-cn slider-direction">
				<div class="container">
					<div class="slider-content t-lfl s-tb slider-1">
						<div class="title-container s-tb-c title-compress">
							<h1 class="title1">thế giới thư giản</h1>
							<h2 class="title2">Thiên đường bánh ngọt !</h2>
							<h3 class="title3">
								Đến với chúng tôi, thỏa sức chọn lựa những loại thức uống <br>hot
								nhất với giá rẻ hơn và khuyến mãi cực tốt
							</h3>
							<a class="btn-hover" href="pages/shop-page.jsp?id_product=0">Mua
								ngay <i class="fa fa-angle-double-right"></i>
							</a>
						</div>
					</div>
				</div>
			</div>
			<!-- Hình ảnh 2 -->
			<div id="slider-direction-2" class="slider-direction">
				<div class="container">
					<div class="slider-content t-lfl s-tb slider-1">
						<div class="title-container s-tb-c title-compress">
							<h1 class="title1">mở cửa mọi ngày</h1>
							<h2 class="title2">6h đến 23h</h2>
							<h3 class="title3">
								Không gian đẹp, phù hợp cho mọi lứa tuổi <br> đặt biệt các
								bạn trẻ có sở thích chụp hình.
							</h3>
							<a class="btn-hover" href="shop-page.html">Mua ngay <i
								class="fa fa-angle-double-right"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--Xong slider -->
	<!-- Bắt đầu dịch vụ - giao hàng  -->
	<div class="service-area pt-100">
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-3">
					<div class="single-service addm">
						<div class="service-icon">
							<i class="fa fa-bus"></i>
						</div>
						<div class="service-text">
							<h3>Miển phí vận chuyển</h3>
							<p>Giao hàng đảm bảo</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-3">
					<div class="single-service addm">
						<div class="service-icon">
							<i class="fa fa-credit-card"></i>
						</div>
						<div class="service-text">
							<h3>Hoàn trả tiền</h3>
							<p>Hoàn tiền nếu quá 30 ngày</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-3">
					<div class="single-service addm">
						<div class="service-icon">
							<i class="pe-7s-headphones"></i>
						</div>
						<div class="service-text">
							<h3>Hổ trợ trượt tuyến</h3>
							<p>Liên hệ (+84) 977 583 016</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-3">
					<div class="single-service">
						<div class="service-icon">
							<i class="fa fa-briefcase"></i>
						</div>
						<div class="service-text">
							<h3>khuyến mãi</h3>
							<p>Tạo niềm vui mua sắm</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Xong dịch vụ - giao hàng -->
	<!-- Bắt đầu sản phẩm nỗi bật -->
	<div class="portfolio-area ptb-100">
		<div class="container">
			<div class="section-title text-center mb-50">
				<h2>
					Sản phẩm nỗi bật<i class="fa fa-shopping-cart"></i>
				</h2>
			</div>
			<div class="shop-menu portfolio-left-menu text-center mb-50">
				<button class="active" data-filter="*">Mọi thứ</button>
				<%
					for (Category ls : category.getListCategory()) {
				%>
				<button data-filter=".mix<%=ls.getId()%>">
					<%=ls.getTenloai()%></button>
				<%
					}
				%>

			</div>
			<div class="row portfolio-style-2">
				<!-- Hiển thị sản phẩm -->
				<div class="grid">
					<!--(Bánh ngọt)1  -->
					<%
						int max = 33;
						int numb = produts.getListProducts().size();
						DecimalFormat numformat = new DecimalFormat("#,###,###");
						if (numb < max) {
							for (Products ls : produts.getListProducts()) {
					%>
					<div
						class="col-md-3 col-sm-6 col-xs-12 grid-item mix<%=ls.getId_loaisanpham()%> mb-50">
						<div class="single-shop">
							<div class="shop-img">
								<a href="javascript:void(0)"><img
									src="assets/img/shop/product/<%=ls.getAnhchinh()%>" alt="" /></a>
								<%
									if (ls.getTinhtrang() == 1) {
												if (ls.getKhuyenmai() > 0) {
								%>
								<div class="price-up-down">
									<span class="sale-new">Giảm <%=ls.getKhuyenmai()%>%
									</span>
								</div>
								<%
									}
											} else {
								%>
								<div class="price-up-down">
									<span class="sale-new">Hết bán </span>
								</div>
								<%
									}
								%>

								<div class="button-group">
									<a href="cart?status=add&id_product=<%=ls.getId()%>"
										title="Add to Cart"> <i class="pe-7s-cart"></i>
									</a> <a class="wishlist" href="#" title="Wishlist"> <i
										class="pe-7s-like"></i>
									</a> <a href="#" data-toggle="modal"
										data-target="#quick-view<%=ls.getId()%>" title="Quick View">
										<i class="pe-7s-look"></i>
									</a>
								</div>
							</div>
							<div class="shop-text-all">
								<div class="title-color fix">
									<div class="shop-title f-left">
										<h3>
											<a href="#" data-toggle="modal"
												data-target="#quick-view<%=ls.getId()%>"> <%=ls.getTensanpham()%></a>
										</h3>
									</div>
									<div class="price f-right">
										<%
											double price = ls.getGiagoc();
													int sale = ls.getKhuyenmai();
													price = price - (price * sale / 100);
													String price_nb = numformat.format(price);
										%>
										<span class="new"> <%=price_nb%>đ
										</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<%
						}
						} else {
							for (int i = 0; i < max; i++) {
					%>
					<div
						class="col-md-3 col-sm-6 col-xs-12 grid-item mix<%=produts.getListProducts().get(i).getId_loaisanpham()%> mb-50">
						<div class="single-shop">
							<div class="shop-img">
								<a href="javascript:void(0)"><img
									src="assets/img/shop/product/<%=produts.getListProducts().get(i).getAnhchinh()%>"
									alt="" /></a>
								<%
									if (produts.getListProducts().get(i).getTinhtrang() == 1) {
												if (produts.getListProducts().get(i).getKhuyenmai() > 0) {
								%>
								<div class="price-up-down">
									<span class="sale-new">Giảm <%=produts.getListProducts().get(i).getKhuyenmai()%>%
									</span>
								</div>
								<%
									}
											} else {
								%>
								<div class="price-up-down">
									<span class="sale-new">Hết bán </span>
								</div>
								<%
									}
								%>
								<div class="button-group">
									<a
										href="cart?status=add&id_product=<%=produts.getListProducts().get(i).getId()%>"
										title="Add to Cart"> <i class="pe-7s-cart"></i>
									</a> <a class="wishlist" href="#" title="Wishlist"> <i
										class="pe-7s-like"></i>
									</a> <a href="#" data-toggle="modal" data-target="#quick-view"
										title="Quick View"> <i class="pe-7s-look"></i>
									</a>
								</div>
							</div>
							<div class="shop-text-all">
								<div class="title-color fix">
									<div class="shop-title f-left">
										<h3>
											<a href="#" data-toggle="modal"
												data-target="#quick-view<%=produts.getListProducts().get(i)%>">
												<%=produts.getListProducts().get(i).getTensanpham()%></a>
										</h3>
									</div>
									<div class="price f-right">
										<%
											double price = produts.getListProducts().get(i).getGiagoc();
													int sale = produts.getListProducts().get(i).getKhuyenmai();
													price = price - (price * sale / 100);
													String price_nb = numformat.format(price);
										%>
										<span class="new"> <%=price_nb%> đ
										</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<%
						}
						}
					%>
				</div>
				<!-- Xong hiển thị sản phẩm -->
			</div>
			<div class="text-center">
				<a class="hvr-shutter-out-horizontal"
					href="pages/shop-page.jsp?id_product=0">Xem thêm <i
					class="fa fa-angle-double-right"></i>
				</a>
			</div>
		</div>
	</div>
	<!-- Xong sản phẩm nỗi bật -->
	<!-- Bắt đầu khu vực khuyến mãi -->
	<div class="offer-area shop-text bg-opacity-black-90">
		<div class="container">
			<div class="subscribe-bg ptb-80">
				<div class="row">
					<div class="col-md-offset-3 col-md-6 col-sm-offset-2 col-sm-8 ">
						<div class="offer-text text-center">
							<h3>chương trình khuyến mãi</h3>
							<div class="text-center">
								<a class="hvr-shutter-out-horizontal"
									href="pages/shop-page.jsp?id_product=0">mua ngay <i
									class="fa fa-angle-double-right"></i>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Xong khu vực khuyến mãi -->
	<!-- Bắt đầu sản phẩm mới -->
	<div class="special-offer ptb-100">
		<div class="container">
			<div class="section-title text-center mb-50">
				<h2>
					Sản phẩm mới <i class="fa fa-shopping-cart"></i>
				</h2>
			</div>
			<div class="row">
				<%
					int index = -1;
					for (Products ls : produts.getListProducts()) {
						index++;
						if (index == 0) {
				%>
				<div class="special-slider-active owl-carousel">
					<div class="single-special-slider">
						<div class="col-lg-12 col-md-12 col-xs-12">
							<div class="single-shop">
								<div class="shop-img">
									<a href="javascript:void(0)"><img
										src="assets/img/shop/product/<%=ls.getAnhchinh()%>" alt="" /></a>
									<div class="price-up-down">
										<span class="sale-new">Mới</span>
									</div>
									<div class="button-group">
										<a href="cart?status=add&id_product=<%=ls.getId()%>"
											title="Add to Cart"> <i class="pe-7s-cart"></i>
										</a> <a class="wishlist" href="#" title="Wishlist"> <i
											class="pe-7s-like"></i>
										</a> <a href="#" data-toggle="modal"
											data-target="#quick-view<%=ls.getId()%>" title="Quick View">
											<i class="pe-7s-look"></i>
										</a>
									</div>
								</div>
								<div class="shop-text-all">
									<div class="title-color fix">
										<div class="shop-title f-left">
											<h3>
												<a href="#" data-toggle="modal"
													data-target="#quick-view<%=ls.getId()%>"><%=ls.getTensanpham()%></a>
											</h3>
										</div>
										<div class="price f-right">
											<%
												double price = ls.getGiagoc();
														int sale = ls.getKhuyenmai();
														price = price - (price * sale / 100);
														String price_nb = numformat.format(price);
											%>
											<span class="new"> <%=price_nb%>đ
											</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<%
						} else {
					%>

					<div class="single-special-slider">
						<div class="col-lg-12 col-md-12 col-xs-12">
							<div class="single-shop">
								<div class="shop-img">
									<a href="javascript:void(0)"><img
										src="assets/img/shop/product/<%=ls.getAnhchinh()%>" alt="" /></a>
									<div class="price-up-down">
										<span class="sale-new">Mới</span>
									</div>
									<div class="button-group">
										<a href="cart?status=add&id_product=<%=ls.getId()%>"
											title="Add to Cart"> <i class="pe-7s-cart"></i>
										</a> <a class="wishlist" href="#" title="Wishlist"> <i
											class="pe-7s-like"></i>
										</a> <a href="#" data-toggle="modal"
											data-target="#quick-view<%=ls.getId()%>" title="Quick View">
											<i class="pe-7s-look"></i>
										</a>
									</div>
								</div>
								<div class="shop-text-all">
									<div class="title-color fix">
										<div class="shop-title f-left">
											<h3>
												<a href="#" data-toggle="modal"
													data-target="#quick-view<%=ls.getId()%>"> <%=ls.getTensanpham()%></a>
											</h3>
										</div>
										<div class="price f-right">
											<%
												double price = ls.getGiagoc();
														int sale = ls.getKhuyenmai();
														price = price - (price * sale / 100);
														String price_nb = numformat.format(price);
											%>
											<span class="new"> <%=price_nb%>đ
											</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<%
						}
						}
					%>
				</div>
			</div>
		</div>
		<!-- Xong sản phẩm mới -->
		<!-- Bắt đầu phần bài viết -->
		<div class="blog-area pb-70">
			<div class="container">
				<div class="section-title text-center mb-50">
					<h2>
						Chia sẽ công thức nấu ngon<i class="fa fa-pencil"></i>
					</h2>
				</div>
				<div class="row">
					<%
						int dem = 0;
						for (Blogs ls : blogs.getListBlogs()) {
							if (dem >= 6) {
								break;
							}
					%>
					<div class="col-md-4 col-sm-6">
						<div class="blog-details mb-30">
							<div class="blog-img">
								<a href="pages/blog-details.jsp?id_blog=<%=ls.getId()%>"><img
									src="assets/img/blog/<%=ls.getHinhanh()%>" alt=""
									title="<%=ls.getMota()%>"></a>
								<div class="blog-quick-view">
									<a href="pages/blog-details.jsp?id_blog=<%=ls.getId()%>"> <i
										class="pe-7s-link"></i>
									</a>
								</div>
							</div>
							<div class="blog-meta">
								<h4>
									<%
										//xử lý độ dài tiêu đề
											String tieude;
											if (ls.getTieude().length() > 20) {
												tieude = ls.getTieude().substring(0, 20) + "...";
											} else {
												tieude = ls.getTieude();
											}
									%>
									<a href="pages/blog-details.jsp?id_blog=<%=ls.getId()%>"> <%=tieude%></a>
								</h4>
								<ul class="meta">
									<%
										String[] date = ls.getNgayDang().split(" ");
									%>
									<li><%=date[0]%></li>
								</ul>
								<a href="pages/blog-details.jsp?id_blog=<%=ls.getId()%>">
									Đọc thêm <i class="pe-7s-next"></i>
								</a>
							</div>
						</div>
					</div>
					<%
						dem++;
						}
					%>
				</div>
			</div>
		</div>
		<!-- Xong phần bài viết -->

		<!-- Thêm chân trang -->
		<jsp:include page="layout/footer.jsp"></jsp:include>
		<!-- Xong thêm chân trang -->

		<!-- Thêm xem chi tiết sản phẩm -->
		<jsp:include page="layout/detail_product.jsp"></jsp:include>
		<!-- Xong xem chi tiết sản phẩm  -->


		<!-- Toàn bộ js -->
		<script src="assets/js/vendor/jquery-1.12.0.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/jquery.meanmenu.js"></script>
		<script src="assets/js/jquery.magnific-popup.min.js"></script>
		<script src="assets/js/isotope.pkgd.min.js"></script>
		<script src="assets/js/imagesloaded.pkgd.min.js"></script>
		<script src="assets/js/owl.carousel.min.js"></script>
		<script src="assets/js/jquery.validate.min.js"></script>
		<script src="lib/js/jquery.nivo.slider.js"></script>
		<script src="lib/home.js"></script>
		<script src="assets/js/plugins.js"></script>
		<script src="assets/js/main.js"></script> 
</body>

</html>