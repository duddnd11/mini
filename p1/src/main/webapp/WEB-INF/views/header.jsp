<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">
<head>
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>

<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css">
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">

<link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>

<script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
 
<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link href="resources/mainCss.css" rel="stylesheet">
<link href="resources/userCss.css" rel="stylesheet">
<link href="resources/matchCss.css" rel="stylesheet">
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
	height: 20px;
}

.userNav {
	height: 20px;
}

.logo {
	width: 100px;
}

.logoDiv, .menuUl {
	height: 100%;
	display: inline-block;
	margin-top: 12px;
}

.menuNav {
	text-align: center;
}

.logoDiv {
	float: left;
	width: 100px;
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
.navbar-right{
	margin-right: 0px!important;
}
.menuDiv{
	width : 500px;
	height: 65px;
	margin: 0 auto;
}
.menuUl{
	float: none!important;
	margin-top: 30px!important;
}
.top,.foot{
	width: 900px;
	margin: 0 auto;
}
.foot{
	height: 80px;
}
header{
	position: fixed;
	top:0;
	width:100%;
	z-index : 10;
}
.logo{
	width: 100%;
}
</style>
<meta name="_csrf_header" th:content="${_csrf.headerName}">
<meta name="_csrf" th:content="${_csrf.token}">
<script src="resources/utill.js"></script>
<script type="text/javascript">
var header = $("meta[name='_csrf_header']").attr("th:content");
var token = $("meta[name='_csrf']").attr("th:content");
function reject_button(){
	alert("로그인 해주세요.")
}

$("#profile-imageFile").on('change',function(){
	readURL(this);
	});
function readURL(input) {
    if (input.files && input.files[0]) {
       var reader = new FileReader();
       reader.onload = function (e) {
          $('#preImage').attr('src', e.target.result);
       }
       reader.readAsDataURL(input.files[0]);
    }
}
</script>
</head>
<body>
	<header class="header">
		<nav class="menuNav navbar-inverse">
			<section class="top">
			<div style="width: 100%;height: 20px;">
				<ul class="userUl nav navbar-nav navbar-right">
					
					<sec:authorize access="isAnonymous()">
						<li><a href="userLogin2" class="glyphicon glyphicon-log-in"> 로그인</a></li>
						<li><a href="userSignUp" class="glyphicon glyphicon-user"> 회원가입</a></li>
					</sec:authorize>
					<sec:authorize access="isAuthenticated()">
						<p class="userName">
							<sec:authentication property="principal.id" var="userId" />
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
					<sec:authorize access="hasRole('ROLE_ADMIN')">
						<li><a href="adminPage" class="glyphicon glyphicon-user">관리자 페이지</a></li>
					</sec:authorize>
					<li><a href="serviceCenter" class="glyphicon">고객센터</a></li>
					<!-- 유저확인<sec:authentication property="principal"/> -->
				</ul>
			</div>
			</section>
			<section class="foot">
			<div class="logoDiv">
					<a href="main" class="navbar-brand"><img class="logo" src="resources/img/로고.png"></a>
			</div>
			<div class="menuDiv">
				<ul class="nav navbar-nav menuUl">
					<li <c:if test="${category eq '매치' }">class="active"</c:if>><a href="match?category=매치">매치</a></li>
					<li <c:if test="${category eq '용병' }">class="active"</c:if>><a href="match?category=용병">용병 모집</a></li>
					<li <c:if test="${category eq '팀' }">class="active"</c:if>><a href="team">팀</a></li>
				</ul>
			</div>
			</section>
		</nav>
	</header>
</body>
</html>