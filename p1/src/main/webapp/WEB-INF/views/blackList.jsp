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
			<h3>블랙리스트 게시판</h3>
			<c:forEach var="list" items="${list}">
				<div class="notice-body">
					<a href="blackListDetail?no=${list.no}&page=${page}">
						<div class="notice-title">${list.title}</div>
						<div class="writer">${list.writer}</div>
						<div class="notice-date">${list.date}</div>
						<div class="hitCount">조회수 ${list.hitCount}</div>
					</a>
				</div>
			</c:forEach>
			<div class="page">
				<div class="page_wrap">
					<c:if test="${page ne 1 }">
						<span><a href="blackList?page=1"><i class="fas fa-angle-double-left"></i></a></span>
						<span><a href="blackList?page=${startPage-1}"><i class="fas fa-angle-left"></i></a></span>
						<span><a href="blackList?page=${page-1}">이전</a></span>
					</c:if>
					<c:forEach var="i" begin="${startPage}" end="${endPage}">
						<a href="blackList?page=${i}"<c:if test="${page eq i}">class="nowPage" style="color:white;"</c:if>>${i}</a>
					</c:forEach>
					<c:if test="${page < pageSize }">
						<span><a href="blackList?page=${page+1}">다음</a></span>
						<span><a href="blackList?page=${startPage+10}"><i class="fas fa-angle-right"></i></a></span>
						<span><a href="blackList?page=${pageSize}"><i class="fas fa-angle-double-right"></i></a></span>
					</c:if>
				</div>
			</div>
			<sec:authorize access="hasAnyRole('ROLE_USER','ROLE_ADMIN')">
				<a href="newBlackList"><img src="resources/img/글쓰기.png" id="fixedbtn"></a>
			</sec:authorize>
	</div>
    <%@ include file="footer.jsp" %>
</div>
</body>
</html>