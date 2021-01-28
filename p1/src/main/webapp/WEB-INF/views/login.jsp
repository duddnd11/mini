<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>로그인</title>
<style>
	
</style>
</head>
<body>
	<div class="userContainer">
		<div class="user-body">
		<h3>로그인</h3>
		<form action="login-processing" method="post">
			<div>
				<h4>아이디</h4>
				<input type="text" name="id" placeholder="아이디를 입력해 주세요."/>
			</div>
			<div>
				<h4>비밀번호</h4>
				<input type="password" name="password" placeholder="비밀번호를 입력해 주세요."/>
			</div>
			<br/>
			${loginFailMsg}
			<input type="submit" value="로그인"/>
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<!-- csrf 사이트간 위조방지 목적 토큰 -->
		</form>
		</div>
	</div>
</body>
</html>