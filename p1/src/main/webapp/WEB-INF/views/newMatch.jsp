<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#calendar {
	width: 100%;
	height: 395px;
}

td:hover > .day {
	background-color: black;
	color: white;
}
td{
	text-align: center;
}
.day,.clicked{
	text-align: center;
	display: inline-block;
    width: 28px;
    border-radius : 50%;
    font-size: 20px;
    
}
.clicked {
	background-color: black;
	color: white;
}

.swiper-container {
	width: 130px;
	height: 150px;
	float: left;
}

.start-time {
	width: 270px;
	height: 150px;
	display: inline-block;
}

.end-time {
	width: 270px;
	height: 150px;
	display: inline-block;
}

#contents{
	width:100%;
	height:110px;
}
select{
	width:100%;
	height:45px;
}
#placeSearch{
	width:22%;
}
#place{
	width:77%;
}
#dateChoice{
	width:29%;
}
#date{
	width:70%;
}
</style>
<script type="text/javascript">
	var today = new Date(); // 오늘 날짜
	var date = new Date();


	function prevCalendar() {
		today = new Date(today.getFullYear(), today.getMonth() - 1, today
				.getDate());
		buildCalendar();
	}
	function nextCalendar() {
		today = new Date(today.getFullYear(), today.getMonth() + 1, today
				.getDate());
		buildCalendar();
	}

	function buildCalendar() {
		var doMonth = new Date(today.getFullYear(), today.getMonth(), 1);// 이번달 첫째 날
		var lastDate = new Date(today.getFullYear(), today.getMonth() + 1, 0);// 이번달 마지막 날
		var tbCalendar = document.getElementById("calendar"); // 테이블 변수
		var tbCalendarYM = document.getElementById("tbCalendarYM"); // 날짜 변수  년,월,일
		tbCalendarYM.innerHTML = today.getFullYear() + "년 "
				+ (today.getMonth() + 1) + "월";

		/*while은 이번달이 끝나면 다음달로 넘겨주는 역할*/
		while (tbCalendar.rows.length > 2) {
			//열을 지워줌
			//기본 열 크기는 body 부분에서 2로 고정되어 있다.
			tbCalendar.deleteRow(tbCalendar.rows.length - 1);
			//테이블의 tr 갯수 만큼의 열 묶음은 -1칸 해줘야지 
			//30일 이후로 담을달에 순서대로 열이 계속 이어진다.
		}
		
		var row = null;
		row = tbCalendar.insertRow(); // 새로운 열 삽입
		var cnt = 0;
		var cell;
		for (i = 0; i < doMonth.getDay(); i++) {
			cell = row.insertCell(); //열 한칸한칸 만들어 줌
			cnt = cnt + 1;
		}

		for (i = 1; i <= lastDate.getDate(); i++) {
			cell = row.insertCell(); // 열 한칸한칸 만들어 줌
			cell.innerHTML = "<span id='day"+i+"' class='day'>" + i + "</span>";
			cnt = cnt + 1;
			if (cnt % 7 == 1) {// 일요일
				cell.innerHTML = "<span id='day"+i+"' class='day'><font color=#F79DC2>" + i + "</span>";
			}
			if (cnt % 7 == 0) {/* 1주일이 7일 이므로 토요일 구하기*/
				//월화수목금토일을 7로 나눴을때 나머지가 0이면 cnt가 7번째에 위치함을 의미한다
				cell.innerHTML = "<span id='day"+i+"' class='day'><font color=skyblue>" + i + "</span>";
				//7번째의 cell에만 색칠
				row = calendar.insertRow();
				//토요일 다음에 올 셀을 추가
			}
			if (today.getFullYear() == date.getFullYear()
					&& today.getMonth() == date.getMonth()
					&& i == date.getDate()) {
				//달력에 있는 년,달과 내 컴퓨터의 로컬 년,달이 같고, 일이 오늘의 일과 같으면
				cell.bgColor = "#FAF58C";//셀의 배경색을 노랑으로 
			}
		}

		var clickedDay;
		
		$(function() {
			$(".day").click(function() {
				$("#"+clickedDay).removeClass("clicked");
				$("#"+clickedDay).addClass("day");
				matchDay = today.getFullYear() + "/" + (today.getMonth() + 1) + "/" + $(this).text();
				$(this).removeClass("day");
				$(this).addClass("clicked");
				clickedDay = $(this).attr("id");
			});

			$(".confirm").click(function(){
				var startHour = $("#start-hour").find("div.swiper-slide-active").text().slice(0,2);
				var startMin= $("#start-min").find("div.swiper-slide-active").text().slice(0,2);
				var endHour = $("#end-hour").find("div.swiper-slide-active").text().slice(0,2);
				var endMin= $("#end-min").find("div.swiper-slide-active").text().slice(0,2);
				var matchTime=startHour+":"+startMin+"~"+endHour+":"+endMin;
				$("#date").val(matchDay+" "+matchTime);
			});
		});
	}

	var matchDay;
	var matchTime;
	/**
	function dayClick(){
			matchDay=today.getFullYear()+"/"+(today.getMonth()+1)+"/"+$(this).text();
			alert(matchDay);
			$(this).removeClass("day");
			$(this).addClass("clicked");
		}
	 **/
	
