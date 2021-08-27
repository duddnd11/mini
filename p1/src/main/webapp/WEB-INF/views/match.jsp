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
	function sortMatch(kinds,place,day1,day2){
		var Data={
			category : '<c:out value="${category}"/>',
			kinds :kinds,
			place : place,
			day1:day1,
			day2:day2
		}
		
		$.ajax({
			url:'rest/sortDate',
			type:'post',
			data:JSON.stringify(Data),
			contentType : 'application/json',
			beforeSend: function(xhr){
				 xhr.setRequestHeader(header, token);
			},
			success: function(response){
				var str="";
				str+='<div id="listBox">';
				for(i=0; i<response.length;i++){	
					str+='<a href="matchDetail?mbno='+response[i].mbno+'">';
					str+='<div class="match">';
						str+='<div class="left-section">';
							str+='<div class="left-box">';
								str+='<span class="date-span">'+response[i].date+'</span><br/>';
								str+='<span>'+response[i].time+'</span>';
							str+='</div>';
							str+='<div class="right-box">';
								str+='<span class="place">'+response[i].place+'</span><br/>';
								str+='<span>'+response[i].rule+'</span>';
								str+='<span class="skill-span">실력 '+response[i].skill+'</span>';
							str+='</div>';
						str+='</div>';
						str+='<div class="right-section">';
							if(response[i].state == '모집중'){
								str+='<div class="status">';
									str+='<span class="status-text">';
										str+=response[i].state+'<br/>';
										str+=(response[i].cost).toLocaleString()+"원";
									str+='</span>';
								str+='</div>';
							}else if(response[i].state == '모집완료'){
								str+='<div class="status-complete">';
									str+='<span class="status-text">';
										str+=response[i].state+'<br/>';
										str+=(response[i].cost).toLocaleString()+"원";
									str+='</span>';
								str+='</div>';
							}
						str+='</div>';
						str+='</div>';
						str+='</a>';
						str+='<hr>';
				}
				str+='</div>';
				$("#listBox").replaceWith(str);
			},
			error: function(){
				}
		});
	}

	function scrollMatchList(offset,kinds,place,day1,day2){
		var Data={
			category : '<c:out value="${category}"/>',
			offset : offset,
			kinds :kinds,
			place : place,
			day1:day1,
			day2:day2
		}

		$.ajax({
			url:'rest/scrollMatchList',
			type:'post',
			data:JSON.stringify(Data),
			contentType : 'application/json',
			beforeSend: function(xhr){
				 xhr.setRequestHeader(header, token);
			},
			success: function(response){
				var str="";
				for(i=0;i<response.length;i++){
					str+='<a href="matchDetail?mbno='+response[i].mbno+'">';
					str+='<div class="match">';
						str+='<div class="left-section">';
							str+='<div class="left-box">';
								str+='<span class="date-span">'+response[i].date+'</span><br/>';
								str+='<span>'+response[i].time+'</span>';
							str+='</div>';
							str+='<div class="right-box">';
								str+='<span class="place">'+response[i].place+'</span><br/>';
								str+='<span>'+response[i].rule+'</span>';
								str+='<span class="skill-span">실력 '+response[i].skill+'</span>';
							str+='</div>';
						str+='</div>';
						str+='<div class="right-section">';
							if(response[i].state == '모집중'){
								str+='<div class="status">';
									str+='<span class="status-text">';
										str+=response[i].state+'<br/>';
										
										str+=(response[i].cost).toLocaleString()+"원";
									str+='</span>';
								str+='</div>';
							}else if(response[i].state == '모집완료'){
								str+='<div class="status-complete">';
									str+='<span class="status-text">';
										str+=response[i].state+'<br/>';
										str+=(response[i].cost).toLocaleString()+"원";
									str+='</span>';
								str+='</div>';
							}
						str+='</div>';
						str+='</div>';
						str+='</a>';
						str+='<hr>';
				}
				$("#listBox").append(str);
			},
			error:function(){
				}
		});
	}

	var day1=null;
	var day2=null;
	var day1Id;
	var day2Id;
	var count=0;
	var date1;
	var date2;
	var month1;
	var month2;
	searchDate=1;
	var kinds=null;
	var place=null;
	var offset = 0;
	$(function(){
		$("#placeSearch").keydown(function(key) {
	    	//키의 코드가 13번일 경우 (13번은 엔터키)
	    	place = $("#placeSearch").val();
	        if (key.keyCode == 13) {
		        //location.href="match?category=${category}&place="+place;
		        offset=0;
		        sortMatch(kinds,place,day1,day2);
	        }
	    });

		$(".searchButton").click(function(){
	    	place = $("#placeSearch").val();
		    offset=0;
			sortMatch(kinds,place,day1,day2);
		});
		
	    $("#search").click(function(){
		    if($("#placeSearch").is(":visible")){
				$("#placeSearch").slideUp(150);
				$(".searchIcons").slideUp(150);
				document.getElementById('sort').style.height='55px';
			}else{
				$("#placeSearch").slideDown();
				$(".searchIcons").slideDown();
				document.getElementById('sort').style.height='104px';
			}
		});

		$("#dateSearch-button").click(function(){
			//location.href="match?category=${category}&day1="+day1+"&day2="+day2;
			offset=0;
			sortMatch(kinds,place,day1,day2);
			if(day1==null || day2==null){
				$("#selectDate").html("날짜선택");
			}else{
				$("#selectDate").html(day1+" ~ "+day2);
			}
		});

		$(".sort-date").click(function(){
			kinds="date";
			offset=0;
			sortMatch(kinds,place,day1,day2);
		});

		$(".sort-entry").click(function(){
			kinds="entry";
			offset=0;
			sortMatch(kinds,place,day1,day2);
		});

		$("#resetDate").click(function(){
			day1=null;
			day2=null;
			$(".clicked").attr("class","day");
			$(".term").removeClass("term");
			$(".startTerm").removeClass("startTerm");
			$(".endTerm").removeClass("endTerm");
		});

		$(".deletePlaceButton").click(function(){
			$("#placeSearch").val("");
		});
		
		$(window).scroll(function(){
			var scrollTop = $(document).scrollTop();
			var height = $(document).height();
			var windowHeight = $(window).height();

			var timer;
			if(scrollTop == height-windowHeight){
				if(!timer){
					timer=setTimeout(function(){
						timer=null;
						offset=offset+10;
						scrollMatchList(offset,kinds,place,day1,day2);
					},1000);
				}
			}
		});
	});

	
	$(document).on("click",".dayTd",function(){
		// 현재 클릭한거 클래스 바꿈
		$(this).find(".day").attr("class","clicked");
		var month = today.getMonth()+1;
		count++;
		if(count==1){
			month1=month;

			// 이전의 것 지움
			if($(this).children().children().attr("id")!=day1Id){
				$("#"+day1Id).removeClass("clicked");
				$("#"+day1Id).addClass("day");
			}

			$("#"+day2Id).removeClass("clicked");
			$("#"+day2Id).addClass("day");
			
			$("#day"+date1).parent().removeClass("startTerm");			
			for(var i=Number(date1)+1; i<=date2 ;i++){
				$("#day"+i).parent().removeClass("term");			
			}
			$("#day"+date2).parent().removeClass("endTerm");			
			//

			date1=$(this).text();
			day2=null;
			day1 = today.getFullYear() + "-" + (month1<10 ? "0"+month1 : month1) + "-" + (date1<10 ? "0"+date1 : date1);
			day1Id = $(this).find("span").attr("id");
		}else{
			date2=$(this).text();
			month2=month;
			day2 = today.getFullYear() + "-" + (month2<10 ? "0"+month2 : month2) + "-" + (date2<10 ? "0"+date2 : date2);
			day2Id = $(this).find("span").attr("id");
			if(day1>day2){
				var tmp = day1;
				day1= day2;
				day2=tmp;

				tmp = date1;
				date1=date2;
				date2=tmp;

				tmp=day1Id;
				day1Id=day2Id;
				day2Id=tmp;
			}
				
			if(month1==month2){
				$("#day"+date1).parent().addClass("startTerm");			
				for(var i=Number(date1)+1; i<date2 ;i++){
					$("#day"+i).parent().addClass("term");			
				}
				$("#day"+date2).parent().addClass("endTerm");
			}else if(month1>month2){
				$("#day"+date1).parent().addClass("startTerm");
				for(var i =Number(date1)+1;i<=lastDate.getDate();i++){
					$("#day"+i).parent().addClass("term");
				}
			}else if(month1<month2){
				for(var i =1;i<Number(date2);i++){
					$("#day"+i).parent().addClass("term");
				}
				$("#day"+date2).parent().addClass("endTerm");
			}

			if(month1>month2){
				var tmp = month1;
				month1=month2;
				month2=tmp;
			}
			
			count=0;
		}
   });
	var preDate1;
	var preDate2;
	$(document).on("mouseover",".dayTd",function(){
		if(count==1){
			month2= today.getMonth()+1;
			date2=$(this).text();
			day2 = today.getFullYear() + "-" + (month2<10 ? "0"+month2 : month2) + "-" + (date2<10 ? "0"+date2 : date2);

			var tmpDate1;
			var tmpDate2;
			
			if(day1>day2){
				tmpDate1=date2;
				tmpDate2=date1;
			}else{
				tmpDate1=date1;
				tmpDate2=date2;
			}

			day2=null;
			
			if(month1== month2){
				$("#day"+preDate1).parent().removeClass("startTerm");
				$("#day"+tmpDate1).parent().addClass("startTerm");
				
				// 앞에 슬라이드?? 지우기
				for(var i=1; i<=lastDate.getDate() ;i++){
					$("#day"+i).parent().removeClass("term");
					if(i==preDate2){
					$("#day"+i).parent().removeClass("endTerm");
						}	
				}
				
				for(var i=Number(tmpDate1)+1; i<=tmpDate2 ;i++){
					$("#day"+i).parent().addClass("term");
					if(i==tmpDate2){
						$("#day"+i).parent().addClass("endTerm");
					}			
				}
			}else if(month1>month2){
				$("#day"+preDate1).parent().removeClass("startTerm");
				$("#day"+tmpDate1).parent().addClass("startTerm");

				
				for(var i=Number(preDate1)+1; i<=lastDate.getDate() ; i++){
					$("#day"+i).parent().removeClass("term");
				}
				for(var i=Number(tmpDate1)+1; i<=lastDate.getDate() ; i++){
					$("#day"+i).parent().addClass("term");
				}
			}else if(month1<month2){
				
				for(var i=1; i<=Number(preDate2)+1 ; i++){
					$("#day"+i).parent().removeClass("term");
				}
				for(var i=1; i<Number(tmpDate2) ; i++){
					$("#day"+i).parent().addClass("term");
				}
				
				$("#day"+preDate2).parent().removeClass("endTerm");
				$("#day"+tmpDate2).parent().addClass("endTerm");

			}
			
			preDate1=tmpDate1;
			preDate2=tmpDate2;
		}
	});

