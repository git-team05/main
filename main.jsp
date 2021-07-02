<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 메인 홈페이지 </title>
</head>
	<link href="main.css" rel="stylesheet" type="text/css" >
	
<body style="margin: 0">

	<% if((session.getAttribute("memId") == null)){ //세션 속성이 없을때 (로그인이 안 되어 있을때 보이는 창)%> 
	
	<form name="mainForm" method="post"> <!-- 폼태그 시작 -->
	<div class="main" >					 <!-- div 태그 시작 -->
	
		<div id="top_menu">				 <!-- 로고 및 Top_menu  -->
			<ul>
				<li id="logo"   ><a href="/team05/main.jsp">Logo</a></li> <!-- 로고  -->
				<li id="menu01" ><a href="/team05/product/groupMain.jsp">공동구매</a></li> <!-- 공동 구매 페이지로 이동 -->
				<li id="menu02" ><a href="/team05/comming/commingSoonMain.jsp">오픈예정</a></li> <!-- 오픈 예정 페이지로 이동 -->
				<li id="menu02" ><a href="/team05/jjim/opensellMain.jsp">공동구매 요청</a></li>	<!-- 공동 구매 요청 페이지로 이동 -->
			</ul>	
			
			<ul>
				<li id="mypage"><a href="/team05/mypage/myMain.jsp" >𝚖𝚢 𝚙𝚊𝚐𝚎</a></li> <!-- 마이 페이지로 이동 -->
				<li id="signupMain"><a href="signupMain.jsp" >회원가입</a></li> <!-- 회원가입 페이지로 이동 -->
				<li id="loginMain" ><a href="loginForm.jsp">𝙻𝚘𝚐𝚒𝚗</a></li> <!-- 로그인 페이지로 이동 -->
			</ul>
		</div>
	</div>	<!-- div 태그 종료 -->
	</form> <!-- 폼태그 종료 -->
	
	<% }else {// 세션 속성이 있다 == 로그인함.%> 
	
	<form name="mainForm" method="post"> <!-- 폼태그 시작 -->
	<div class="main" >					 <!-- div 태그 시작 -->
		<div id="top_menu">				 <!-- 로고 및 Top_menu  -->
		
			<ul>
				<li><a id="logo" href="main.jsp">Logo</a></li>
				<li id="menu01" > <a href="/team05/product/groupMain.jsp">공동구매</a> </li> <!-- 공동 구매 페이지로 이동 -->
				<li id="menu02" > <a href="/team05/comming/commingSoonMain.jsp">오픈예정</a> </li> <!-- 오픈 예정 페이지로 이동 -->
				<li id="menu02" > <a href="/team05/jjim/opensellMain.jsp">공동구매 요청</a> </li>	<!-- 공동 구매 요청 페이지로 이동 -->
			</ul>	
			
			<ul>
				<li id="mypage"> <a href="/team05/mypage/myMain.jsp" >𝚖𝚢 𝚙𝚊𝚐𝚎</a> </li> <!-- 마이 페이지로 이동 -->
				<li id="signupMain"> <a href="logout.jsp" >로그아웃</a> </li> <!-- 회원가입 페이지로 이동 -->
			</ul>
			
		</div>
	</div>	<!-- div 태그 종료 -->
	</form> <!-- 폼태그 종료 -->
	<%}%>
	
</body>
</html>
