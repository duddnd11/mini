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
		<h1>로그인</h1>
		<form action="login-processing" method="post">
			<div>
				<h3>아이디</h3>
				<input type="text" name="id"/>
			</div>
			<div>
				<h3>비밀번호</h3>
				<input type="password" name="password"/>
			</div>
			<br/>
			<input type="submit" value="로그인"/>
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<!-- csrf 사이트간 위조방지 목적 토큰 -->
		</form>
	</div>
</body>
</html>