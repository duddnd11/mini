<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<link href="resources/mainCss.css" rel="stylesheet">
 <link href="resources/userCss.css" rel="stylesheet">
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	ul{
		list-style: none;
	}
	.userUl>li,.menuUl>li{
		display: inline;
	}
	.userUl{
		float:right;
	}
	.userNav{
		height: 20px;
	}
	.logo{
		width:100px;
	}
	.menuUl{
		width:600px;
	}
	.logoDiv,.menuUl{
		height:32px;
		display: inline-block;
	}
	
	.menuNav{
		text-align: center;
	}
	.logoDiv{
		float:left;
	}
	.menuUl>li{
		font-size: 30px;	
	}
	a{
		text-decoration: none;
	}
</style>
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
					<p class="userName"><sec:authentication property="principal.username" var="userId"/></p>
					<li><a href="#" onclick="document.getElementById('logoutForm').submit();">로그아웃</a><li>
					<form action="logout2" id="logoutForm" style="display:inline;" method="post" >
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					</form>
					<li><a href="myPage">My Page</a></li>
				</sec:authorize>
				<li><a href="serviceCenter">고객센터</a></li>
			</ul>
		</nav>
		<nav class="menuNav">
			<div class="logoDiv">
				<h1 class="logo"><a href="main">로고</a></h1>
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