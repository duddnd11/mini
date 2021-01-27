<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="resources/matchCss.css" rel="stylesheet">
<meta charset="UTF-8">
<title>매치</title>
</head>
<body>
	<a href="newMatch?category=${category}">매치작성</a>
	<div class="container">
		<c:forEach items="${matchList}" var="matchList">
			<a href="matchDetail?mbno=${matchList.mbno}">
				<div class="match">
					<div class="left-section">
						<div class="left-box">
							<span class="date-span">
								${matchList.date}
							</span><br/>
							<span>
								${matchList.time}
							</span>
						</div>
						<div class="right-box">
							<span class="place">${matchList.place}</span><br/>
							<span>${matchList.rule}</span>
							<span class="skill-span">실력 ${matchList.skill}</span>
						</div>
					</div>
					<div class="right-section">
					<c:choose>
						<c:when test="${matchList.state eq '모집중'}">
							<div class="status">
								<span class="status-text">
									${matchList.state}<br/>
									${matchList.cost}
								</span>
							</div>
						</c:when>
						<c:when test="${matchList.state eq '모집완료'}">
							<div class="status-complete">
								<span class="status-text">
									${matchList.state}<br/>
									${matchList.cost}
								</span>
							</div>
						</c:when>
					</c:choose>
					</div>
				</div>
			</a>
			<hr>
		</c:forEach>
	</div>
</body>
</html>