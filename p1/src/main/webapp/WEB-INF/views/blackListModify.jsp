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
			<h3>블랙리스트 수정</h3>
			<form action="blackListModifyAction" method="post" onsubmit="return blackListCheck();">
				<div>
					<input class="title" name="title" type="text" placeholder="제목을 입력해 주세요." value="${blackList.title}"/>
				</div>
				<div class="targetDiv">
					<input name="target" type="text" placeholder="블랙리스트로 신고할 대상의 아이디를 입력해 주세요." value="${blackList.target}"/>
				</div>
				<div class="content-body">
					<textarea class="content" name="content" placeholder="내용을 입력해 주세요.">${blackList.content}</textarea>
				</div>
				<input class="btn btn-success" type="submit" value="글수정"/>
				<input type="hidden" name="no" value="${blackList.no}"/>
				<input type="hidden" name="page" value="${page}"/>
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }"/>
			</form>
	</div>
<%@ include file="footer.jsp" %>
</div>
</body>
</html>