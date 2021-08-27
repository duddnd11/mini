<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/notice.js"></script>
<style type="text/css">
	
</style>
</head>
<body>
<div class="wrapper">
	<div class="container">
			<h3>블랙리스트 쓰기</h3>
			<form action="newBlackListAction" onsubmit="return blackListCheck();" method="post">
				<div>
					<input class="title" name="title" type="text" placeholder="제목을 입력해 주세요."/>
				</div>
				<div class="targetDiv">
					<input class="target" name="target" type="text" placeholder="블랙리스트로 신고할 대상의 아이디를 입력해 주세요."/>
				</div>
				<div class="content-body">
					<textarea class="content" name="content" placeholder="내용을 입력해 주세요."></textarea>
				</div>
				<input class="btn btn-success" type="submit" value="글쓰기" />	
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }"/>		
			</form>
	</div>
	<%@ include file="footer.jsp" %>
</div>
</body>
</html>