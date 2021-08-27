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
	<div class="container">
		<div>
			${msg}<br/>
			${SPRING_SECURITY_403_EXCEPTION}
		</div>
	</div>
<%@ include file="footer.jsp" %>
	</div>
</body>
</html>