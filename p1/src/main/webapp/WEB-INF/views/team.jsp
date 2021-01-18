<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link href="resources/mainCss.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>매치</title>
<style>
	.team{
		height:90px;
	}
</style>
</head>
<body>
	<div class="container">
		<c:forEach items="${teamList}" var="teamList">
			<a href="teamDetail?mbno=${teamList.teamno}">
				<div class="team">
						${teamList.name}
						${teamList.members}
						${teamList.sport}
						${teamList.addr}
						${teamList.gender}
						${teamList.representative}
				</div>
			</a>
		</c:forEach>
	</div>
</body>
</html>