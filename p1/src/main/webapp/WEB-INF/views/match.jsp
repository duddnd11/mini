<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>매치</title>
<style>
	.match{
		height:90px;
	}
	.rigth-section{
		display: inline;
		float:right;
	}
	.left-section{
		display: inline;
	}
</style>
</head>
<body>
	<a href="newMatch?category=${category}">매치작성</a>
	<div class="container">
		<c:forEach items="${matchList}" var="matchList">
			<a href="matchDetail?mbno=${matchList.mbno}">
				<div class="match">
					<div class="left-section">
						${matchList.date}
						${matchList.rule}
						${matchList.addr}
					</div>
					<div class="rigth-section">
						${matchList.state}
						${matchList.cost}
					</div>
				</div>
			</a>
		</c:forEach>
	</div>
</body>
</html>