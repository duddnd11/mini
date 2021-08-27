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
</head>
<body>
<div id="wrapper">
	<div class="container">
			<h3>공지사항</h3>
				<div class="btns">
					<sec:authorize access="hasRole('ROLE_ADMIN')">
						<button class="btn btn-light" onclick="location.href='adminNoticeModify?no=${notice.no}&page=${page}'">수정</button>
						<button class="btn btn-light" onclick="if(confirm('정말 삭제 하시겠습니까?')){location.href='adminNoticeDelete?no=${notice.no}'};">삭제</button>
					</sec:authorize>
					<button class="btn btn-light menu" onclick="location.href='notice?page=${page}'">목록</button>
				</div>
			<div class="box">
				<div class="notice-header">
					<div class="noticedetail-title">${notice.title}</div>
					<div class="writer">운영자</div>	
					<div class="notice-date">${notice.date}</div>
					<div class="hitCount">조회수 ${notice.hitCount}</div>
				</div>
				<div class="noticedetail-content">${notice.content}</div>
			</div>
			<div class="notice_nav">
				<c:choose>
					<c:when test="${prevNotice eq null}">
						<a class="prevBtn" href="#"><i class="fas fa-angle-up"></i><span class="nav_btn">이전글</span><span>이전글이 없습니다.</span></a>
						<a href="noticeDetail?no=${nextNotice.no}&page=${page}"><i class="fas fa-angle-down"></i><span class="nav_btn">다음글</span><span>${nextNotice.title}</span></a>
					</c:when>
					<c:when test="${nextNotice eq null}">
						<a class="prevBtn" href="noticeDetail?no=${prevNotice.no}&page=${page}"><i class="fas fa-angle-up"></i><span class="nav_btn">이전글</span><span>${prevNotice.title}</span></a>
						<a href="#"><i class="fas fa-angle-down"></i><span class="nav_btn">다음글</span><span>다음글이 없습니다.</span></a>
					</c:when>
					<c:otherwise>
						<a class="prevBtn" href="noticeDetail?no=${prevNotice.no}&page=${page}"><i class="fas fa-angle-up"></i><span class="nav_btn">이전글</span><span>${prevNotice.title}</span></a>
						<a href="noticeDetail?no=${nextNotice.no}&page=${page}"><i class="fas fa-angle-down"></i><span class="nav_btn">다음글</span><span>${nextNotice.title}</span></a>
					</c:otherwise>
				</c:choose>
			</div>
			
			<div class="relate">
				<h4>전체글</h4>
				<c:forEach var="list" items="${list}">
					<c:if test="${list.main eq 1 }">
					<div class="main-notice-body" <c:if test="${list.no eq notice.no}">style="background-color:#1bff0047;" </c:if>>
						<a href="noticeDetail?no=${list.no}&page=${page}">
							<div class="notice-title">${list.title}</div>
							<div class="notice-date">${list.date}</div>
						</a>
					</div>
				</c:if>
				<c:if test="${list.main eq 0 }">
					<div class="notice-body" <c:if test="${list.no eq notice.no}">style="background-color:#1bff0047;" </c:if>>
						<a href="noticeDetail?no=${list.no}&page=${page}">
							<div class="notice-title">${list.title}</div>
							<div class="notice-date">${list.date}</div>
						</a>
					</div>
				</c:if>
				</c:forEach>
				<div class="noticeAllBox">
					<a href="notice?page=1" class="noticeAll">전체보기</a>
				</div>		
			</div>
	</div>
<%@include file="footer.jsp" %>
	</div>
</body>
</html>