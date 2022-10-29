<%@page import="java.util.Map.Entry"%>
<%@page import="Objects.Items"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.Map.Entry"%>
<%@ page pageEncoding="utf-8"%>
<%@ page import="Objects.Category"%>
<%@ page import="Control.CategoryControl"%>
<%@ page import="Objects.Users"%>
<%@ page import="Model.dao_Cart"%>
<%@ page import="java.text.DecimalFormat"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Tiêu đề</title>
</head>
<body>
	<%
		CategoryControl category = new CategoryControl();
	%>
	<!-- Bắt đầu tiêu đề -->
	<header class="header-area home-style-2">
		<div class="header-bottom">
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-sm-3 col-xs-6">
						<div class="logo">
							<a href="../index.jsp"> <img src="../assets/img/logo/logo.png"
								alt="">
							</a>
						</div>
					</div>
					<div class="col-md-8 col-sm-9 col-xs-6">
						<div class="cart-menu">
							<div class="search-style-2 f-right">
								<a class="icon-search-2" href="javascript:void(0)"> <i
									class="pe-7s-search"></i></a>
								<div class="search2-content">
									<form action="#">
										<div class="search-input-button2">
											<input class="" placeholder="Tìm kiếm" type="search">
											<button class="search-button2" type="submit">
												<i class="pe-7s-search"></i>
											</button>
										</div>
									</form>
								</div>
							</div>
							<div class="user user-style-3 f-right">
								<%
									if (session.getAttribute("uslogin") != null) {
										// Giá trị session tồn tại 2 giờ
										session.setMaxInactiveInterval(2 * 60 * 60);
										Users us = (Users) session.getAttribute("uslogin");
								%>
								<a href="#"> <i class="pe-7s-user"></i>
								</a>
								<div class="currence-user-page">
									<div class="user-page">
										<ul>
											<li><a href="../pages/user-profile.jsp"><i
													class="pe-7s-id"></i> <%=us.getTenhienthi()%></a></li>
											<li><a href="../logout"><i class="pe-7s-back"></i> Đăng
													xuất</a></li>
										</ul>
									</div>
								</div>
								<%
									} else {
								%>
								<a href="#"> <i class="pe-7s-add-user"></i>
								</a>
								<div class="currence-user-page">
									<div class="user-page">
										<ul> 
										<%String referrer = request.getHeader("referer");  %>
											<li><a href="../pages/login.jsp"><i
													class="pe-7s-next-2"></i>Đăng nhập</a></li>
											<li><a href="../pages/register.jsp"><i
													class="pe-7s-add-user"></i>Tạo tài khoản mới</a></li>
										</ul>
									</div>
								</div>
								<%
									}
								%>

							</div>
							<div class="user user-style-3 f-right hidden-xs">
								<a href="#"> <i class="pe-7s-global"></i>
								</a>
								<div class="currence-user-page">
									<div class="user-page">
										<ul>
											<li><a href="#"><i class="pe-7s-flag"></i> Ngôn ngữ</a></li>
										</ul>
									</div>
								</div>
							</div>
							<%
								dao_Cart cart = (dao_Cart) session.getAttribute("cart");
								if (cart == null) {
									cart = new dao_Cart();
									session.setAttribute("cart", cart);
									session.setMaxInactiveInterval(10 * 60 * 60);
								}
							%>
							<div class="shopping-cart f-right">
								<a class="top-cart" href="#"><i
									class="pe-7s-cart"></i></a> <span><%=cart.countItems()%></span>
								<ul>
									<%
										for (Entry<Long, Items> list : cart.getCartItems().entrySet()) {
									%>
									<li>
										<div class="cart-img-price">
											<div class="cart-img">
												<a href="#"><img
													src="../assets/img/shop/product/<%=list.getValue().getProducts().getAnhchinh()%>"
													alt="" /></a>
											</div>
											<div class="cart-content">
												<h3>
													<a href="#"><%=list.getValue().getProducts().getTensanpham()%></a>
												</h3>
												<%
													//xử lý giá bán
														DecimalFormat numformat = new DecimalFormat("#,###,###");
														double cost = list.getValue().getProducts().getGiagoc();
														int discount = list.getValue().getProducts().getKhuyenmai();
														double total = cost - (cost * discount) / 100;
														String price_nb = numformat.format(total);
												%>
												<span class="cart-price"><%=price_nb%> (<%=list.getValue().getQuantity()%>)</span>
											</div>
											<div class="cart-del">
												<a href="../cart?status=remove&id_product=<%=list.getKey()%>"><i
													class="pe-7s-close-circle"></i></a>
											</div>
										</div>
									</li>
									<%
										}
									%>
									<li>
										<p class="total">
											Tổng: <span class="total-price"><%=cart.totalCart()%>
												đ</span>
										</p>
									</li>
									<li>
										<%if(cart.countItems()!= 0){%>
										<p class="buttons">
											<a class="my-cart" href="../pages/cart.jsp">Xem giỏ hàng</a> <a
												class="checkout" href="../pages/checkout.jsp">Thanh toán</a>
										</p> <%} %>
									</li>
								</ul>
							</div>
							<div class="main-menu f-right">
								<nav>
									<ul>
										<li><a href="../index.jsp">Trang chủ</a>
										<li><a href="../pages/shop-page.jsp?id_product=0">Sản
												phẩm</a>
											<ul class="dropdown">
												<!-- ** Đổ thể loại từ dữ liệu ra ** -->
												<%
													for (Category ds : category.getListCategory()) {
												%>
												<li><a
													href="../pages/shop-page.jsp?id_product=<%=ds.getId()%>"><%=ds.getTenloai()%>
												</a></li>
												<%
													}
												%>
											</ul></li>
										<li><a href="../pages/blog-page.jsp">Bài viết</a>
										<li><a href="../pages/contact.jsp">Liên hệ</a></li>
									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- Xong tiêu đề -->
	<!-- Cài đặt xem trên thiết bị di động -->
	<div class="mobile-menu-area">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="mobile-menu">
						<nav id="dropdown">
							<ul>
								<li><a class="active1" href="../index.jsp">Trang chủ</a></li>
								<li class="active1"><a class="active1"
									href="../pages/shop-page.jsp?id_product=0">Sản phẩm</a>
									<ul>
										<!-- ** Đổ thể loại từ dữ liệu ra ** -->
										<%
											for (Category ds : category.getListCategory()) {
										%>
										<li><a
											href="../pages/shop-page.jsp?id_product=<%=ds.getId()%>"><%=ds.getTenloai()%>
										</a></li>
										<%
											}
										%>
									</ul></li>
								<li class="active1"><a class="active1"
									href="../pages/blog-page.jsp">Bài viết</a>
								<li><a href="../pages/contact.jsp">Liên hệ</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Xong cài đặt xem trên thiết bị di động -->

</body>
</html>