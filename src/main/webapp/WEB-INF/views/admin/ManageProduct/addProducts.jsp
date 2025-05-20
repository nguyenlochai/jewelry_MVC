<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<meta charset="UTF-8">
<title>Đăng nhập tài khoản</title>
<style>
body {
	background-image:
		url('https://image.donghohaitrieu.com/wp-content/uploads/2023/09/37_D173TCM.jpg');
	background-size: 38%;
	background-position: center;
	background-repeat: repeat;
	background-color: #FFF;
}

#header {
	display: none;
}

.navbar {
	display: none;
}

.span4 {
	width: 450px;
	margin-left: 70%;
}

input.span3, textarea.span3, .uneditable-input.span3 {
	width: 300px;
	height: 36px;
}

h5 {
	font-size: 27px;
	margin-right: 60px;
	margin-top: 39px;
}

a {
	color: red;
}

.heading {
	height: 95px;
	width: 160%;
	background-color: #FFF;
	margin-left: -280px;
}

h2 {
	font-size: 25.5px;
	padding-top: 50px;
	margin-left: 24px;
	color: red;
}

b {
	color: black;
}

.well_img {
	display: flex;
}

img.logodhkt {
	width: 84px;
}
</style>
</head>

<body>
	<div class="heading">
		<h2>
			DiamonShop <b>Thêm sản phẩm</b>
		</h2>

	</div>
	<div class="heading">
		<h2>
			<a href="<c:url value="/admin/trang-chu"/>"><span></span> trang
				chủ</a>
		</h2>

	</div>
	<div class="row">
		<div class="row">
			<div class="span4">
				<div class="well">
					<div class="well_img">

						<h5>Thêm sản phẩm</h5>
						<br />
						<h3>
							<img class="logodhkt"
								src="<c:url value="/assets/user/img/337056343_604667611528651_6260084022422298095_n (1).jpg" />"
								alt="bootstrap sexy shop">
						</h3>


					</div>
					<h4>${status }</h4>
					<form:form action="AddProducts" method="POST"
						modelAttribute="product">



						<div class="control-group">
							<label class="control-label" for="id_category"> id loại
								sản phấm</label>
							<div class="controls">
								<form:input class="span3" id="id_category" type="text"
									placeholder="Enter Category ID" path="id_category" />
							</div>

						</div>

						<div class="control-group">
							<label class="control-label" for="sizes">sizes sản phẩm</label>
							<div class="controls">
								<form:input class="span3" id="sizes" type="text"
									placeholder="Enter Sizes" path="sizes" />
							</div>
						</div>

						<div class="control-group">
							<label class="control-label" for="name">Tên sản phẩm</label>
							<div class="controls">
								<form:input class="span3" id="name" type="text"
									placeholder="Enter Name" path="name" />
							</div>
						</div>

						<div class="control-group">
							<label class="control-label" for="price">giá</label>
							<div class="controls">
								<form:input class="span3" id="price" type="text"
									placeholder="Enter Price" path="price" />
							</div>
						</div>

						<div class="control-group">
							<label class="control-label" for="sale">giảm giá</label>
							<div class="controls">
								<form:input class="span3" id="sale" type="text"
									placeholder="Enter Sale Percentage" path="sale" />
							</div>
						</div>

						<div class="control-group">
							<label class="control-label" for="title">tiêu đề</label>
							<div class="controls">
								<form:input class="span3" id="title" type="text"
									placeholder="Enter Title" path="title" />
							</div>
						</div>


						<div class="control-group">
							<label class="control-label" for="highlight">sản phẩm nổi
								bật</label>
							<div class="controls">
								<form:checkbox class="span3" id="highlight" path="highlight" />
							</div>
						</div>

						<div class="control-group">
							<label class="control-label" for="new_product"> sản phẩm
								mới</label>
							<div class="controls">
								<form:checkbox class="span3" id="new_product" path="new_product" />
							</div>
						</div>

						<div class="control-group">
							<label class="control-label" for="details">chi tiết sản
								phẩm</label>
							<div class="controls">
								<form:textarea class="span3" id="details"
									placeholder="Enter Details" path="details" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="id_product">id product</label>
							<div class="controls">
								<form:input class="span3" id="id_product" type="text" name="id_product" path="id_product"  />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="image">Hình ảnh</label>
							<div class="controls">
								<form:input class="span3" id="image" type="file" name="image" path="img"  />
							</div>
						</div>

						<div class="control-group">
							<label class="control-label" for="color_name">Tên màu sắc</label>
							<div class="controls">
								<form:input class="span3" id="color_name" type="text"
									placeholder="Enter Color Name" name="color_name" path="name_color" />
							</div>
						</div>

						<div class="control-group">
							<label class="control-label" for="color_code">Mã màu sắc</label>
							<div class="controls">
								<form:input class="span3" id="color_code" type="text"
									placeholder="Enter Color Code" name="color_code" path="code_color" />
							</div>
						</div>



						<div class="control-group">
							<label class="control-label" for="created_at">ngày tạo</label>
							<div class="controls">
								<form:input class="span3" id="created_at" type="Date"
									placeholder="Enter Created At" path="created_at" />
							</div>
						</div>

						<div class="control-group">
							<label class="control-label" for="updated_at">ngày
								Updated</label>
							<div class="controls">
								<form:input class="span3" id="updated_at" type="Date"
									placeholder="Enter Updated At" path="updated_at" />
							</div>
						</div>


						<div class="control-group">
							<label class="control-label" for="quantity">số lượng</label>
							<div class="controls">
								<form:input class="span3" id="quantity" type="text"
									placeholder="Enter Quantity" path="soluong" />
							</div>
						</div>
						<div class="control-group">
							<div class="controls">
								<button type="submit" class="defaultBtn">Submit</button>
							</div>
						</div>


					</form:form>
					



				</div>
				<div class="span1">&nbsp;</div>

			</div>

		</div>
	</div>

</body>