</script>
</head>
<body>
	<div class="container">
		<div class="user-body">
		<h3>매치 작성</h3>
		<form action="newMatchAction" method="post">
			<div>
				<p>경기장</p>
				<input type="text" placeholder="경기장을 입력해주세요."  id="place" name="place"/> 
				<input type="hidden" id="addr" name="addr" /> 
				<input type="button" id="placeSearch" value="장소 검색" data-toggle="modal" data-target="#placeModal"/>
				<div id="placeModal" class="modal fade" role="dialog">
					<div class="modal-dialog" id="placeModal-dialog">
						<div class="modal-content">
							<div class="modal-body">
								<%@include file="map.jsp"%>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div>
				<p>참가비</p>
				<input type="text" name="cost" placeholder="참가비를 입력해주세요."/>
			</div>
			<div>
				<p>실력</p>
				<div>
					<select class="skill" id="skill" name="skill">
						<option>실력</option>
						<option value="상">상</option>
						<option value="중">중</option>
						<option value="하">하</option>
					</select>
				</div>
			</div>
			<div>
				<p>경기시간</p>
				<input type="text" name="date" id="date" placeholder="경기 시간을 선택해주세요."/> 
				<input type="button" value="날짜 및 시간 선택" data-toggle="modal" data-target="#calendarModal" id="dateChoice"/>
				<div id="calendarModal" class="modal fade" role="dialog">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-body">
								<table id="calendar">
									<tr>
										<!-- label은 마우스로 클릭을 편하게 해줌 -->
										<td><label onclick="prevCalendar()"><</label></td>
										<td align="center" id="tbCalendarYM" colspan="5">yyyy년 m월</td>
										<td><label onclick="nextCalendar()" style="float :right;">></label></td>
									</tr>
									<tr>
										<td align="center"><font color="#F79DC2">일</td>
										<td align="center">월</td>
										<td align="center">화</td>
										<td align="center">수</td>
										<td align="center">목</td>
										<td align="center">금</td>
										<td align="center"><font color="skyblue">토</td>
									</tr>
								</table>
								<script language="javascript" type="text/javascript">
									buildCalendar();//
								</script>
								<div class="time-container">
									<div class="start-time">
										<div class="swiper-container">
											<!-- Additional required wrapper -->
											<div class="swiper-wrapper" id="start-hour">
												<!-- Slides -->
												<c:forEach var="i" begin="0" end="23">
													<c:choose>
													<c:when test="${i<10}">
													<div class="swiper-slide">0${i}시</div>
													</c:when>
													<c:otherwise>
													<div class="swiper-slide">${i}시</div>
													</c:otherwise>
													</c:choose>
												</c:forEach>
											</div>
											<!-- If we need navigation buttons -->
											<div class="swiper-button-prev"></div>
											<div class="swiper-button-next"></div>
										</div>
										<div class="swiper-container" id="start-min">
											<!-- Additional required wrapper -->
											<div class="swiper-wrapper">
												<!-- Slides -->
												<c:forEach var="i" begin="0" end="60" step="10">
													<c:choose>
													<c:when test="${i<10}">
													<div class="swiper-slide">0${i}분</div>
													</c:when>
													<c:otherwise>
													<div class="swiper-slide">${i}분</div>
													</c:otherwise>
													</c:choose>
												</c:forEach>
											</div>

											<!-- If we need navigation buttons -->
											<div class="swiper-button-prev"></div>
											<div class="swiper-button-next"></div>
										</div>
									</div>
									<div class="end-time">
										<div class="swiper-container">
											<!-- Additional required wrapper -->
											<div class="swiper-wrapper" id="end-hour">
												<!-- Slides -->
												<c:forEach var="i" begin="0" end="23">
													<c:choose>
													<c:when test="${i<10}">
													<div class="swiper-slide">0${i}시</div>
													</c:when>
													<c:otherwise>
													<div class="swiper-slide">${i}시</div>
													</c:otherwise>
													</c:choose>
												</c:forEach>
											</div>

											<!-- If we need navigation buttons -->
											<div class="swiper-button-prev"></div>
											<div class="swiper-button-next"></div>
										</div>
										<div class="swiper-container">
											<!-- Additional required wrapper -->
											<div class="swiper-wrapper" id="end-min">
												<!-- Slides -->
												<c:forEach var="i" begin="0" end="60" step="10">
													<c:choose>
													<c:when test="${i<10}">
													<div class="swiper-slide">0${i}분</div>
													</c:when>
													<c:otherwise>
													<div class="swiper-slide">${i}분</div>
													</c:otherwise>
													</c:choose>
												</c:forEach>
											</div>

											<!-- If we need navigation buttons -->
											<div class="swiper-button-prev"></div>
											<div class="swiper-button-next"></div>
										</div>
									</div>
								</div>
								<div class="confirm-container">
									<button type="button" class="confirm" data-dismiss="modal">선택</button>
									<button type="button" class="cancle" data-dismiss="modal">취소</button>
								</div>
								<script type="text/javascript">
										var mySwiper = new Swiper(
												'.swiper-container',
												{
													// Optional parameters
													direction : 'vertical',
													loop : true,

													// If we need pagination
													pagination : {
														el : '.swiper-pagination',
													},

													// Navigation arrows
													navigation : {
														nextEl : '.swiper-button-next',
														prevEl : '.swiper-button-prev',
													},

													// And if we need scrollbar
													scrollbar : {
														el : '.swiper-scrollbar',
													},
												})
								</script>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div>
				<p>매치방식</p>
				<select name="rule">
					<option value="3vs3">3vs3</option>
					<option value="4vs4">4vs4</option>
					<option value="5vs5">5vs5</option>
					<option value="6vs6">6vs6</option>
					<option value="6vs6">7vs7</option>
					<option value="6vs6">8vs8</option>
					<option value="6vs6">9vs9</option>
					<option value="6vs6">10vs10</option>
					<option value="6vs6">11vs11</option>
				</select>
			</div>
			<div>
				<p>내용</p>
				<textarea id="contents" name="contents" placeholder="내용을 입력해주세요."></textarea>
			</div>
			<input type="submit" value="작성" formaction="newMatchAction" /> 
			<input type="hidden" name="category" value="${category}" /> 
			<sec:authentication property="principal.username" var="userId" />
			<input type="hidden" id="id" name="id" value="${userId}"/>
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		</form>
		</div>
	</div>
	<script type="text/javascript">
		$(function(){
			$("#placeModal").on('shown.bs.modal', function() {
				searchPlaces();
				map.relayout();
			});
		});
	</script>
</body>
</html>