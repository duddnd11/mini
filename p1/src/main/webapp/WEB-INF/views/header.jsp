<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">
<head>
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css">
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
<script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<link href="resources/mainCss.css" rel="stylesheet">
<link href="resources/userCss.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
ul {
	list-style: none;
}

.userUl>li, .menuUl>li {
	display: inline;
}

.userUl {
	float: right;
}

.userNav {
	height: 20px;
}

.logo {
	width: 100px;
}

.menuUl {
	width: 600px;
}

.logoDiv, .menuUl {
	height: 32px;
	display: inline-block;
}

.menuNav {
	text-align: center;
}

.logoDiv {
	float: left;
}

.menuUl>li {
	font-size: 23px;
	margin-right : 13px;
}
.userUl>li{
	margin-right :5px;
}

a {
	text-decoration: none;
	color:black;
}
a:link {
	text-decoration: none;
	color:black;
}
a:visited {
	text-decoration: none;
	color:black;
}
a:hover {
	text-decoration: none;
	color:black;
}
</style>
<meta name="_csrf_header" th:content="${_csrf.headerName}">
<meta name="_csrf" th:content="${_csrf.token}">
<script type="text/javascript">
var header = $("meta[name='_csrf_header']").attr("th:content");
var token = $("meta[name='_csrf']").attr("th:content");
</script>
</head>
<body>
	<header class="header">
		<nav class="userNav">
			<ul class="userUl">
				<sec:authorize access="isAnonymous()">
					<li><a href="login2">로그인</a></li>
					<li><a href="signUp">회원가입</a></li>
				</sec:authorize>
				<sec:authorize access="isAuthenticated()">
					<p class="userName">
						<sec:authentication property="principal.username" var="userId" />
					</p>
					<li><a href="#"
						onclick="document.getElementById('logoutForm').submit();">로그아웃</a>
					<li>
						<form action="logout2" id="logoutForm" style="display: inline;"
							method="post">
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
						</form>
					<li><a href="myPage">My Page</a></li>
				</sec:authorize>
				<li><a href="serviceCenter">고객센터</a></li>
			</ul>
		</nav>
		<nav class="menuNav">
			<div class="logoDiv">
				<h2 class="logo">
					<a href="main">로고</a>
				</h2>
			</div>
			<ul class="menuUl">
				<li><a href="match?category=매치">매치</a></li>
				<li><a href="match?category=용병">용병 모집</a></li>
				<li><a href="team">팀</a></li>
			</ul>
		</nav>
	</header>
	<hr>
</body>
</html>