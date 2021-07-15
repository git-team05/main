<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title> ::::team05 main:::: </title>
		<link href="main.css" rel="stylesheet" type="text/css" >			
	</head>	
<%if(session.getAttribute("memId") == null && session.getAttribute("selId")== null) { // 비로그인 상태%>		
<body> 
	<div id= "wrap">		 			
		<nav class="top">				 
		
			<ul>
				<li id="menu1">
					<a href="main.jsp">𝑇𝑜𝑑𝑎𝑦'𝑠 </br>𝐶ℎ𝑜𝑖𝑐𝑒</a></li> <!-- 로고  -->
				<li id="menu1" >
					<a href="/team05/product/groupMain.jsp"></br>공동구매</a></li> <!-- 공동 구매 페이지로 이동 -->
				<li id="menu1" >
					<a href="/team05/comming/commingSoonMain.jsp"></br>오픈예정</a></li> <!-- 오픈 예정 페이지로 이동 -->
				<li id="menu1" >
					<a href="/team05/admin/opensellMain.jsp"></br>공동구매 요청</a></li>	<!-- 공동 구매 요청 페이지로 이동 -->
			</ul>							
			<ul>								
				<li id="menu2">
					<a href="signupKinds.jsp" ></br>회원가입</a></li> <!-- 회원가입 페이지로 이동 -->
				<li id="menu2" >
					<a href="loginForm.jsp"></br>𝙻𝚘𝚐𝚒𝚗</a></li> <!-- 로그인 페이지로 이동 -->	 									
				<li id="menu2">
					<form method="get" action="/team05/product/groupSearch.jsp"">	
						<input type="text" name="search" />
	             		<input type="submit" value="검색" />       	        
	           				<select name="sel" id="menu2">
	             				<option value="proName">상품명</option>
	            	 			<option value="tags">태그</option>  
							</select>         		 
					</form>
	         	</li>	
			</ul>
		</nav>		
		<footer>
			<div id="">				
				<a id="footer_left" href="">Q & A</a>
				<a id="footer_center" href="">공지 사항</a>
				<a id="footer_right" href="">사이트 정보</a>
			</div>
		</footer>		
	</div>			
<%}else if(session.getAttribute("memId") != null) { // 일반회원 로그인시%>
	<div id= "wrap">	
	 			
		<nav class="top">				 
			<ul>
				<li id="menu1">
					<a href="main.jsp">𝑇𝑜𝑑𝑎𝑦'𝑠 </br>𝐶ℎ𝑜𝑖𝑐𝑒</a></li> <!-- 로고  -->
				<li id="menu1" >
					<a href="/team05/product/groupMain.jsp"></br>공동구매</a></li> <!-- 공동 구매 페이지로 이동 -->
				<li id="menu1" >
					<a href="/team05/comming/commingSoonMain.jsp"></br>오픈예정</a></li> <!-- 오픈 예정 페이지로 이동 -->
				<li id="menu1" >
					<a href="/team05/admin/opensellMain.jsp"></br>공동구매 요청</a></li>	<!-- 공동 구매 요청 페이지로 이동 -->
			</ul>							
			<ul>								
				<li id="munu2">
					<a><%= session.getAttribute("memId") %> 님 환영합니다. </a></li> 
				<li id="menu2">
					<a href="logout.jsp">𝚕𝚘𝚐𝚘𝚞𝚝</a></li> <!-- 로그아웃 페이지로 이동 -->
				<li id="menu2">
					<a href="/team05/mypage/myMain.jsp" >𝚖𝚢 𝚙𝚊𝚐𝚎</a></li> <!-- 마이 페이지로 이동 --> 									
				<li id="menu2">
					<form method="get" action="/team05/product/groupSearch.jsp"">	</br>
						<input type="text" name="search" />
	             		<input type="submit" value="검색" />       
	           				<select name="sel" id="menu2">
	             				<option value="proName">상품명</option>
	            	 			<option value="tags">태그</option>  
							</select>         		 
					</form>
	         	</li>	
			</ul>
		</nav>
		
		<footer>
			<div id="">				
				<a id="footer_left" href="">Q & A</a>
				<a id="footer_center" href="">공지 사항</a>
				<a id="footer_right" href="">사이트 정보</a>
			</div>
		</footer>		
	</div>	
<%}else if(session.getAttribute("selId") != null) { // 판매자 회원 로그인시%>		
	<div id= "wrap">	
	 			
		<nav class="top">				 
			<ul>
				<li id="menu1">
					<a href="main.jsp">𝑇𝑜𝑑𝑎𝑦'𝑠 </br>𝐶ℎ𝑜𝑖𝑐𝑒</a></li> <!-- 로고  -->
				<li id="menu1" >
					<a href="/team05/product/groupMain.jsp"></br>공동구매</a></li> <!-- 공동 구매 페이지로 이동 -->
				<li id="menu1" >
					<a href="/team05/comming/commingSoonMain.jsp"></br>오픈예정</a></li> <!-- 오픈 예정 페이지로 이동 -->
				<li id="menu1" >
					<a href="/team05/admin/opensellMain.jsp"></br>공동구매 요청</a></li>	<!-- 공동 구매 요청 페이지로 이동 -->
			</ul>							
			<ul>								
				<li id="munu2">
					<a><%= session.getAttribute("selId") %> 님 환영합니다ss.</a> </li> 
				<li id="menu2">
					<a href="logout.jsp">𝚕𝚘𝚐𝚘𝚞𝚝</a></li> <!-- 로그아웃 페이지로 이동 -->
				<li id="menu2">
					<a href="/team05/mypage/myMain.jsp" >𝚖𝚢 𝚙𝚊𝚐𝚎</a></li> <!-- 마이 페이지로 이동 --> 									
				<li id="menu2">
					<form method="get" action="/team05/product/groupSearch.jsp"">	
						<input type="text" name="search" />
	             		<input type="submit" value="검색" />       
	           				<select name="sel" id="menu2">
	             				<option value="proName">상품명</option>
	            	 			<option value="tags">태그</option>  
							</select>         		 
					</form>
	         	</li>	
			</ul>
		</nav>		
		<footer>
			<div id="">				
				<a id="footer_left" href="">Q & A</a>
				<a id="footer_center" href="">공지 사항</a>
				<a id="footer_right" href="">사이트 정보</a>
			</div>
		</footer>		
	</div>	


</body>		
<%}%>
</html>