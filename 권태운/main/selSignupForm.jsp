<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판매자 회원가입 창</title>
</head>
<link href="selSignupForm.css" rel="stylesheet" type="text/css" >
<body>
<br />
	<h1 align="center">  회원가입</h1>

	<form action="selSignupPro.jsp" method="post">
		<table>
			<tr>
				<td>아이디</td>
				<td>
					<input type="text" name="id" maxlength="12"/> 
				</td>
				<td>
					<input type="button" value="중복" /> 
				</td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td>
					<input type="password" name="pw" maxlength="12"/> 
				</td>
			</tr>
			<tr>
				<td>비밀번호 확인</td>
				<td>
					<input type="password" name="pwCh" maxlength="12"/> 
				</td>
			</tr>
			<tr>
				<td>이름</td>
				<td>
					<input type="text" name="name" /> 
				</td>
			</tr>
			<tr>
				<td>이메일</td>
				<td>
					<input type="text" name="email" /> 
				</td>
			</tr>
			<tr>
				<td>휴대폰 번호</td>
				<td>
					<input type="text" name="phone" maxlength="12"/> 
				</td>
			</tr>
			<tr>
				<td>사업장 상호</td>
				<td>
					<input type="text" name="bizname" /> 
				</td>
			</tr>
			<tr>
				<td>사업자 번호</td>
				<td>
					<input type="text" name="biznum" /> 
				</td>
			</tr>
			<tr>
				<td>사업자 주소</td>
				<td>
					<input type="text" name="bizaddress" /> 
				</td>
			</tr>
			<tr>
				<td>대표자명</td>
				<td>
					<input type="text" name="ceoname" /> 
				</td>
			</tr>
			<tr>
				<td>대표자 전화번호</td>
				<td>
					<input type="text" name="biztel" /> 
				</td>
			</tr>
			<tr>
				<td>담당자 이름</td>
				<td>
					<input type="text" name="managername" /> 
				</td>
			</tr>
			
			<tr>
				<td>담당자 이메일</td>
				<td>
					<input type="text" name="manageremail" /> 
				</td>
			</tr>
			<tr>
				<td>웹 사이트</td>
				<td>
					<input type="text" name="website" /> 
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center"> 
					<input type="submit" value="판매자 가입" onclick="window.location='selSignupPro.jsp'"/>  
					<input type="button" value="취소" onclick="window.location='main.jsp'"/> 
				</td>
			</tr>
		</table>
	</form>
</body>
</html>