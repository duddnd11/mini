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
<script type="text/javascript">

	$(function(){
		$("#placeSearch").keydown(function(key) {
	    	//키의 코드가 13번일 경우 (13번은 엔터키)
	    	var place = $("#placeSearch").val();
	        if (key.keyCode == 13) {
		        location.href="match?category=${category}&place="+place;
	        }
	    });

	    $("#search").click(function(){
		    if($("#placeSearch").is(":visible")){
			$("#placeSearch").slideUp();
			}else{
			$("#placeSearch").slideDown();
				    }
		});

		$("#dateSearch-button").click(function(){
			location.href="match?category=${category}&day1="+day1+"&day2="+day2;

			});
	});

	var day1;
	var day2;
	var day1Id;
	var day2Id;
	var count=0;
	
	$(document).on("click",".dayTd",function(){
		$(this).find(".day").attr("class","clicked");
		var month = today.getMonth()+1;
		if(month <10){
				month="0"+month;
		}
		count++;
		if(count==1){
			$("#"+day1Id).removeClass("clicked");
			$("#"+day1Id).addClass("day");
			$("#"+day2Id).removeClass("clicked");
			$("#"+day2Id).addClass("day");
			day2="";
			day1 = today.getFullYear() + "-" + month + "-" + $(this).text();
			day1Id = $(this).find("span").attr("id");
		}else{
			day2 = today.getFullYear() + "-" + month + "-" + $(this).text();
			day2Id = $(this).find("span").attr("id");
			count=0;
		}
   });
	
</script>
<style type="text/css">
	

</style>
</head>
<body>
	<div class="container">
		<sec:authorize access="isAuthenticated()">
			<a href="newMatch?category=${category}"><img src="resources/img/글쓰기.png" id="fixedbtn"></a>
		</sec:authorize>
		<sec:authorize access="isAnonymous()">
			<a href="#"  onclick="reject_button()"><img src="resources/img/글쓰기.png" id="fixedbtn"></a>
		</sec:authorize>
		<div id="sort">
			<span id="search">장소검색</span>
			<span data-toggle="modal" data-target="#calendarModal">날짜선택</span>
		</div>
		<div id="calendarModal" class="modal fade" role="dialog">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-body">
								<%@include file="modal.jsp"%>
								<input type="button" id="dateSearch-button" value="선택" data-dismiss="modal"/>
							</div>
						</div>
					</div>
				</div>
		<div>
		<input type="text" id="placeSearch" name="place" value="${place}" placeholder="주소 또는 장소명을 입력해주세요."/>
		</div>
		<c:if test="${matchList.size() eq 0}">
			검색 결과가 없습니다.
		</c:if>
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