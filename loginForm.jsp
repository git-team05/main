<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
	<%
		request.setCharacterEncoding("UTF-8");
		String proNum = request.getParameter("proNum");
	%>
	<link href="loginForm.css" rel="stylesheet" type="text/css" >
<body>
<br />
	<h1 align="center"> 로그인 </h1>
	
	<form action="loginPro.jsp" method="post">
	<%	if(proNum != null) { %>
			<input type="hidden" name="proNum" value="<%=proNum%>"/>
	<% 	}	%>
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id" /></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pw" /></td>
			</tr>
			<tr>
				<td>
				<input type="submit" value="로그인"  />
				</td>
			</tr>
			<tr>
				<td colspan="2">
				<input type="checkbox" name="auto" value="1" /> 
				<input type="button"  value="회원가입"  onclick="window.location='signupMain.jsp'" />		 
				</td>
			</tr>		
		</table>
	</form>
</body>
</html>