<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
</style>
<script src="resources/notice.js"></script>
<script type="text/javascript">
</script>
</head>
<body>
<div id="wrapper">
	<div class="container">
			<h3>공지사항 쓰기</h3>
			<form action="adminNoticeWriteAction" onsubmit="return noticeCheck();" method="post">
				<input type="checkbox" class="mainCheck" name="main" value="0"/>
				고정글
				<div>
					<input class="title" name="title" type="text" placeholder="제목을 입력해 주세요."/>
				</div>
				<div class="content-body">
					<textarea class="content" name="content" placeholder="내용을 입력해 주세요."></textarea>
				</div>
				<input class="btn btn-success" type="submit" value="글쓰기"/>
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }"/>		
			</form>
	</div>
<%@include file="footer.jsp" %>
</div>
</body>
</html>