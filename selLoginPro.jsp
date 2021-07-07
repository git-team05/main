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
<%
	request.setCharacterEncoding("UTF-8");
	// 파라미터 받기
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String auto = request.getParameter("auto"); //자동 로그인 체크 박스 값
	
	//기업 로그인 체크
		SellerDAO dao = new SellerDAO();
		boolean res = dao.idPwCheck(id,pw); 
		
		if(res){
			if(auto != null){
				Cookie c1 = new Cookie("autoId",id);
				Cookie c2 = new Cookie("autoPw",pw);
				Cookie c3 = new Cookie("autoCh",auto);
				
				c1.setMaxAge(60*60*24); // 24시간
				c2.setMaxAge(60*60*24); // 24시간
				c3.setMaxAge(60*60*24); // 24시간
				
				response.addCookie(c1);
				response.addCookie(c2);
				response.addCookie(c3);
			}
			session.setAttribute("selId", id); // == 로그인 처리
			response.sendRedirect("main.jsp"); // Main 으로 이동
		}else{ %>
			<script>
			alert("아이디 또는 비밀번호가 일치하지 않습니다. 다시 시도해주세요");
			history.go(-1);
			</script>
		<%}	
		%>
%>
</body>
</html>