<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 -->
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css">
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
<script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<style>
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
</style>
</head>
<body>
	<div>
		<p>경기시간</p>
		<input type="text" name="date" /> <input type="button"
			value="날짜 및 시간 선택" data-toggle="modal" data-target="#calendarModal" />
		<div id="calendarModal" class="modal fade" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-body">
						<table id="calendar">
							<tr>
								<!-- label은 마우스로 클릭을 편하게 해줌 -->
								<td><label onclick="prevCalendar()"><</label></td>
								<td align="center" id="tbCalendarYM" colspan="5">yyyy년 m월</td>
								<td><label onclick="nextCalendar()">></label></td>
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
									<div class="swiper-wrapper">
										<!-- Slides -->
										<c:forEach var="i" begin="00" end="23">
											<div class="swiper-slide">${i}시</div>
										</c:forEach>
									</div>
									<!-- If we need navigation buttons -->
									<div class="swiper-button-prev"></div>
									<div class="swiper-button-next"></div>
								</div>
								<div class="swiper-container">
									<!-- Additional required wrapper -->
									<div class="swiper-wrapper">
										<!-- Slides -->
										<c:forEach var="i" begin="0" end="60" step="10">
											<div class="swiper-slide">${i}분</div>
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
									<div class="swiper-wrapper">
										<!-- Slides -->
										<c:forEach var="i" begin="0" end="23">
											<div class="swiper-slide">${i}시</div>
										</c:forEach>
									</div>

									<!-- If we need navigation buttons -->
									<div class="swiper-button-prev"></div>
									<div class="swiper-button-next"></div>
								</div>
								<div class="swiper-container">
									<!-- Additional required wrapper -->
									<div class="swiper-wrapper">
										<!-- Slides -->
										<c:forEach var="i" begin="0" end="60" step="10">
											<div class="swiper-slide">${i}분</div>
										</c:forEach>
									</div>

									<!-- If we need navigation buttons -->
									<div class="swiper-button-prev"></div>
									<div class="swiper-button-next"></div>
								</div>
							</div>
						</div>
						<script type="text/javascript">
							var mySwiper = new Swiper('.swiper-container', {
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

</body>
</html>