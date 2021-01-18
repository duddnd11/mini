<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link href="resources/mainCss.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#calendar {
	width: 600px;
	height: 395px;
}

#day:hover {
	background-color: black;
	color: white;
}

.clicked {
	background-color: black;
	color: white;
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

		for (i = 0; i < doMonth.getDay(); i++) {
			cell = row.insertCell(); //열 한칸한칸 만들어 줌
			cnt = cnt + 1;
		}

		for (i = 1; i <= lastDate.getDate(); i++) {
			cell = row.insertCell(); // 열 한칸한칸 만들어 줌
			cell.innerHTML = "<span id='day' class='day'>" + i + "</span>";
			cnt = cnt + 1;
			if (cnt % 7 == 1) {// 일요일
				cell.innerHTML = "<font color=#F79DC2>" + i;
			}
			if (cnt % 7 == 0) {/* 1주일이 7일 이므로 토요일 구하기*/
				//월화수목금토일을 7로 나눴을때 나머지가 0이면 cnt가 7번째에 위치함을 의미한다
				cell.innerHTML = "<font color=skyblue>" + i;
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
	}
	$(function() {
		$(".day").click(function() {

		});
	});

	
</script>
</head>
<body>
	<div class="container">
		<h3>매치 작성</h3>
		<form action="newMatchAction" method="post">
			<div>
				<p>경기장</p>
				<input type="text" name="addr"/>
			</div>
			<div>
				<p>참가비</p>
				<input type="text" name="cost" />
			</div>
			<div>
				<p>실력</p>
				<input type="radio" name="skill" value="상"/>상 <input type="radio"
					name="skill" value="중"/>중 <input type="radio" name="skill" value="하"/>하
			</div>
			<div>
				<p>경기시간</p>
				<input type="date" name="date"/>
				<input type="button" value="날짜 및 시간 선택" data-toggle="modal"
					data-target="#calendarModal" />
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
				</select>
			</div>
			<div>
				<p>내용</p>
				<textarea rows="" cols="" name="contents"></textarea>
			</div>
			<input type="submit" value="작성" />
			<input type="hidden" name="category" value="${category}"/>
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		</form>
	</div>
</body>
</html>