<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		${matchDetail.addr}
		${matchDetail.rule}
		${matchDetail.date}
		${matchDetail.contents}
		${matchDetail.state}
		<input type="button" value="매치 신청"/>
	</div>
	
</body>
</html>