</script>
<style type="text/css">
	.term{
		background-color: #66b3cc;
		color: white;
	}
	.startTerm{
		background-color: #66b3cc;
		background: linear-gradient(90deg, #ffffff 50%, #66b3cc 50%);
	}
	.endTerm{
		background-color: #66b3cc;
		background: linear-gradient(90deg, #66b3cc 50%, #ffffff 50%);
	}
	.sort-right{
		float: right;
	}
	.sort-date{
		margin-right: 20px;
	}
	.main-slider{
		margin-top: 8px;
	}
	.swiper{
		border-radius:20px;
		height: 340px; 
	}
	.swiper-pagination-bullet-active {
  		background-color: #fff;
		color:#fff;
		background: #fff;
	}
	.swiper-pagination-bullet{
		color:#fff;
		background: #fff;
	}
	.slideModify{
		margin-top: 4px;
		text-align: center;
	}
	.slideBtn{
		width: 170px;
		display: inline-block;
	}
	.searchIcons{
		position: absolute;
		top: -2px;
		z-index: 100;
		right: 5px;
		font-size: 29px;
		display: none;
	}
	.deletePlaceButton{
		border-right: 1px solid #cccccc;
		margin-right: 7px;
		padding-right: 7px; 
	}
	.calendarButton>input{
		width:49%;
	}
	.calendarButton{
		text-align: center;
		margin-top: 22px;
	}
</style>
</head>
<body>
	<div id="wrapper">
	<div class="container">
		<div class="main-slider">
		<!-- swiper-container에서 swiper로 클래스명 변경  -->
			<div class="swiper"> 
				<div class="swiper-wrapper">
					<c:forEach items="${sliderName}" var="sliderName">
						<div class="swiper-slide">
							<img width="100%" height="100%" alt="main1" src="resources/img/slider/${sliderName}">
						</div>
					</c:forEach>
				</div>
				<div class="swiper-pagination"></div>
				<div class="swiper-button-prev"></div>
				<div class="swiper-button-next"></div>
			</div>
				<sec:authorize access="hasRole('ROLE_ADMIN')">
					<div class="slideModify">
						<input type="button" class="btn btn-default slideBtn" value="슬라이드 추가 및 변경" onclick="location.href='adminSlider'"/>
					</div>
				</sec:authorize>
		</div>
		<script type="text/javascript">
			var mySwiper = new Swiper('.swiper',{
				// Optional parameters
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

				autoplay :{
					delay :3500,
				},
				
			    slidesPerView: 1,
			    spaceBetween: 30,
			    mousewheel: false,
			    
			    // 모달 또는 팝업 사용 시 슬라이드 미작동 문제 해결 
			    observer: true,
			    observeParents: true,
			});
		</script>
		
		<sec:authorize access="isAuthenticated()">
			<a href="newMatch?category=${category}"><img src="resources/img/글쓰기.png" id="fixedbtn"></a>
		</sec:authorize>
		<sec:authorize access="isAnonymous()">
			<a href="#"  onclick="reject_button()"><img src="resources/img/글쓰기.png" id="fixedbtn"></a>
		</sec:authorize>
		<div id="sort">
			<span id="search">장소검색</span>
			<span id="selectDate" data-toggle="modal" data-target="#calendarModal" style="margin-left: 20px;">날짜선택</span>
			<div class="sort-right">
				<span class="sort-date">날짜순</span>
				<span class="sort-entry">등록순</span>
			</div>
			<div id="searchInput">
				<input type="text" id="placeSearch" class="form-control" name="place" value="${place}" placeholder="주소 또는 장소명을 입력해주세요."/>
				<div class="searchIcons">
					<i class="fas fa-times deletePlaceButton"></i><i class="fas fa-search searchButton"></i>
				</div>
			</div>
		</div>
		<div id="calendarModal" class="modal fade" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-body">
						<%@include file="modal.jsp"%>
						<div class="calendarButton">
							<input type="button" id="dateSearch-button" class="btn btn-default" value="선택" data-dismiss="modal"/>
							<input type="button" id="resetDate" class="btn btn-default" value="초기화"/>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<c:if test="${matchList.size() eq 0}">
			검색 결과가 없습니다.
		</c:if>
		
		<div id="listBox">
		<c:forEach items="${matchList}" var="matchList">
			<a href="matchDetail?mbno=${matchList.mbno}">
				<div class="match">
					<div class="left-section">
						<div class="left-box">
							<span class="date-span">${matchList.date}</span><br/>
							<span>${matchList.time}</span>
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
									<fmt:formatNumber value="${matchList.cost}" pattern="#,###"/>원
								</span>
							</div>
						</c:when>
						<c:when test="${matchList.state eq '모집완료'}">
							<div class="status-complete">
								<span class="status-text">
									${matchList.state}<br/>
									<fmt:formatNumber value="${matchList.cost}" pattern="#,###"/>원
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
	</div>
	<%@ include file ="footer.jsp" %>
	</div>
</body>
</html>