<%@ page pageEncoding="utf-8"%>
<%@ page import="Objects.Products"%>
<%@ page import="Control.ProductsControl"%>
<%@ page import="Objects.Category"%>
<%@ page import="Control.CategoryControl"%>
<%@ page import="java.text.DecimalFormat"%>
<%@ page import="Control.DetailProductsControl"%>
<%@ page import="Control.ProductsControl"%>
<%@ page import="Objects.DetailProducts"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Sản phẩm</title>
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
<link rel="stylesheet" href="../assets/css/jquery-ui.css">
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
				<h2 class="breadcrumb-title">DANH MỤC SẢN PHẨM</h2>
				<ul>
					<li><a class="active" href="../index.jsp">Trang chủ</a></li>
					<li>Sản phẩm</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- Xong tiêu đề trang con -->
	<!-- Bắt đầu nội dung trang danh sách sản phẩm -->
	<div class="shop-page-area ptb-100">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<div class="blog-sidebar">
						<div class="single-sidebar">
							<h3 class="sidebar-title">Các sản phẩm chỉ với giá</h3>
							<div class="price-filter">
								<div id="slider-range"></div>
								<div class="price-slider-amount">
									<input type="text" id="amount" name="price" />
								</div>
							</div>
						</div>
						<div class="single-sidebar">
							<h3 class="sidebar-title">Loại sản phẩm</h3>
							<div class="sidebar-list">
								<ul>
									<%
										CategoryControl category = new CategoryControl();
										for (Category ls : category.getListCategory()) {
									%>
									<li><input type="checkbox"> <a
										href="shop-page.jsp?id_product=<%=ls.getId()%>"><%=ls.getTenloai()%></a></li>
									<%
										}
									%>
								</ul>
							</div>
						</div>
						<div class="single-sidebar">
							<h3 class="sidebar-title">Lựa chọn theo màu</h3>
							<div class="sidebar-list">
								<ul>
									<li><input type="checkbox"> <a href="#">Màu
											hồng (8)</a></li>
									<li><input type="checkbox"> <a href="#">Màu
											xanh (5)</a></li>
									<li><input type="checkbox"> <a href="#">Màu
											vàng (2)</a></li>
									<li><input type="checkbox"> <a href="#">Màu
											cam (6)</a></li>
									<li><input type="checkbox"> <a href="#">Màu
											trắng (7)</a></li>
								</ul>
							</div>
						</div>
						<div class="single-sidebar">
							<h3 class="sidebar-title">Lựa chọn theo vị</h3>
							<div class="sidebar-list">
								<ul>
									<li><input type="checkbox"> <a href="#">Dâu
											(8)</a></li>
									<li><input type="checkbox"> <a href="#">Cam
											(2)</a></li>
									<li><input type="checkbox"> <a href="#">Kiwi
											(5)</a></li>
									<li><input type="checkbox"> <a href="#">Chanh
											(8)</a></li>
									<li><input type="checkbox"> <a href="#">Xoài
											(7)</a></li>
									<li><input type="checkbox"> <a href="#">Socola
											(8)</a></li>
									<li><input type="checkbox"> <a href="#">Xí
											muội (7)</a></li>
								</ul>
							</div>
						</div>
						<div class="single-sidebar">
							<h3 class="sidebar-title">Hàng bán chạy</h3>
							<div class="tag">
								<ul>
									<li><a href="#">Bánh ngọt 1</a></li>
									<li><a href="#">Trà sữa 3</a></li>
									<li><a href="#">Bánh mặn 4</a></li>
									<li><a href="#">Nước chang nguyên chất</a></li>
									<li><a href="#">Nước cam</a></li>
									<li><a href="#">Bánh ngọt 4</a></li>
									<li><a href="#">Trà tắc</a></li>
									<li><a href="#">Trà sữa Đài Loan</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-9">
					<div class="blog-wrapper shop-page-mrg">
						<div class="tab-menu-product">
							<div class="tab-menu-sort">
								<div class="tab-menu">
									<ul role="tablist">
										<li class="active"><a href="#grid" data-toggle="tab">
												<i class="fa fa-th-large"></i> Danh mục
										</a></li>
									</ul>
								</div>
								<div class="tab-sort">
									<label>Sắp xếp : </label> <select>
										<option value="">Mới nhất</option>
										<option value="">Củ hơn</option>
										<option value="">Giá rẻ</option>
										<option value="">Chất lượng</option>
									</select>
								</div>
							</div>
							<div class="tab-product">
								<div class="tab-content">
									<div class="tab-pane active" id="grid">
										<div class="row">
											<%
												DecimalFormat numformat = new DecimalFormat("#,###,###");
												ProductsControl product = new ProductsControl();
												int id_type = Integer.parseInt(request.getParameter("id_product"));
												if (id_type == 0) {
													for (Products ls : product.getListProducts()) {
											%>
											<div class="col-md-6 col-lg-4 col-sm-6">
												<div class="single-shop mb-40">
													<div class="shop-img">
														<a href="#"><img
															src="../assets/img/shop/product/<%=ls.getAnhchinh()%>"
															alt="" /></a>
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
															<a href="../cart?status=add&id_product=<%=ls.getId()%>" title="Add to Cart"> <i class="pe-7s-cart"></i>
															</a> <a class="wishlist" href="#" title="Wishlist"> <i
																class="pe-7s-like"></i>
															</a> <a href="#" data-toggle="modal"
																data-target="#quick-view<%=ls.getId()%>"
																title="Quick View"> <i class="pe-7s-look"></i>
															</a>
														</div>
													</div>
													<div class="shop-text-all">
														<div class="title-color fix">
															<div class="shop-title f-left">
																<h3>
																	<a href="#"><%=ls.getTensanpham()%></a>
																</h3>
															</div>
															<%
																double price = ls.getGiagoc();
																		int sale = ls.getKhuyenmai();
																		price = price - (price * sale / 100);
																		String price_nb = numformat.format(price);
															%>
															<div class="price f-right">
																<span class="new"><%=price_nb%> đ</span>
															</div>
														</div>
													</div>
												</div>
											</div>
											<%
												}
												} else {
													for (Products ls : product.getListProductsType(id_type)) {
											%>
											<div class="col-md-6 col-lg-4 col-sm-6">
												<div class="single-shop mb-40">
													<div class="shop-img">
														<a href="#"><img
															src="../assets/img/shop/product/<%=ls.getAnhchinh()%>"
															alt="" /></a>
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
															<a href="../cart?status=add&id_product=<%=ls.getId()%>" title="Add to Cart"> <i class="pe-7s-cart"></i>
															</a> <a class="wishlist" href="#" title="Wishlist"> <i
																class="pe-7s-like"></i>
															</a> <a href="#" data-toggle="modal"
																data-target="#quick-view<%=ls.getId()%>"
																title="Quick View"> <i class="pe-7s-look"></i>
															</a>
														</div>
													</div>
													<div class="shop-text-all">
														<div class="title-color fix">
															<div class="shop-title f-left">
																<h3>
																	<a href="#"><%=ls.getTensanpham()%></a>
																</h3>
															</div>
															<%
																double price = ls.getGiagoc();
																		int sale = ls.getKhuyenmai();
																		price = price - (price * sale / 100);
																		String price_nb = numformat.format(price);
															%>
															<div class="price f-right">
																<span class="new"><%=price_nb%> đ</span>
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
									<div class="page-pagination text-center">
										<ul>
											<li><a class="active" href="#">1</a></li>
											<li><a href="#">2</a></li>
											<li><a href="#">3</a></li>
											<li><a href="#">4</a></li>
											<li><a href="#"><i class="fa fa-angle-double-right"></i></a></li>
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
	<!-- Xong nội dung trang danh sách sản phẩm -->

	<!-- Thêm chân trang -->
	<jsp:include page="../layout/footerpage.jsp"></jsp:include>
	<!-- Xong thêm chân trang -->
 

	<!-- Bắt đầu xem nhanh chi tiết -->
	<%
		ProductsControl products = new ProductsControl();
		DetailProductsControl detailproduct = new DetailProductsControl();
		for (Products ls : products.getListProducts()) {
	%>
	<div class="quick-view modal fade in" id="quick-view<%=ls.getId()%>">
		<div class="container">
			<div class="row">
				<div id="view-gallery">
					<div class="col-xs-12">
						<div class="d-table">
							<div class="d-tablecell">
								<div class="modal-dialog">
									<div class="main-view modal-content">
										<div class="modal-footer" data-dismiss="modal">
											<span>x</span>
										</div>
										<div class="row">
											<div class="col-xs-12 col-sm-5">
												<div class="quick-image">
													<div class="single-quick-image tab-content text-center">
														<%
															int index = -1;
																for (DetailProducts list : detailproduct.getListWithProductId(ls.getId())) {
																	index++;
																	if (index == 0) {
														%>
														<div class="tab-pane  fade in active"
															id="sin-pro-<%=list.getId()%>">
															<img
																src="../assets/img/shop/DetailProduct/<%=list.getAnhChiTiet()%>"
																alt="" />
														</div>
														<%
															} else {
														%>
														<div class="tab-pane fade in"
															id="sin-pro-<%=list.getId()%>">
															<img
																src="../assets/img/shop/DetailProduct/<%=list.getAnhChiTiet()%>"
																alt="" />
														</div>
														<%
															}
																}
														%>

													</div>
													<div class="quick-thumb">
														<div class="nav nav-tabs">
															<ul>
																<%
																	for (DetailProducts list : detailproduct.getListWithProductId(ls.getId())) {
																%>
																<li><a data-toggle="tab"
																	href="#sin-pro-<%=list.getId()%>"> <img
																		src="../assets/img/shop/DetailProduct/<%=list.getAnhChiTiet()%>"
																		alt="quick view" />
																</a></li>
																<%
																	}
																%>
															</ul>
														</div>
													</div>
												</div>
											</div>
											<div class="col-xs-12 col-sm-7">
												<div class="quick-right">
													<div class="quick-right-text">
														<h3>
															<strong><%=ls.getTensanpham()%></strong>
														</h3>
														<div class="rating">
															<i class="fa fa-thumbs-o-up"> <b><%=ls.getLuotthich()%></b>
																lượt thích
															</i>
														</div>
														<div class="amount">
															<% 
																	double price = ls.getGiagoc();
																	int sale = ls.getKhuyenmai();
																	price = price - (price * sale / 100);
																	String price_nb = numformat.format(price);
															%>
															<h4>
																Giá bán
																<%=price_nb%>
																đ
															</h4>
														</div>
														<p><%=ls.getMota()%></p>
														<div class="dse-btn">
															<div class="row">
																<div class="col-sm-12 col-md-6">
																	<div class="por-dse clearfix">
																		<ul>
																			<li class="share-btn clearfix"><span>Yêu
																					thích</span> <a href="#"><i class="fa fa-thumbs-up"></i></a>
																			</li>

																		</ul>
																	</div>
																</div>
																<div class="col-sm-12 col-md-6">
																	<div class="por-dse add-to">
																		<a href="../cart?status=add&id_product=<%=ls.getId()%>">Mua ngay <i class="fa fa-cart-plus"></i></a>
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
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%
		}
	%>

	<!-- Xong xem nhanh chi tiết -->


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