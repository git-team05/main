<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title> :::: team05 login Form ::::</title>
		<link href="loginForm.css" rel="stylesheet" type="text/css" > <!-- 로그인 css 연결 -->
	</head>
	<%
		request.setCharacterEncoding("UTF-8");
		String proNum = request.getParameter("proNum");
	%>
<body>
<form action="loginPro.jsp" method="get">
<%	if(proNum != null) { %>
			<input type="hidden" name="proNum" value="<%=proNum%>"/>
<% 	}	%>
	<div class="main-container">
		<div class="main-wrap">
			<section class="login-input-section-wrap">
					<div class="login-input-wrap">	
						<input placeholder="Username" type="text" name="id" maxlength="12"></input> <!-- 아이디 입력창 -->
					</div>
					
					<div class="login-input-wrap password-wrap">	
						<input placeholder="Password" type="password" name="pw" maxlength="12"></input> <!-- 비밀번호 입력창 -->
					</div>
					
					<div class="login-button-wrap">
						<button type="submit" value="로그인">Sign in </button> <!-- 로그인 처리 버튼 -->
					</div>
					
					<div class="login-stay-sign-in">
						<input type="checkbox" name="auto" value="1" >자동 로그인</input> <!-- 체크박스로 자동로그인 할껀지 안할껀지 체크 -->
						<lable> <input type="radio" name="kinds" value="member" checked="checked"/>회원 로그인</lable> <!-- 회원으로 로그인 될수 있게 -->
						<lable> <input type="radio" name="kinds" value="seller"/>기업 로그인</lable> <!-- 기업으로 로그인 될수있게 -->
						<!-- label로 둘중 하나 체크되게 설정 회원 로그인에 checked 사용으로 로그인폼들어왔을때 일반회원 로그인 먼저 클릭되게 설정 -->
					</div>	
					<footer>
						<div class="copyright-wrap">
							<span>	 Copyright © team05 project . All Rights Reserved.</span> <!-- footer  -->
						</div>
					</footer>
			</section>	
		</div>	
	</div>
</form>
</body>
</html>