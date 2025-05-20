<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<meta charset="UTF-8">
<title>Thanh toán</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 20px;
	background-color: #f4f4f4;
}

h1 {
	text-align: center;
	margin-bottom: 20px;
}

table.purchase-history {
	width: 100%;
	border-collapse: collapse;
	margin-bottom: 20px;
	background-color: #fff;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

table.purchase-history th, table.purchase-history td {
	padding: 12px;
	border: 1px solid #ddd;
	text-align: left;
}

table.purchase-history th {
	background-color: #4CAF50;
	color: white;
}

table.purchase-history tr:nth-child(even) {
	background-color: #f2f2f2;
}

table.purchase-history tr:hover {
	background-color: #ddd;
}
img {
    width: 60px;
}

.haitable {
	width: 1000px;
}
</style>
</head>
<body>
	<div class="row">

		<div class="span9">
			<ul class="breadcrumb">
				<li><a href="index.html">Trang chủ</a> <span class="divider">/</span></li>
				<li class="active">Lịch sử</li>
			</ul>
			<h3>Lịch sử</h3>
			<hr class="soft" />
			<div class="row">
				<div class="span4 haitable">
					<div class="well">



<table class="purchase-history">
    <thead>
        <tr>
            
            <th>số lượng</th>
            <th>giá</th>
            <th>thời gian</th>
            <th>sản phẩm</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="detail" items="${lichSuBillDetail}">
            <tr>
               
                <td>${detail.quanty}</td>
                <td>${detail.total}</td>
                 <td>
                      <c:set var="indexPlusOne" value="${loop.index + 0}" />
            		<fmt:formatDate value="${lichSuBill[indexPlusOne].thoigian}" pattern="yyyy-MM-dd HH:mm:ss" />
                    <%-- <c:forEach var="item" items="${lichSuBill}">
                    	<fmt:formatDate value="${item.thoigian}" pattern="dd/MM/yyyy HH:mm:ss" var="formattedDateTime" />
					<p>Ngày tạo: ${formattedDateTime}</p>
                     </c:forEach> --%>
                </td>
                
                <td>
                    <c:forEach var="product" items="${products}">
                        <c:if test="${product.id_product == detail.id}">
                            <img src="<c:url value='/assets/user/img/${product.img}'/>" alt="Product Image">
                            ${product.name }
                        </c:if>
                    </c:forEach>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>







					</div>
				</div>


			</div>

		</div>
	</div>
</body>
