<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="resources/matchCss.css" rel="stylesheet">
<title>매치</title>
<style>
	.team{
		height:90px;
	}
	
	#emblem{
		height: 100%;
	}
	#teamName{
		font-weight: 700;
	}
</style>
<script type="text/javascript">
$(function(){
    $("#search").click(function(){
	    if($("#teamSearch").is(":visible")){
		$("#teamSearch").slideUp();
		}else{
		$("#teamSearch").slideDown();
		}
	});

    $("#teamSearch").keydown(function(key) {
    	//키의 코드가 13번일 경우 (13번은 엔터키)
    	var name = $("#teamSearch").val();
        if (key.keyCode == 13) {
	        location.href="team?name="+name;
        }
    });
});
</script>
</head>
<body>
	<div>
		<sec:authorize access="isAuthenticated()">
			<a href="newTeam"><img src="resources/img/글쓰기.png" id="fixedbtn"></a>
		</sec:authorize>
		<sec:authorize access="isAnonymous()">
			<a href="#"  onclick="reject_button()"><img src="resources/img/글쓰기.png" id="fixedbtn"></a>
		</sec:authorize>
	</div>
	<div id="wrapper">
	<div class="container">
		<div id="sort">
			<span id="search">팀 검색</span>
		</div>
		<div id="searchInput">
			<input type="text" id="teamSearch" name="name"  class="form-control" value="${name}" placeholder="팀 명 또는 활동주소를 입력해주세요."/>
		</div>
		<div id="listBox">
		<c:forEach items="${teamList}" var="teamList">
			<a href="teamDetail?teamno=${teamList.teamno}">
				<div class="team">
					<div class="left-section">
						<div class="left-box" style="height: 90px;">
							<img src="resources/img/${teamList.img}" id="emblem">
						</div>
						<div class="right-box" style="float: right;">
							<span id="teamName">${teamList.name}</span><br/>
							<span>${teamList.sport}
							${teamList.addr}</span><br/>
							<span>${teamList.gender}</span>
						</div>
					</div>
				</div>
			</a>
			<hr>
		</c:forEach>
		</div>
	</div>
	<%@ include file ="footer.jsp" %>
	</div>
</body>
</html>