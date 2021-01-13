<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
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
					<sec:authentication property="principal.username"/>
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
					<li><a href="match">매치</a></li>
					<li><a href="mercenary">용병 모집</a></li>
					<li><a href="team">팀</a></li>
				</ul>
		</nav>
	</header>
	<hr>
</body>
</html>