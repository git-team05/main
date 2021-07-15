<%@page import="team05.member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>ID 중복</title>
</head>
<%
	// 사용자가 작성해본 id 값을 받아서 DB에 존재하는지 여부 체크 	
	// 주소 뒤에 붙어온 파라미터 꺼내기
	String id = request.getParameter("id");
	// DB 에 해당 id가 존재하는지 체크 
	MemberDAO dao = MemberDAO.getInstance();
	boolean result = dao.confirmId(id); 
%>

<body>
	<br />
	<% if(result){  // Member db에 같은 id가 존재함 %>
		<table>
			<tr>
				<td><%=id %>, 이미 사용중인 아이디 입니다. </td>
			</tr>
		</table>
		<br />
		<form action="confirmId.jsp" method="post">
			<table>
				<tr>
					<td> 다른 아이디를 선택하세요. <br />
						<input type="text" name="id" />
						<input type="submit" value="ID중복확인" /> 
					</td>
				</tr>
			</table>
		</form>
	<%}else{ // Member db에 같은 id가 존재하지 않는 경우 즉, 사용가능한 경우 %>
		<table>
			<tr>
				<td>입력하신 <%=id %>는 사용가능한 아이디 입니다. <br />
					<input type="button" value="닫기" onclick="setId()"/>
				</td>
			</tr>
		</table>
	<%} %>	
	<script>
		function setId(){
			// signupForm 페이지의 id 태그 값 변경해주기 
			opener.document.inputForm.id.value = "<%=id%>";  
			self.close(); // 팝업창 닫기
		}
	</script>	
</body>
</html>