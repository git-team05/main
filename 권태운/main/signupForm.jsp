<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <meta charset="UTF-8">
        <title> 회원가입</title>
        <link rel="stylesheet" href="signup.css">
       
    </head>
    <body>
    <form action="signupPro.jsp" method="post" name="inputForm" onsubmit="return check()">
        <!-- header -->
        <div id="header">
            <a href="main.jsp" target="_blank" title="회원가입 페이지 보러가기"><img src="" id="logo"></a>
        </div>

        <!-- wrapper -->
        <div id="wrapper">

            <!-- content-->
            <div id="content">

                <!-- ID -->
                 <div>
                    <h3 class="join_title">
                        <label for="id">아이디</label>
                    </h3>
                    <span class="box int_id">
                        <input type="text" id="id" class="int" maxlength="20">
                        <button class="step_url" value="아이디 중복 확인" onclick="confirmId(this.form)" >중복</button>
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- PW -->
                <div>
                    <h3 class="join_title"><label for="pw">비밀번호</label></h3>
                    <span class="box int_pass">
                        <input type="password" name="pw" id="pw" class="int" maxlength="14">
                        <span id="alertTxt">사용불가</span>
                        <img src="../img/m_icon_pass.png" id="pwd1_img1" class="pswdImg">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- pwCh -->
                <div>
                    <h3 class="join_title"><label for="pwCh">비밀번호 재확인</label></h3>
                    <span class="box int_pass_check">
                        <input type="password" name="pwCh" id="pwCh" class="int" maxlength="14">
                        <img src="../img/m_icon_check_disable.png" id="pswd2_img1" class="pswdImg">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- NAME -->
                <div>
                    <h3 class="join_title"><label for="name">이름</label></h3>
                    <span class="box int_name">
                        <input type="text" name="name" id="name" class="int" maxlength="10">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- EMAIL -->
                <div>
                    <h3 class="join_title"><label for="email">본인확인 이메일<span class="optional">(선택)</span></label></h3>
                    <span class="box int_email">
                        <input type="text" name="email" id="email" class="int" maxlength="100" placeholder="선택입력">
                    </span>
                    <span class="error_next_box">이메일 주소를 다시 확인해주세요.</span>    
                </div>

                <!-- MOBILE -->
                <div>
                    <h3 class="join_title"><label for="phoneNo">휴대전화</label></h3>
                    <span class="box int_mobile">
                        <input type="tel" id="phone" class="int" maxlength="16" placeholder="전화번호 입력">
                    </span>
                    <span class="error_next_box"></span>    
                </div>


                <!-- JOIN BTN-->
                <div class="btn_area">
                    <button type="submit" value="가입" id="btnJoin">
                        <span>가입하기</span>
                    </button>
                </div>

            </div> 
            <!-- content-->

        </div> 
        <!-- wrapper -->
        
    <script>
        /*변수 선언*/
        var id = document.querySelector('#id');
        var pw = document.querySelector('#pw');
        var pwMsg = document.querySelector('#alertTxt');
        var pwImg1 = document.querySelector('#pswd1_img1');
        var pwCh = document.querySelector('#pwCh');
        var pwImg2 = document.querySelector('#pswd2_img1');
        var pwMsgArea = document.querySelector('.int_pass');
        var userName = document.querySelector('#name');
        var email = document.querySelector('#email');
        var Phone = document.querySelector('#Phone');
        var error = document.querySelectorAll('.error_next_box');

        /*이벤트 핸들러 연결*/

        id.addEventListener("focusout", checkId);
        pw.addEventListener("focusout", checkPw);
        pwCh.addEventListener("focusout", comparePwCh);
        userName.addEventListener("focusout", checkName);    
        email.addEventListener("focusout", isEmailCorrect);
        phone.addEventListener("focusout", checkPhoneNum);

     // 유효성 검사 
		function check(){
    	 	
			var inputs = document.inputForm; // 스크립트로 html 의 form 요소 가져오기
			if(!inputs.id.value) {
				alert("아이디를 입력하세요.");
				return false;
			}
			
			
			if(!inputs.pw.value) {
				alert("비밀번호를 입력하세요.");
				return false;
			}
			if(!inputs.pwCh.value) {
				alert("비밀번호 확인란을 입력하세요.");
				return false;
			}
			if(!inputs.name.value) {
				alert("이름을 입력하세요.");
				return false;
			}
			// 비밀번호와 비밀번호 확인란 작성값 동일 체크 
			if(inputs.pw.value != inputs.pwCh.value) {
				alert("비밀번호를 동일하게 입력하세요");
				return false;
			}
		}// check
		
		// 아이디 중복 여부 판단
		function confirmId(inputForm){ // <-- inputForm <- this.form 객체 받음 
			if(inputForm.id.value == "" || !inputForm.id.value) {
				alert("아이디를 입력하세요");
				return;
			}
			// 팝업 띄우기
			var url = "confirmId.jsp?id=" + inputForm.id.value; // confirmId.jsp?id=pika
			open(url, "confirmId", "toolbar=no, location=no, status=no, menubar=no, scrollbars=no, resizable=no, width=300, height=200"); 
		}
        /*콜백 함수*/


        function checkId() {
            var idPattern = /[a-zA-Z0-9_-]{8,20}/;
            if(id.value === "") {
                error[0].innerHTML = "필수 정보입니다.";
                error[0].style.display = "block";               
            } else if(!idPattern.test(id.value)) {
                error[0].innerHTML = "8~24자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.";
                error[0].style.display = "block";
            } else {
                error[0].innerHTML = "사용할수 있는 ID 입니다.";
                error[0].style.color = "#08A600";
                error[0].style.display = "block";
            }
        }

        function checkPw() {
            var pwPattern = /[a-zA-Z0-9~!@#$%^&*()_+|<>?:{}]{8,16}/;
            if(pw.value === "") {
                error[1].innerHTML = "필수 정보입니다.";
                error[1].style.display = "block";
            } else if(!pwPattern.test(pw.value)) {
                error[1].innerHTML = "8~14자 영문 대 소문자, 숫자, 특수문자를 사용하세요.";
                pwMsg.innerHTML = "사용불가";
                pwMsgArea.style.paddingRight = "93px";
                error[1].style.display = "block";
                
                pwMsg.style.display = "block";
                pwImg1.src = "../img/m_icon_not_use.png";
            } else {
                error[1].style.display = "none";
                pwMsg.innerHTML = "안전";
                pwMsg.style.display = "block";
                pwMsg.style.color = "#03c75a";
                pwImg1.src = "../img/m_icon_safe.png";
            }
        }

        function comparePwCh() {
            if(pwCh.value === pw.value && pwCh.value != "") {
                pwImg2.src = "../img/m_icon_check_enable.png";
                error[2].style.display = "none";
            } else if(pwCh.value !== pw.value) {
                pwImg2.src = "../img/m_icon_check_disable.png";
                error[2].innerHTML = "비밀번호가 일치하지 않습니다.";
                error[2].style.display = "block";
            } 

            if(pwCh.value === "") {
                error[2].innerHTML = "필수 정보입니다.";
                error[2].style.display = "block";
            }
        }

        function checkName() {
            var namePattern = /[a-zA-Z가-힣]/;
            if(userName.value === "") {
                error[3].innerHTML = "필수 입력정보입니다.";
                error[3].style.display = "block";
            } else if(!namePattern.test(userName.value) || userName.value.indexOf(" ") > -1) {
                error[3].innerHTML = "한글과 영문 대 소문자를 사용하세요. (특수기호, 공백 사용 불가)";
                error[3].style.display = "block";
            } else {
                error[3].style.display = "none";
            }
        }

        function isEmailCorrect() {
            var emailPattern = /[a-z0-9]{2,}@[a-z0-9-]{2,}\.[a-z0-9]{2,}/;

            if(email.value === ""){ 
                error[6].style.display = "none"; 
            } else if(!emailPattern.test(email.value)) {
                error[6].style.display = "block";
            } else {
                error[6].style.display = "none"; 
            }

        }

        function checkPhoneNum() {
            var isPhoneNum = /([01]{2})([01679]{1})([0-9]{3,4})([0-9]{4})/;

            if(mobile.value === "") {
                error[7].innerHTML = "필수 정보입니다.";
                error[7].style.display = "block";
            } else if(!isPhoneNum.test(mobile.value)) {
                error[7].innerHTML = "형식에 맞지 않는 번호입니다.";
                error[7].style.display = "block";
            } else {
                error[7].style.display = "none";
            }

            
        }
        </script>
        </form>
    </body>
</html>