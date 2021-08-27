<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<link rel="stylesheet" type="text/css" href="resources/footer.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<footer id="footer">
	<div class="footer-div">
		<div class="footer-content">
			<ul>
				<li class="listTitle">
					<div class="company-info">
					<sec:authorize access="isAnonymous()">
							<a href="userLogin2">로그인</a><br/>
							<a href="userSignUp">회원가입</a><br/>
					</sec:authorize>
					<sec:authorize access="isAuthenticated()">
						<a href="#" onclick="document.getElementById('logoutForm').submit();">로그아웃</a>
					</sec:authorize>
					</div>
					<div class="company">
							고객센터<br/>
							010-1234-5678<br/>
							<a href="notice?page=1">공지사항</a><br/>
							<a href="blackList?page=1">블랙리스트</a><br/>
							<a href="#">이용약관</a><br/>
							<a href="#">개인정보처리방침</a>
					</div>
					<div class= "company">
							SOCIAL<br/>
							인스타그램<br/>
							페이스북<br/>
							유튜브<br/>
							인스타그램<br/>
					</div>
				</li>
			</ul>
		</div>
	</div>
	</footer>
</body>
</html>