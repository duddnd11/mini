<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
     <link href="resources/userCss.css" rel="stylesheet">
<meta charset="UTF-8">
<title>회원가입</title>
<style>
	
</style>
</head>
<body>
		<div class="userContainer">
			<h1>회원가입</h1>
			<form action="signUpAction" method="post">
				<div>
					<h3>이름 </h3>
					<input type="text" name="name"/>
				</div>
				<div>
					<h3>아이디</h3>
					<input type="text" name="id"/>
				</div>
				<div>
					<h3>비밀번호</h3>
					<input type="password" name="password"/>
				</div>
				<div>
					<h3>비밀번호 확인</h3>
					<input type="password" name="passwordCheck">
				</div>
				<div>
					<h3>이메일</h3>
					<input type="text" name="email"/>
				</div>
				<div>
					<h3>성별</h3>
					<input type="radio" name="gender" value="남성"/>남성
					<input type="radio" name="gender" value="여성"/>여성
				</div>
				<div>
					<h3>생년월일</h3>
					<input type="text" name="year"/><input type="text" name="month"/><input type="text" name="day"/>
					<input type="hidden" name="birth" value="0"/>
				</div>
				<div>
					<h3>휴대폰 번호</h3>
					<input type="text" name="phoneNum"/>
				</div>
				<br/>
				<div>
					<input type="submit" value="회원가입"/>
				</div>
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }"/>
			</form>
		</div>
</body>
</html>