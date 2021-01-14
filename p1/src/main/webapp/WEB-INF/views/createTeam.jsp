<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link href="resources/userCss.css" rel="stylesheet">
<meta charset="UTF-8">
<title>팀 등록</title>
</head>
<body>
	<div class="userContainer">
	<h1>팀 등록</h1>
		<form action="createTeamAction" method="post">
		<div>
			<h3>팀명</h3>
			<input type="text" name="name"/>
		</div>
		<div>
			<h3>종목</h3>
			<input type="text" name="sport"/>
		</div>
		<div>
			<h3>팀원수</h3>
			<input type="text" name="members"/>
		</div>
		<div>
			<h3>활동지역</h3>
			<input type="text" name="addr"/>
		</div>
		<div>
			<h3>성별</h3>
			<input type="radio" name="gender" value="남성"/>남성
			<input type="radio" name="gender" value="여성"/>여성
			<input type="radio" name="gender" value="무관"/>무관
		</div>
		<div>
			<h3>팀소개</h3>
			<textarea name="introduce"></textarea>
		</div>
		<div>
			<input type="submit" value="팀등록"/>
		</div>
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }"/>
		<input type="hidden" name="representative" value="${userId}"/>
		</form>
	</div>
</body>
</html>