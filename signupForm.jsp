<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일반 회원가입창</title>
</head>
   <link href="selSignupForm.css" rel="stylesheet" type="text/css" >
<body>
<br />
   <h1 align="center"> 회원가입 </h1>

   <form action="signupPro.jsp" method="post" name="inputForm" onsubmit="return check()">
      <table>
         <tr>
            <td>아이디</td>
            <td>
               <input type="text" name="id" maxlength="12"/> 
            </td>
            <td>
               <input type="button" value="중복" onclick="confirmId(this.form)"/> 
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
            <td>전화번호</td>
            <td>
               <input type="text" name="phone" /> 
            </td>
         </tr>
         <tr>
            <td colspan="2" align="center"> 
               <input type="submit" value="가입" />  
               <input type="button" value="취소" onclick="window.location='main.jsp'"/> 
            </td>
         </tr>
      </table>
   </form>
</body>
</html>