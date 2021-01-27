<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style>
	.year,.month,.day{
		width:155px;
		height:45px;
		font-size : 16px;
	}
	.month,.day{
		margin-left :13px;
	}
	.gender{
		width:100%;
		height:45px;
	}
</style>
</head>
<body>
		<div class="userContainer">
			<div class="user-body">
			<h3>회원가입</h3>
			<form action="signUpAction" method="post">
				<div>
					<h4>이름 </h4>
					<input type="text" name="name" placeholder="이름을 입력해주세요."/>
				</div>
				<div>
					<h4>아이디</h4>
					<input type="text" name="id" placeholder="아이디를 입력해 주세요."/>
				</div>
				<div>
					<h4>비밀번호</h4>
					<input type="password" name="password" placeholder="비밀번호를 입력해주세요."/>
				</div>
				<div>
					<h4>비밀번호 확인</h4>
					<input type="password" name="passwordCheck" placeholder="비밀번호를 한번 더 입력해주세요.">
				</div>
				<div>
					<h4>이메일</h4>
					<input type="text" name="email" placeholder="이메일을 입력해주세요."/>
				</div>
				<div>
					<h4>성별</h4>
					<select class="gender" name="gender">
						<option>성별</option>
						<option value="남성">남성</option>
						<option value="여성">여성</option>
					</select>
				</div>
				<div>
					<h4>생년월일</h4>
					<input type="text" class="year" name="year" placeholder="년(4자)"/>
					<select class="month" name="month">
						<option>월</option>
						<c:forEach begin="1" end="12" var="i">
						<option value="${i}">${i}</option>
						</c:forEach>
					</select>
					<input type="text" class="day" name="day" placeholder="일"/>
					<input type="hidden" name="birth" value="0"/>
				</div>
				<div>
					<h4>휴대폰 번호</h4>
					<input type="text" name="phoneNum" placeholder="휴대폰 번호를 입력해주세요."/>
				</div>
				<br/>
				<div>
					<input type="submit" value="회원가입"/>
				</div>
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }"/>
			</form>
			</div>
		</div>
</body>
</html>