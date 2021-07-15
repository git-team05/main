<%@page import="team05.seller.SellerDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("UTF-8"); %>
	<jsp:useBean id="dto" class="team05.seller.SellerDTO" />
	<jsp:setProperty property="*" name="dto" />
	
<%
	SellerDAO dao = SellerDAO.getInstance();
	dao.insertSeller(dto);
	
	response.sendRedirect("main.jsp"); // 바로 이동
%>	
</body>	
</html>