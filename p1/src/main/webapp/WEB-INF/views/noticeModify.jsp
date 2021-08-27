<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/notice.js"></script>
<script type="text/javascript">
</script>
</head>
<body>
<div id="wrapper">
	<div class="container">
			<h3>공지사항 수정</h3>
			<form action="adminNoticeModifyAction" method="post" onsubmit="return noticeCheck();">
				<c:if test="${notice.main eq 0}">
					<input type="checkbox" class="mainCheck" name="main" value="0"/>
				</c:if>
				<c:if test="${notice.main eq 1}">
					<input type="checkbox" class="mainCheck" name="main" value="1" checked="checked"/>
				</c:if>
				고정글
				<div>
					<input class="title" name="title" type="text" placeholder="제목을 입력해 주세요." value="${notice.title}"/>
				</div>
				<div class="content-body">
					<textarea class="content" name="content" placeholder="내용을 입력해 주세요.">${notice.content}</textarea>
				</div>
				<input class="btn btn-success" type="submit" value="글수정"/>
				<input type="hidden" name="no" value="${notice.no}"/>
				<input type="hidden" name="page" value="${page}"/>
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }"/>
			</form>
	</div>
<%@include file="footer.jsp" %>
	</div>
</body>
</html>