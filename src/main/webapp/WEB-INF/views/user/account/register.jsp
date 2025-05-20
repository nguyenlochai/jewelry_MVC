<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>   
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<head>
<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
<meta charset="UTF-8">
<title>Đăng ký tài khoản</title>
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
<div class="heading"><h2>DiamonShop   <b>Đăng ký</b> </h2></div>
<div class="row">
	<div class="row">
		<div class="span4">
			<div class="well">
			<div class="well_img" >
			
			<h5 >Đăng ký</h5><br/>
			<h3 ><img class="logodhkt" src="<c:url value="/assets/user/img/337056343_604667611528651_6260084022422298095_n (1).jpg" />"alt="bootstrap sexy shop"></h3>		
			
			</div>
			<h2>${status }</h2>
			<form:form action="dang-ky" method="POST" modelAttribute= "user">  
			  <div class="control-group">
				<label class="control-label" for="inputEmail">Email</label>
				<div class="controls">
				 
				  <form:input class="span3"  type= "email"  placeholder="Mời nhâp email"  path="user"/>
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label" for="inputEmail">Mật khẩu</label>
				<div class="controls">
				  
				  <form:input class="span3"  type= "password" placeholder="Mời nhập mật khẩu" path="password"/>
				   <i class="fa fa-eye" id="togglePassword"></i>

				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label" for="inputEmail">Họ và tên</label>
				<div class="controls">
				
				  <form:input class="span3"  type= "text" placeholder="Mời nhập họ và tên" path="display_name"/>
				</div>
			  </div>
			  
			  <div class="control-group">
				<label class="control-label" for="inputEmail">Địa chỉ</label>
				<div class="controls">
				  <form:input class="span3"  type= "text" placeholder="Mời nhập địa chỉ" path="address"/>
				</div>
			  </div>
			  <div class="controls">
			  	<button type="submit" class="btn block">Đăng ký</button>
			  </div>
			</form:form>  
			<div>Bạn đã có tài khoản? <a href="<c:url value="/dang-nhap"/>"><span class="icon-edit"></span> Đăng nhập</a> </div>
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
