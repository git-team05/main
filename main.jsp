<%@ page language="java" contentType="text/html; 
	charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title> ::::team05 main page:::: </title>
		<link href="main.css" rel="stylesheet" type="text/css" >
		
	
	</head>
	
	<% if((session.getAttribute("memId") == null)) { //세션 속성이 없을때 (로그인이 안 되어 있을때 보이는 창)%> 	
<body>
	<form  method="post"> <!-- form -->
	<div id= "wrap">				
		<nav class="top">				 <!-- nav 상단 메뉴바 -->
			<ul>
				<li id="logo"   ><a href="main.jsp">Logo</a></li> <!-- 로고  -->
				<li id="menu1" ><a href="/team05/product/groupMain.jsp">공동구매</a></li> <!-- 공동 구매 페이지로 이동 -->
				<li id="menu1" ><a href="/team05/comming/commingSoonMain.jsp">오픈예정</a></li> <!-- 오픈 예정 페이지로 이동 -->
				<li id="menu1" ><a href="/team05/admin/opensellMain.jsp">공동구매 요청</a></li>	<!-- 공동 구매 요청 페이지로 이동 -->
			</ul>				
			<ul>								
				<li id="menu2"><a href="signupKinds.jsp" >회원가입</a></li> <!-- 회원가입 페이지로 이동 -->
				<li id="menu2" ><a href="loginForm.jsp">𝙻𝚘𝚐𝚒𝚗</a></li> <!-- 로그인 페이지로 이동 -->
			</ul>
		</nav>
<!-- --------------------------------------------------------------------------------------------------------------------- -->		
		
<!-- --------------------------------------------------------------------------------------------------------------------- -->			
		<footer>
			::::: 5조 프로젝트 :::::
		</footer>
		</div>		
	</div>	<!-- div -->
	</form> <!-- form -->
<!-- --------------------------------------------------------------------------------------------------------------------- -->		
	<% }else {// 세션 속성이 있다 == 로그인함.%> 
	<form  method="post"> <!-- form -->
	<div id= "wrap">					
		<nav class="top_nav">				 <!-- nav 상단 메뉴바 -->
			<ul>
				<li id="logo"   ><a href="main.jsp">Logo</a></li> <!-- 로고  -->
				<li id="menu1" ><a href="/team05/product/groupMain.jsp">공동구매</a></li> <!-- 공동 구매 페이지로 이동 -->
				<li id="menu1" ><a href="/team05/comming/commingSoonMain.jsp">오픈예정</a></li> <!-- 오픈 예정 페이지로 이동 -->
				<li id="menu1" ><a href="/team05/admin/opensellMain.jsp">공동구매 요청</a></li>	<!-- 공동 구매 요청 페이지로 이동 -->
			</ul>				
			<ul>
				<li id="munu2"> <a><%= session.getAttribute("memId") %> 님 환영합니다.</a> </li> 
				<li id="menu2" ><a href="logout.jsp">𝚕𝚘𝚐𝚘𝚞𝚝</a></li> <!-- 로그아웃 페이지로 이동 -->
				<li id="menu2"><a href="/team05/mypage/myMain.jsp" >𝚖𝚢 𝚙𝚊𝚐𝚎</a></li> <!-- 마이 페이지로 이동 -->
			</ul>
		</nav>
<!-- --------------------------------------------------------------------------------------------------------------------- -->			
		
<!-- --------------------------------------------------------------------------------------------------------------------- -->			
		
		

		
		
<!-- --------------------------------------------------------------------------------------------------------------------- -->			
		<footer>
			::::: 5조 프로젝트 :::::
		</footer>
<!-- --------------------------------------------------------------------------------------------------------------------- -->			
	</div>	<!-- div -->
	</form> <!-- form -->
</body>
	<%}%>
</html>