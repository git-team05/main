<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>로그인 폼</title>
	<link href="loginForm.css" rel="stylesheet" type="text/css" >
	</head>
	
<body>
<form action="loginPro.jsp" method="get">
	<div class="main-container">
		<div class="main-wrap">
			<section class="login-input-section-wrap">
					<div class="login-input-wrap">	
						<input placeholder="Username" type="text" name="id" maxlength="12"></input>
					</div>
					
					<div class="login-input-wrap password-wrap">	
						<input placeholder="Password" type="password" name="pw" maxlength="12"></input>
					</div>
					
					<div class="login-button-wrap">
						<button type="submit" value="로그인">Sign in </button>
					</div>
					
					<div class="login-stay-sign-in">
						<input type="checkbox" name="auto" value="1" >자동 로그인</input>
						<lable> <input type="radio" name="kinds" value="member" checked="checked"/>회원 로그인</lable>
						<lable> <input type="radio" name="kinds" value="seller"/>기업 로그인</lable>
					</div>
					<footer>
						<div class="copyright-wrap">
							<span>	 Copyright © team05 project . All Rights Reserved.</span>
						</div>
					</footer>
			</section>	
		</div>	
	</div>
</form>
</body>
</html>