<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
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