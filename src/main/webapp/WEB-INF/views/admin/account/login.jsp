<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>   
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<head>
<meta charset="UTF-8">
<title>Đăng nhập Admin</title>
<style>


	body {
	
    	background-image: url('https://image.donghohaitrieu.com/wp-content/uploads/2023/09/37_D173TCM.jpg');

    	background-size: 38%;
    	background-position: center; 
    	background-repeat: repeat; 
    	background-color: #FFF;
    	
    	
	}
	#header{
		display: none;
	}
	
	.navbar{
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
	a{
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
	
	
	b{
		color: black;
	}
	.well_img{
		display: flex;
	}
	
</style>
</head>

<body>
<div class="heading"><h2>DiamonShop   <b>Đăng nhập Admin</b> </h2></div>
<div class="row">
	<div class="row">
		<div class="span4">
			<div class="well">
			<div class="well_img" >
			
			<h5 >Đăng nhập Admin</h5><br/>
			<h3 ><img class="logodhkt" src="<c:url value="/assets/user/img/337056343_604667611528651_6260084022422298095_n (1).jpg" />"alt="bootstrap sexy shop"></h3>		
			
			</div>
			<h1>${statusLogin }</h1>
			
			<form:form action="/Diamonshopp/admin/trang-chu" method="POST" modelAttribute= "admin">  
			  <div class="control-group">
				<label class="control-label" for="inputEmail">Email</label>
				<div class="controls">
				   <form:input class="span3"  type= "email"  placeholder="Mời nhâp email"  path="admin"/>
				  
				</div>
			  </div>
			   <div class="control-group">
				<label class="control-label" for="inputEmail">Mật khẩu</label>
				<div class="controls">
				    <form:input class="span3" type= "password" placeholder="Mời nhập mật khẩu" path="password"/>
				     <i class="fa fa-eye" id="togglePassword"></i>
				</div>
			  </div>
			  <div class="control-group">
				<div class="controls">
				  <button type="submit" class="defaultBtn">Đăng nhập</button> 
				  <a href="#">Quên mật khẩu?</a>
				</div>
			  </div>
			</form:form> 
			<div>Tạo tài khoản mới? <a href="<c:url value="/dang-ky"/>"><span class="icon-edit"></span> Đăng ký tài khoản mới</a> </div>
		</div>
		</div>
		<div class="span1"> &nbsp;</div>
		
	</div>	
	
</div>
</div>
<script>
    document.addEventListener("DOMContentLoaded", function() {
        const togglePassword = document.querySelector('#togglePassword');
        const passwordField = document.querySelector('#password');

        togglePassword.addEventListener('click', function () {
            const type = passwordField.getAttribute('type') === 'password' ? 'text' : 'password';
            passwordField.setAttribute('type', type);
            this.classList.toggle('fa-eye-slash');
        });
    });
</script>
</body>
