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
<div id="wrapper">
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
			<div style="color:red; height: 20px;">${loginFailMsg}</div>
			<input type="submit" class="btn btn-success" value="로그인"/>
			<div class="find">
				<input type="button" class="findId btn btn-default" value="아이디 찾기" onclick="location.href='findId'"/>
				<input type="button" class="findPw btn btn-default" value="비밀번호 찾기" onclick="location.href='findPw'"/>
			</div>
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<!-- csrf 사이트간 위조방지 목적 토큰 -->
		</form>
		</div>
	</div>
	<%@ include file ="footer.jsp" %>
	</div>
</body>
</html>