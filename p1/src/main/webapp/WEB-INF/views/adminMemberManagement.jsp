<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	img{
		width: 50px;
	}
	
	.matchById{
		display: none;
	
	}
	.fas{
		font-size: 16px;
		float: right;
	}
</style>
<script type="text/javascript">
	$(function(){
			$(".matchListButton").click(function(){
					var id = $(this).parent().parent().find(".memberId").text();
					$("."+id).toggle();
					fold(this);
				});
		});
</script>
</head>
<body>
<div id="wrapper">
	<div class="container">
		<table class="table">
			<caption><span class="table_name">회원관리</span></caption>
			<tr>
				<th></th>
				<th>아이디</th>
				<th>이름</th>
				<th>이메일</th>
				<th>성별</th>
				<th>번호</th>
				<th>가입날짜</th>
				<th>게시글보기</th>
			</tr>
			<c:forEach var="list" items="${list}">
				<tr>
					<td><img src="resources/img/${list.img}"></td>
					<td class="memberId">${list.id}</td>
					<td>${list.name}</td>
					<td>${list.email}</td>
					<td>${list.gender}</td>
					<td>${list.phoneNum}</td>
					<td>${list.date}</td>
					<td><div class="matchListButton" style="cursor:pointer;"><span>게시글 보기</span><i class="fas fa-chevron-down"></i>
				</tr>
				<tr class="matchById ${list.id}">
					<td colspan="8">
					<table class="table">
						<% boolean matchFlag =false;  %>
						<c:forEach var="matchList" items="${matchList}">
							<tr onclick="location.href='matchDetail?mbno=${matchList.mbno}'" style="cursor:pointer;">
								<c:if test="${list.id eq matchList.id}">
									<% matchFlag= true; %>
									<td>${matchList.category}</td>
									<td>${matchList.place}</td>
									<td>${matchList.addr}</td>
									<td>
									<c:choose>
										<c:when test="${matchList.state eq '모집중' }">
											<div class="status">
										</c:when>
										<c:when test="${matchList.state eq '모집완료' }">
											<div class="status-complete">
										</c:when>
									</c:choose>
											<span class="status-text">${matchList.state}
											<fmt:formatNumber value="${matchList.cost}" pattern="#,###"/>원
											</span>
										</div>
									</td>
								</c:if>
							</tr>
						</c:forEach>
						<% if(!matchFlag){%>
							게시글이 없습니다.
						<%}%>
					</table>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
<%@include file="footer.jsp" %>
</div>
</body>
</html>