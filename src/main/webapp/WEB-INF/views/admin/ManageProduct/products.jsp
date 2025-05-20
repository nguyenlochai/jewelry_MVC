<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<title>Trang Admin</title>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<!-- Custom fonts for this template-->
<!-- <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css"> -->
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">



<link href="<c:url value="/assets/admin/css/sb-admin-2.min.css" />"
	rel="stylesheet" />


<style>

input#quantityInput {
	max-width: 57px !important;
}

h2 {
	text-align: center;
}

table {
	width: 100%;
	border-collapse: collapse;
}

th, td {
	border: 1px solid #ddd;
	padding: 8px;
}

th {
	background-color: #f2f2f2;
	text-align: center;
}

tr:hover {
	background-color: #f1f1f1;
}

.logodhkt {
	width: 49px;
}

.sidebar-brand-text.mx-3 {
	color: red;
}

a.sidebar-brand.d-flex.align-items-center.justify-content-center {
	background-color: yellow;
}

.btn-primary {
	color: #fff;
	background-color: #f6c23e;
	border-color: #dfd54e;
}
</style>

</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="index.html">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas fa-laugh-wink"></i>
				</div>
				<div class="sidebar-brand-text mx-3">Admin</div>
				<h3>
					<img class="logodhkt"
						src="<c:url value="/assets/user/img/337056343_604667611528651_6260084022422298095_n (1).jpg" />"
						alt="bootstrap sexy shop">
				</h3>

			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Dashboard -->
			<li class="nav-item active"><a class="nav-link"
				href="index.html"> <i class="fas fa-fw fa-tachometer-alt"></i> <span>Danh
						mục</span></a></li>

			<!-- Divider -->
			<hr class="sidebar-divider">




			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed"
				href="<c:url value="/admin/user"/>"> <i class="fas fa-fw fa-cog"></i>
					<span>quản lý khách hàng</span>
			</a></li>

			<!-- Nav Item - Utilities Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed"
				href="<c:url value="/admin/products"/>"> <i
					class="fas fa-fw fa-cog"></i> <span>quản lý sản phẩm</span>
			</a></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->




		</ul>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

					<!-- Sidebar Toggle (Topbar) -->
					<button id="sidebarToggleTop"
						class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>

					<!-- Topbar Search -->
					<form
						class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
						<div class="input-group">
							<input type="text" class="form-control bg-light border-0 small"
								placeholder="Search for..." aria-label="Search"
								aria-describedby="basic-addon2">
							<div class="input-group-append">
								<button class="btn btn-primary" type="button">
									<i class="fas fa-search fa-sm"></i>
								</button>
							</div>
						</div>
					</form>

					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">

						<!-- Nav Item - Search Dropdown (Visible Only XS) -->
						<li class="nav-item dropdown no-arrow d-sm-none"><a
							class="nav-link dropdown-toggle" href="#" id="searchDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-search fa-fw"></i>
						</a> <!-- Dropdown - Messages -->
							<div
								class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
								aria-labelledby="searchDropdown">
								<form class="form-inline mr-auto w-100 navbar-search">
									<div class="input-group">
										<input type="text"
											class="form-control bg-light border-0 small"
											placeholder="Search for..." aria-label="Search"
											aria-describedby="basic-addon2">
										<div class="input-group-append">
											<button class="btn btn-primary" type="button">
												<i class="fas fa-search fa-sm"></i>
											</button>
										</div>
									</div>
								</form>
							</div></li>

						<!-- Nav Item - Alerts -->
						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle" href="#" id="alertsDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-bell fa-fw"></i> <!-- Counter - Alerts -->
								<span class="badge badge-danger badge-counter">3+</span>
						</a> <!-- Dropdown - Alerts -->
							<div
								class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="alertsDropdown">
								<h6 class="dropdown-header">Alerts Center</h6>
								<a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-primary">
											<i class="fas fa-file-alt text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">December 12, 2019</div>
										<span class="font-weight-bold">A new monthly report is
											ready to download!</span>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-success">
											<i class="fas fa-donate text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">December 7, 2019</div>
										$290.29 has been deposited into your account!
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-warning">
											<i class="fas fa-exclamation-triangle text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">December 2, 2019</div>
										Spending Alert: We've noticed unusually high spending for your
										account.
									</div>
								</a> <a class="dropdown-item text-center small text-gray-500"
									href="#">Show All Alerts</a>
							</div></li>

						<!-- Nav Item - Messages -->
						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle" href="#" id="messagesDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-envelope fa-fw"></i>
								<!-- Counter - Messages --> <span
								class="badge badge-danger badge-counter">7</span>
						</a> <!-- Dropdown - Messages -->
							<div
								class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="messagesDropdown">
								<h6 class="dropdown-header">Message Center</h6>
								<a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle" src="img/undraw_profile_1.svg"
											alt="...">
										<div class="status-indicator bg-success"></div>
									</div>
									<div class="font-weight-bold">
										<div class="text-truncate">Hi there! I am wondering if
											you can help me with a problem I've been having.</div>
										<div class="small text-gray-500">Emily Fowler · 58m</div>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle" src="img/undraw_profile_2.svg"
											alt="...">
										<div class="status-indicator"></div>
									</div>
									<div>
										<div class="text-truncate">I have the photos that you
											ordered last month, how would you like them sent to you?</div>
										<div class="small text-gray-500">Jae Chun · 1d</div>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle" src="img/undraw_profile_3.svg"
											alt="...">
										<div class="status-indicator bg-warning"></div>
									</div>
									<div>
										<div class="text-truncate">Last month's report looks
											great, I am very happy with the progress so far, keep up the
											good work!</div>
										<div class="small text-gray-500">Morgan Alvarez · 2d</div>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle"
											src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="...">
										<div class="status-indicator bg-success"></div>
									</div>
									<div>
										<div class="text-truncate">Am I a good boy? The reason I
											ask is because someone told me that people say this to all
											dogs, even if they aren't good...</div>
										<div class="small text-gray-500">Chicken the Dog · 2w</div>
									</div>
								</a> <a class="dropdown-item text-center small text-gray-500"
									href="#">Read More Messages</a>
							</div></li>

						<div class="topbar-divider d-none d-sm-block"></div>

						<!-- Nav Item - User Information -->
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="#" id="userDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <span
								class="mr-2 d-none d-lg-inline text-gray-600 small">Đại
									học kiến trúc</span> <img class="img-profile rounded-circle"
								src="<c:url value="/assets/user/img/337056343_604667611528651_6260084022422298095_n (1).jpg" />">
						</a> <!-- Dropdown - User Information -->
							<div
								class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="userDropdown">
								<a class="dropdown-item" href="#"> <i
									class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> Profile
								</a> <a class="dropdown-item" href="#"> <i
									class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
									Settings
								</a> <a class="dropdown-item" href="#"> <i
									class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
									Activity Log
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#" data-toggle="modal"
									data-target="#logoutModal"> <i
									class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
									Logout
								</a>
							</div></li>

					</ul>

				</nav>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">Quản lý sản phẩm</h1>

						<a href="#"
							class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
							class="fas fa-download fa-sm text-white-50"></i> trường đại học
							kiến trúc đà nẵng</a>

					</div>


					<a href="<c:url value="/AddProducts"/>"
						class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
						class="fas fa-download fa-sm text-white-50"></i> Thêm sản phẩm</a>

					<!-- Khởi tạo biến để lưu trữ tổng số lượng -->
					<c:set var="totalQuantity" value="0" />
					<c:set var="totalCategory1" value="0" />
					<c:set var="totalCategory2" value="0" />
					<c:set var="totalCategory3" value="0" />
					<c:set var="totalCategory4" value="0" />

					<!-- Vòng lặp ẩn để tính toán tổng số lượng -->
					<c:forEach var="item" items="${products}">
						<c:set var="totalQuantity" value="${totalQuantity + item.soluong}" />
						<c:choose>
							<c:when test="${item.id_category == 1}">
								<c:set var="totalCategory1"
									value="${totalCategory1 + item.soluong}" />
							</c:when>
							<c:when test="${item.id_category == 2}">
								<c:set var="totalCategory2"
									value="${totalCategory2 + item.soluong}" />
							</c:when>
							<c:when test="${item.id_category == 3}">
								<c:set var="totalCategory3"
									value="${totalCategory3 + item.soluong}" />
							</c:when>
							<c:when test="${item.id_category == 4}">
								<c:set var="totalCategory4"
									value="${totalCategory4 + item.soluong}" />
							</c:when>
						</c:choose>
					</c:forEach>

					<table>
						<tr>
							<th>STT</th>
							<th>Thông tin</th>
							<th>Số lượng</th>
						</tr>
						<tr>
							<td>1</td>
							<td>sản phẩm ${categorys[0].name} hiện có</td>
							<td>${totalCategory1}</td>
						</tr>
						<tr>
							<td>2</td>
							<td>sản phẩm ${categorys[1].name} hiện có</td>
							<td>${totalCategory2}</td>
						</tr>
						<tr>
							<td>3</td>
							<td>sản phẩm ${categorys[2].name} hiện có</td>
							<td>${totalCategory3}</td>
						</tr>
						<tr>
							<td>4</td>
							<td>sản phẩm ${categorys[3].name} hiện có</td>
							<td>${totalCategory4}</td>
						</tr>
						<tr>
							<td>5</td>
							<td>tất cả sản phẩm hiện có</td>
							<td>${products.size()}</td>
						</tr>
						<tr>
							<td>6</td>
							<td>tổng tất cả số lượng còn từng sản phẩm</td>
							<td id="totalQuantity">${totalQuantity}</td>
						</tr>
						<tr>
							<td>7</td>
							<td>tổng tất cả số lượng sản phẩm đồng hồ</td>
							<td id="totalCategory1">${totalCategory1}</td>
						</tr>
						<tr>
							<td>8</td>
							<td>tổng tất cả số lượng sản phẩm vòng tay</td>
							<td id="totalCategory2">${totalCategory2}</td>
						</tr>
						<tr>
							<td>9</td>
							<td>tổng tất cả số lượng sản phẩm dây đeo</td>
							<td id="totalCategory3">${totalCategory3}</td>
						</tr>
						<tr>
							<td>10</td>
							<td>tổng tất cả số lượng sản phẩm dây chuyền</td>
							<td id="totalCategory4">${totalCategory4}</td>
						</tr>
					</table>







					<h2>Bảng danh sách sản phẩm</h2>
					<table>
						<tr>
							<th>id sản phẩm</th>
							<th>tên sản phẩm</th>
							<th>giá</th>
							<th>tiêu đề</th>
							<th>sản phẩm nổi bật</th>
							<th>sản phẩm mới</th>
							<th>chi tiết sản phẩm</th>
							<th>ngày tạo</th>
							<th>số lượng</th>
							<th>xóa</th>
						</tr>
						<c:forEach var="item" items="${products}">
							<tr>
								<td>${item.id_product}</td>
								<td>${item.name}</td>
								<td>${item.price}</td>
								<td>${item.title}</td>
								<td>${item.highlight}</td>
								<td>${item.new_product}</td>
								<td>${item.details}</td>
								<td>${item.created_at}</td>
								<td>
									<form id="quantityForm" action="/Diamonshopp/admin/products"
										method="post"
										onsubmit="return updateQuantity(${item.id_product});">
										<input type="number" min="0" max="1000" class="span1"
											style="max-width: 34px" placeholder="1" name="newQuantity"
											size="16" value="${item.soluong}"
											id="quantityInput-${item.id_product}"> <input
											type="hidden" id="category-${item.id_product}"
											value="${item.id_category}">
										<button name="idProducts" value="${item.id_product}"
											type="submit" id="submitButton">Thêm</button>
									</form>
								</td>
								<td><a href="DeleteProduct/${item.id_product}"><span>Xóa</span></a></td>
							</tr>
						</c:forEach>
					</table>

					<br />

					<table class="table table-bordered"></table>

					<script>
    window.onload = function() {
        var inputs = document.querySelectorAll('input[id^="quantityInput-"]');
        inputs.forEach(function(input) {
            var id = input.id;
            var savedQuantity = localStorage.getItem(id);
            if (savedQuantity !== null) {
                input.value = savedQuantity;
            }
            input.addEventListener('change', function() {
                updateSummary();
            });
        });

        updateSummary(); // Update summary when the page is loaded
    };

    function updateQuantity(productId) {
        var inputId = 'quantityInput-' + productId;
        var newQuantity = document.getElementById(inputId).value;
        localStorage.setItem(inputId, newQuantity);
        updateSummary();
        return true; // Allow form submission
    }

    function updateSummary() {
        var totalQuantity = 0;
        var totalCategory1 = 0;
        var totalCategory2 = 0;
        var totalCategory3 = 0;
        var totalCategory4 = 0;

        var inputs = document.querySelectorAll('input[id^="quantityInput-"]');
        inputs.forEach(function(input) {
            var quantity = parseInt(input.value, 10) || 0;
            totalQuantity += quantity;

            var productId = input.id.split('-')[1];
            var category = document.getElementById('category-' + productId).value;

            if (category == 1) {
                totalCategory1 += quantity;
            } else if (category == 2) {
                totalCategory2 += quantity;
            } else if (category == 3) {
                totalCategory3 += quantity;
            } else if (category == 4) {
                totalCategory4 += quantity;
            }
        });

        document.getElementById('totalQuantity').textContent = totalQuantity;
        document.getElementById('totalCategory1').textContent = totalCategory1;
        document.getElementById('totalCategory2').textContent = totalCategory2;
        document.getElementById('totalCategory3').textContent = totalCategory3;
        document.getElementById('totalCategory4').textContent = totalCategory4;
    }
</script>









					<script
						src=" <c:url value="/assets/admin/vendor/jquery/jquery.min.js" />"></script>
					<script
						src="<c:url value="/assets/admin/vendor/bootstrap/js/bootstrap.bundle.min.js" />"></script>
					<script
						src="<c:url value="/assets/admin/vendor/jquery-easing/jquery.easing.min.js" />"></script>
					<script src="<c:url value="/assets/admin/js/sb-admin-2.min.js" />"></script>
					<script
						src="<c:url value="/assets/admin/vendor/chart.js/Chart.min.js" /> "></script>
					<script
						src="<c:url value="/assets/admin/js/demo/chart-area-demo.js" /> "></script>
					<script
						src="<c:url value="/assets/admin/js/demo/chart-pie-demo.js" /> "></script>
</body>

</html>