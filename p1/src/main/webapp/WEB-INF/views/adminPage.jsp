<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
</script>
<style>
	.container{
		text-align: center;
	}
	.adminMenu{
		font-size: 22px;
	}
</style>
</head>
<body>
<div id="wrapper">
	<div class="container">
		<h3>관리자 페이지</h3>
		<a href="adminMemberManagement"><div class="adminMenu">회원 관리</div></a><br/>
		<a href="notice?page=1"><div class="adminMenu">공지사항</div></a><br/>
		<a href="blackList?page=1"><div class="adminMenu">블랙리스트</div></a><br/>
	</div>
<%@include file="footer.jsp" %>
</div>
</body>
</html>