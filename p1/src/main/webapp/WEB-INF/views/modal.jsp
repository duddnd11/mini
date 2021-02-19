<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css">
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
<script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link href="resources/mainCss.css" rel="stylesheet">
<link href="resources/userCss.css" rel="stylesheet">
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
		cell.setAttribute("class","dayTd");
		cnt = cnt + 1;
	}

	for (i = 1; i <= lastDate.getDate(); i++) {
		cell = row.insertCell(); // 열 한칸한칸 만들어 줌
		cell.setAttribute("class","dayTd");
		cell.innerHTML = "<span id='day"+i+"' class='day'>" + i + "</span>";
		cnt = cnt + 1;
		if (cnt % 7 == 1) {// 일요일
			cell.innerHTML = "<span id='day"+i+"' class='day'><font color=#F79DC2>" + i + "</font></span>";
		}
		if (cnt % 7 == 0) {/* 1주일이 7일 이므로 토요일 구하기*/
			//월화수목금토일을 7로 나눴을때 나머지가 0이면 cnt가 7번째에 위치함을 의미한다
			cell.innerHTML = "<span id='day"+i+"' class='day'><font color=skyblue>" + i + "</font></span>";
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
</script>

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
</style>
</head>
<body>
	<table id="calendar">
		<tr>
			<!-- label은 마우스로 클릭을 편하게 해줌 -->
			<td><label onclick="prevCalendar()" style="float: left;"> < </label></td>
			<td align="center" id="tbCalendarYM" colspan="5">yyyy년 m월</td>
			<td><label onclick="nextCalendar()" style="float: right;"> > </label></td>
		</tr>
		<tr>
			<td align="center"><font color="#F79DC2">일</font></td>
			<td align="center">월</td>
			<td align="center">화</td>
			<td align="center">수</td>
			<td align="center">목</td>
			<td align="center">금</td>
			<td align="center"><font color="skyblue">토</font></td>
		</tr>
	</table>
	<script type="text/javascript">
		buildCalendar();
	</script>
</body>
</html>