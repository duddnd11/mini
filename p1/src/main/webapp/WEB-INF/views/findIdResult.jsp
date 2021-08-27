<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="wrapper">
	<div class="userContainer">
		<div class="user-body">
			<h3>아이디 찾기</h3>
			고객님의 정보와 일치하는 아이디 목록입니다.<br/>
			<div>
			<c:forEach var="list" items="${list}">
			<div>
				<div class="left-section">
					<h4>${list.id}</h4>
				</div>
				<div class="right-section">
					<span>가입일 : ${list.date}</span>
				</div>
			</div>
			<br/>
			</c:forEach>
			</div>
			<input type="button" value="로그인" class="findId btn btn-success"/>
			<input type="button" value="비밀번호 찾기" class="findPw btn btn-default" onclick="location.href='findPw'"/>
		</div>
	</div>
<%@ include file="footer.jsp" %>
	</div>
</body>
</html>