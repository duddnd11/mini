<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

.time-container{
	height: 95px;

}
.swiper {
	width: 130px;
	height: 100%;
	float: left;
}

.start-time {
	width: 270px;
	height: 100%;
	display: inline-block;
}

.end-time {
	width: 270px;
	height: 100%;
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
#placeButton{
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
.timeHead{
	text-align: center;
	font-size: 15px;
}
.swiper-wrapper{
	text-align: center;
	font-size: 20px;
}
.swiper-slide{
	display: flex;
	align-items:center; /* 위아래 기준 중앙정렬 */
	justify-content:center; 
}
.confirm-container>button{
	width: 49.5%;
}
.cancle{
	float: right;
}
.costFlag{
	float: right;
	display: inline-block;
}
</style>
<script type="text/javascript">
		var clickedDay;
		var matchDay;
		var matchTime;
		var newMatchMonth;
		newMatchDate=1;

		var costFlag=false;
		
		$(function() {
			/*
			$(".day").click(function() {
				$("#"+clickedDay).removeClass("clicked");
				$("#"+clickedDay).addClass("day");
				matchDay = today.getFullYear() + "/" + (today.getMonth() + 1) + "/" + $(this).text();
				$(this).removeClass("day");
				$(this).addClass("clicked");
				clickedDay = $(this).attr("id");
			});
			*/

			$(".confirm").click(function(){
				var startHour = $("#start-hour").find("div.swiper-slide-active").text().slice(0,2);
				var startMin= $("#start-min").find("div.swiper-slide-active").text().slice(0,2);
				var endHour = $("#end-hour").find("div.swiper-slide-active").text().slice(0,2);
				var endMin= $("#end-min").find("div.swiper-slide-active").text().slice(0,2);
				var matchTime=startHour+":"+startMin+"~"+endHour+":"+endMin;
				$("#date").val(matchDay+" "+matchTime);
			});

			$("#cost").blur(function(){
				$(".costFlag").children().remove();
				var cost=$("#cost").val().trim();
				var costExp=/^[0-9]/g;
				var str="";
				if(!costExp.test(cost)){
					str+="<span style='color:red'>숫자만 입력해주세요.</span>";
					costFlag=false;
				}else{
					costFlag=true;
				}
				$(".costFlag").append(str);
			});
		});
	/*
	function dayClick(){
		$("#"+clickedDay).removeClass("clicked");
		$("#"+clickedDay).addClass("day");
		matchDay = today.getFullYear() + "/" + (today.getMonth() + 1) + "/" + $(this).text();
		$(this).removeClass("day");
		$(this).addClass("clicked");
		clickedDay = $(this).attr("id");
	}
	*/
	$(document).on("click",".dayTd",function(){
		$("#"+clickedDay).removeClass("clicked");
		$("#"+clickedDay).addClass("day");
		newMatchMonth = today.getMonth()+1;
		matchDay = today.getFullYear() + "-" + (newMatchMonth<10? "0"+newMatchMonth : newMatchMonth) + "-" + $(this).text();
		$(this).find(".day").attr("class","clicked");
		clickedDay = $(this).find("span").attr("id");
   });
	   
	function submitCheck(){
		var place=$("#place").val().trim();
		var skill = $("#skill").val().trim();
		var date = $("#date").val().trim();
		var rule = $("#rule").val().trim();
		var contents = $("#contents").val().trim();

		if(place != "" && costFlag && skill != "" && date != "" && rule != "" && contents != ""){
			return true;
		}else{
			alert("입력 정보를 다시 확인해 주세요.");
		}
		return false;
	}
	
</script>
</head>
<body>
<div id="wrapper">
	<div class="container">
		<div class="user-body">
		<h3>매치 작성</h3>
		<form action="newMatchAction" method="post" onsubmit="return submitCheck();">
			<div>
				<p>경기장</p>
				<input type="text" placeholder="경기장을 입력해주세요."  id="place" name="place"/> 
				<input type="hidden" id="addr" name="addr" /> 
				<input type="button" id="placeButton" class="btn btn-success" value="장소 검색" data-toggle="modal" data-target="#placeModal"/>
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
				<p style="display: inline-block;">참가비</p>
				<div class="costFlag"></div>
				<input type="text" name="cost" id="cost" placeholder="참가비를 입력해주세요."/>
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
				<input type="button" value="날짜 및 시간 선택" class="btn btn-success" data-toggle="modal" data-target="#calendarModal" id="dateChoice"/>
				<div id="calendarModal" class="modal fade" role="dialog">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-body">
								<%@include file="modal.jsp"%>
								<!-- 시간 슬라이드 -->
								<div class="time-container">
									<div class="start-time">
										<div class="timeHead">시작 시간</div>
										<div class="swiper">
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
											<!-- If we need navigation buttons 
											<div class="swiper-button-prev"></div>
											<div class="swiper-button-next"></div>-->
										</div>
										<div class="swiper" id="start-min">
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

											<!-- If we need navigation buttons 
											<div class="swiper-button-prev"></div>
											<div class="swiper-button-next"></div>-->
										</div>
									</div>
									<div class="end-time">
										<div class="timeHead">종료 시간</div>
										<div class="swiper">
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

											<!-- If we need navigation buttons 
											<div class="swiper-button-prev"></div>
											<div class="swiper-button-next"></div>-->
										</div>
										<div class="swiper">
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

											<!-- If we need navigation buttons
											<div class="swiper-button-prev"></div>
											<div class="swiper-button-next"></div> -->
										</div>
									</div>
								</div>
								<div class="confirm-container">
									<button type="button" class="confirm btn btn-default" data-dismiss="modal">선택</button>
									<button type="button" class="cancle btn btn-default" data-dismiss="modal">취소</button>
								</div>
								<script type="text/javascript">
										var mySwiper = new Swiper('.swiper',{
													// Optional parameters
													direction : 'vertical',
													loop : true,

													// If we need pagination
													pagination : {
														el : '.swiper-pagination',
													},

													// Navigation arrows
													/**
													navigation : {
														nextEl : '.swiper-button-next',
														prevEl : '.swiper-button-prev',
													},
													**/
													
													// And if we need scrollbar
													scrollbar : {
														el : '.swiper-scrollbar',
													},
												    slidesPerView: 1,
												    spaceBetween: 30,
												    mousewheel: true,
												    
												    // 모달 또는 팝업 사용 시 슬라이드 미작동 문제 해결 
												    observer: true,
												    observeParents: true,
												});
								</script>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div>
				<p>매치방식</p>
				<select name="rule" id="rule">
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
			<input type="submit" class="btn btn-success" value="작성"/> 
			<input type="hidden" name="category" value="${category}" /> 
			<sec:authentication property="principal.username" var="userId" />
			<input type="hidden" id="id" name="id" value="${userId}"/>
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		</form>
		</div>
	</div>
		<%@ include file ="footer.jsp" %>
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