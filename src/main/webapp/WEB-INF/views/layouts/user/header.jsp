<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
<header id="header">
	<div class="row">
		<div class="span4">		
			<div class="logo1">
				
					<h3><img class="logodhkt" src="<c:url value="/assets/user/img/337056343_604667611528651_6260084022422298095_n (1).jpg" />"alt="bootstrap sexy shop"></h3>		
				    <h3><p class="tenlogo"> Trường Đại Học kiến Trúc Đà Nẵng </p></h3>
				
				
			</div>
			
		</div>
		<div class="span4">
			<div class="offerNoteWrapper">
				<h1 class="dotmark">
					<i class="icon-cut"></i> Nguyễn Lộc Hải 21ct4. trường đại học kiến trúc đà nẵng
				</h1>
			</div>
		</div>
		<div class="span4 alignR">
			<p>
				<br> <strong> Hỗ trợ (24/7) : 0931990764 </strong><br>
				<br>
			</p>
			<span class="btn btn-mini">[ ${TotalQuantyCart} ] <span
				class="icon-shopping-cart"></span></span> <span
				class="btn btn-warning btn-mini">$</span> <span class="btn btn-mini">&pound;</span>
			<span class="btn btn-mini">&euro;</span>
		</div>
	</div>
</header>

<!--
Navigation Bar Section 
-->
<div class="navbar">
	<div class="navbar-inner">
		<div class="container">
			<a data-target=".nav-collapse" data-toggle="collapse"
				class="btn btn-navbar"> <span class="icon-bar"></span> <span
				class="icon-bar"></span> <span class="icon-bar"></span>
			</a>
			<div class="nav-collapse">
				<ul class="nav">
					<c:forEach var="item" items="${menus}">
							<li class="active"><a href="index.html">${item.name} </a></li>



						</c:forEach>
					
					
				</ul>
				
				<form action="search" class="navbar-search pull-left">
					<input name="search" type="text" placeholder="Tìm kiếm" class="search-query span2">
				</form>
				<ul class="nav pull-right">
					<c:if test="${empty LoginInfo }">

					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"><span class="icon-lock"></span>
							Đăng nhập <b class="caret"></b></a>
						<div class="dropdown-menu">
							<form class="form-horizontal loginFrm">
								<div class="control-group">
									<input type="text" class="span2" id="inputEmail"
										placeholder="Email">
								</div>
								<div class="control-group">
									<input type="password" class="span2" id="inputPassword"
										placeholder="Password">
								</div>
								<div class="control-group">
									<label class="checkbox"> <input type="checkbox">
										Remember me
									</label>
									<button type="submit" class="shopBtn btn-block">Sign
										in</button>
								</div>
							</form>
						</div></li>
					 </c:if>
					 <c:if test="${not empty LoginInfo }">
					 		<li>
					 			<a href="#">
					 				${ LoginInfo.display_name }
					 			</a>
					 		</li>
					 
					 </c:if>
				</ul>
			</div>
		</div>
	</div>
</div>