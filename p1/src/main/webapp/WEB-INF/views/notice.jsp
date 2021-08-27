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
<script type="text/javascript">
</script>
</head>
<body>
<div id="wrapper">
	<div class="container">
			<h3>공지사항</h3>
			<c:forEach var="list" items="${list}">
				<c:if test="${list.main eq 1 }">
					<div class="main-notice-body">
						<a href="noticeDetail?no=${list.no}&page=${page}">
							<div class="notice-title">${list.title}</div>
							<div class="writer">운영자</div>
							<div class="notice-date">${list.date}</div>
							<div class="hitCount">조회수 ${list.hitCount }</div>
						</a>
					</div>
				</c:if>
				<c:if test="${list.main eq 0 }">
					<div class="notice-body">
						<a href="noticeDetail?no=${list.no}&page=${page}">
							<div class="notice-title">${list.title}</div>
							<div class="writer">운영자</div>
							<div class="notice-date">${list.date}</div>
							<div class="hitCount">조회수 ${list.hitCount }</div>
						</a>
					</div>
				</c:if>
			</c:forEach>
			<div class="page">
				<div class="page_wrap">
					<c:if test="${page ne 1 }">
						<span><a href="notice?page=1"><i class="fas fa-angle-double-left"></i></a></span>
						<span><a href="notice?page=${startPage-1}"><i class="fas fa-angle-left"></i></a></span>
						<span><a href="notice?page=${page-1}">이전</a></span>
					</c:if>
					<c:forEach var="i" begin="${startPage}" end="${endPage}">
						<a href="notice?page=${i}"<c:if test="${page eq i}">class="nowPage" style="color:white;"</c:if>>${i}</a>
					</c:forEach>
					<c:if test="${page < pageSize }">
						<span><a href="notice?page=${page+1}">다음</a></span>
						<span><a href="notice?page=${startPage+10}"><i class="fas fa-angle-right"></i></a></span>
						<span><a href="notice?page=${pageSize}"><i class="fas fa-angle-double-right"></i></a></span>
					</c:if>
				</div>
			</div>
			<sec:authorize access="hasRole('ROLE_ADMIN')">
				<a href="adminNoticeWrite"><img src="resources/img/글쓰기.png" id="fixedbtn"></a>
			</sec:authorize>
	</div>
    <%@include file="footer.jsp" %>
</div>
</body>
</html>
