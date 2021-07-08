
<%@page import="team05.seller.SellerDAO"%>
<%@page import="team05.member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title> ::::team05 login Pro::::</title>
	</head>
	
<body>
<%
	request.setCharacterEncoding("UTF-8");

	// 파라미터 받기
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String kinds = request.getParameter("kinds");
	String auto = request.getParameter("auto"); //자동 로그인 체크 박스 값
	
	//로그인 체크
	MemberDAO loginDAO = new MemberDAO();	
	boolean res = loginDAO.idPwCheck(id, pw, kinds);
	
	// 기업 로그인
	SellerDAO sellLoginDAO = new SellerDAO();
	boolean res1 = sellLoginDAO.idPwCheck2(id,pw, kinds);
	
	// Cookie 생성
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
		if(kinds.equals("member")){
			session.setAttribute("memId", id);
			response.sendRedirect("main.jsp");
		} else if(kinds.equals("seller")){	
			session.setAttribute("selId", id);
			response.sendRedirect("selllerMain.jsp");
		}
	}else{
%>
		<script>
		alert("아이디 또는 비밀번호가 일치하지 않습니다. 다시 시도해주세요");
		history.go(-1);
		</script>
	<%}	
	%>
</body>
</html>