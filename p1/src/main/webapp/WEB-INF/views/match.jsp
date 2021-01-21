<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>매치</title>
<style>
	.match{
		height:90px;
	}
	.rigth-section{
		display: inline-block;
		float:right;
	}
	.left-section{
		display: inline-block;
	}
	.left-box{
		display:inline-block;
	}
	.rigth-box{
		display:inline-block;
		border-radius: 6px;
		margin-left:20px;
	}
	.place{
		font-size:15px;
	}
	.status{
		border-radius: 6px;
		background-color: rgb(49, 91, 174);
		width:80px;
		height:45px;
		text-align: center;
	}
	.status-text{
		color:white;
	}
	.date-span{
		font-size:17px;
		font-weight: bold;
	}
	.skill-span{
		margin-left:16px;
	}
</style>
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
						<div class="rigth-box">
							<span class="place">${matchList.place}</span><br/>
							<span>${matchList.rule}</span>
							<span class="skill-span">실력 ${matchList.skill}</span>
						</div>
					</div>
					<div class="rigth-section">
						<div class="status">
							<span class="status-text">
								${matchList.state}<br/>
								${matchList.cost}
							</span>
						</div>
					</div>
				</div>
			</a>
			<hr>
		</c:forEach>
	</div>
</body>
</html>