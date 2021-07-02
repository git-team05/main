<%@page import="team05.member.MemberDAO"%>
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
	String proNum = request.getParameter("proNum");
	System.out.println("pronum : " + proNum);
	
	//로그인 체크
	MemberDAO dao = new MemberDAO();
	boolean res = dao.idPwCheck(id,pw); 
	
	if(res){
		session.setAttribute("memId", id); // == 로그인 처리
	 	if(proNum != null) { 
	 		response.sendRedirect("/team05/product/productContent.jsp?proNum=" + proNum);
		} else {
			response.sendRedirect("main.jsp"); // Main 으로 이동
		}
	}else{ %>
		<script>
		alert("아이디 또는 비밀번호가 일치하지 않습니다. 다시 시도해주세요");
		history.go(-1);
		</script>
	<%}	
	%>
</body>
</html>