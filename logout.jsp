<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>::: logout :::</title>
</head>
<body>
	<%  session.invalidate(); // 세션 속성 전체 삭제 
		
		Cookie[] coos = request.getCookies(); //쿠키값 삭제
		if(coos != null){
			for(Cookie c : coos){
				if(c.getName().equals("autoId") || c.getName().equals("autoOPw") || c.getName().equals("autoCh"))  {
					c.setMaxAge(0);
					response.addCookie(c);}	} }
		response.sendRedirect("main.jsp"); // 메인으로 이동 	
	%>
</body>
</html>