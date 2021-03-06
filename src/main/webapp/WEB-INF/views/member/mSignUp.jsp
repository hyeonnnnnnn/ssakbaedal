<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
    /* 공통 css */
	
    *:focus{
        outline: none;
    }

    /* 공통,색별 버튼 css */
    button {
        cursor: pointer;
        margin: 3px;
        padding: 10px 20px;
    }

    /* 태그별 css */

    #sign_up_div{
        border: 2px solid  rgb(130, 180, 127);
        padding: 5px 10% 5px;
        margin: auto;
        min-width: 400px;
        width: 70%;
        height: 50%;
    }
    #sign_up_form{
        margin: auto;
        padding: 5px;
        width: 90%;
        height: 90%;
    }
    #sign_up_table{
        text-align: left;
        border-top: 1px solid lightgray;
        margin: auto;
        border-radius: 0px;
    }

    #sign_up_table th,td {
    border-bottom: 1px solid  lightgray;
  }
    tr td:nth-child(1){
        border-right: 1px solid  lightgray;
        background-color:rgb(130, 180, 127,0.3);
        color: rgb(64, 64, 64);
        text-align: center;
        width: 130px;
    }
    tr td:nth-child(2){
        width: 320px;
    }
    h1{
        margin-bottom: 3px; 
    }
    /* 버튼별 css */
    #sign_up:hover{
        background-color: rgb(64, 64, 64);
    }
    #sign_up{
        display: block;
        width: 150px;
        height: 25px;
        border: none;
        border-radius: 5px;
        margin: 5px auto 5px;
        background-color: rgb(130, 180, 127, 0.7);
        color: white;
        font-size: 15px;
        
    }
    #check_btn{
        border: none;
        border-radius: 5px;
        background-color: rgb(64, 64, 64);
        color: white;
        font-size: 13px;
        padding: 0% 0% 1% 0%;
        height: 28px;
        width: 70px;
    }
    /* input css */
    td input{
        border-radius: 5px;
        height: 25px;
        width: 200px;
        border: 1px solid  lightgray;
    }
    [type=radio]{
        visibility: hidden;
        width: 15px;
        height: 15px;
    }
    [type='radio']:checked+label{
        color:  rgb(130, 180, 127);
        border: 1px solid  rgb(130, 180, 127);
        border-radius: 5px;
        padding: 2px;
    }
    #checktext{
        display: block;
        margin: 5px auto;
    }
    #textValue{
        border: none;
        background-color: rgba( 255, 255, 255, 0.1 );
    }
    .contents input::placeholder{
        font-size: 10px;
    }
    </style>
</head>
<body>
	<jsp:include page="../common/headerbar.jsp" />
	<section>
		<div class="contents" align="center">
			<div id="sign_up_div">
				<h1>회원가입</h1>
				<input type="text" id="textValue" disabled>
				<form id="sign_up_form" action="" method="POST"
					onsubmit="return test()">
					<table id="sign_up_table">
						<tr>
							<td>아이디</td>
							<td><input type="text" name="id"
								placeholder="영문,숫자로 포함 4~12자로 입력해주세요.">
								<button type="button" id="check_btn" onclick="">중복확인</button></td>
						</tr>
						<tr>
							<td>비밀번호</td>
							<td><input type="password" name="password"
								placeholder="영문,숫자로 포함 8~12자로 입력해주세요."></td>
						</tr>
						<tr>
							<td>비밀번호 확인</td>
							<td><input type="password" name="password2"
								placeholder="다시 한번 확인 해주세요."></td>
						</tr>
						<tr>
							<td>이름</td>
							<td><input type="text" name="name"
								placeholder="2자 이상의 한글로 입력해 주세요."></td>
						</tr>
						<tr>
							<td>이메일</td>
							<td><input type="email" mame="email"
								placeholder="인증 시 사용되므로 정확히 작성해 주세요."></td>
						</tr>
						<tr>
							<td>전화번호</td>
							<td><input type="text" class="phone" name="phone1"
								style="width: 50px; height: 23px;"> - <input type="text"
								class="phone" name="phone2" style="width: 50px; height: 23px;">
								- <input type="text" class="phone" name="phone3"
								style="width: 50px; height: 23px;"></td>
						</tr>
						<tr>
							<td>생년월일</td>
							<td><input type="text" name="birthday"
								placeholder="예)201010 형식으로 입력해주세요."></td>
						</tr>
						<tr>
							<td>성별</td>
							<td><input type="radio" class="gender" id="radio1"
								name="gender" value="여"> <label for="radio1">여자</label>
								<input type="radio" class="gender" id="radio2" name="gender"
								value="남"> <label for="radio2">남자</label></td>
						</tr>
					</table>

					<h4>이용 약관 동의</h4>
					<textarea id="checktext">
             
                        </textarea>
					<input type="checkbox" id="check_b"><label>약관 확인 후
						동의합니다.</label> <input type="button" onclick="test();" id="sign_up"
						class="btn-ghost green" value="회원가입">
				</form>
			</div>
		</div>
	</section>
	<jsp:include page="../common/footer.jsp" />
</body>
</html>