<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
<head>
<meta charset="UTF-8">
<title>Tìm kiếm</title>
<style>
	.product-content{
		overflow-x: hidden;
	}
</style>
</head>
<body>
<!-- 
Body Section 
-->
	<h2>Kết quả tìm kiếm </h2>
	<div class="row-fluid">
			
				<c:if test="${ search.size() > 0 }">
					<ul class="thumbnails">
					
					<c:forEach var="item" items="${ search }" varStatus="loop">
						<li class="span4">
							<div class="thumbnail">
								<a class="zoomTool" href="#"
									title="add to cart"><span class="icon-search"></span> QUICK
									VIEW</a> <a href="chi-tiet-san-pham/${ item.id_product }"><img
									src="<c:url value="/assets/user/img/${ item.img }"/>"
									alt=""></a>
								<div class="caption">
									<h5>${ item.name }</h5>
									<h4>
										<a class="defaultBtn" href="product_details.html"
											title="Click to view"><span class="icon-zoom-in"></span></a> <a
											class="shopBtn" href="<c:url value="/AddCart/${ item.id_product }"/>" title="add to cart"><span
											class="icon-plus"></span></a> <span class="pull-right"><fmt:formatNumber type="number" groupingUsed="true" value="${ item.price }" />	 ₫</span>
									</h4>
								</div>
							</div>
						</li>
						
						<c:if test="${ (loop.index + 1) % 3 == 0 || (loop.index + 1)  == products.size() }">
							</ul>
							<c:if test="${ (loop.index + 1) < products.size() }">
								<ul class="thumbnails">
							</c:if>
						</c:if>
						
					</c:forEach>
					
				</c:if>
				
			</div>
</body>

