<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<base target="_self">
<script type="text/javascript">
	var header = $("meta[name='_csrf_header']").attr("th:content");
	var token = $("meta[name='_csrf']").attr("th:content");
	function apply_match(){
			var applyData={
				mbno :$("#mbno").val(),
				teamname:$("#teamname").val(),
				writerId : $("#writerId").val()
			}

			$.ajax({
				url:'rest/applymatch',
				type:'post',
				data:JSON.stringify(applyData),
				contentType : 'application/json',
				beforeSend: function(xhr){
					 xhr.setRequestHeader(header, token);
				},
				success: function(response){
					$(".matchButton").attr("disabled",true);
					$(".matchButton").val("신청 완료");
				},
				error: function(){
					}
			});
		}

	function write_comment(comment,level,ref){
			var commentData={
					mbno:$("#mbno").val(),
					comment:comment,
					level : level,
					ref:ref
			}

			$.ajax({
				url:'rest/writeComment',
				type:'post',
				data:JSON.stringify(commentData),
				contentType : 'application/json',
				beforeSend: function(xhr){
					 xhr.setRequestHeader(header, token);
				},
				success: function(response){
					var str ="";
					if(response.level==0){
						str+="<div class='comment-wrap'>";
					}
					str+='<span class="comment_id">'+response.id+'</span><br/>';
					str+='<span class="comment_date">'+response.date+'</span><br/>';
					str+='<span class="comment_comment">'+response.comment+'</span>';
					
					if(response.level ==0 ){
						str+='<div class="reCommentToggle"><span class="reCommentBtn'+response.ref+'">답글작성</span><br/><br/></div>';
						str+='<div class="reCommentDiv">';
						str+='<div class="reCommentContainer'+response.ref+'"></div>';
						str+='<div class="commentDiv">';
						str+='<textarea class="comment" name="comment" id="comment" placeholder="댓글을 입력해주세요."></textarea></div>';
						str+='<div class="commentBtnDiv">';
						str+='<input type="button" class="commentBtn btn btn-default" id="commentBtn" value="등록"/>';
						str+='<input type="hidden" id="level" value="1"/>';
						str+='<input type="hidden" id="ref" value="'+response.ref+'"/></div>';
						str+="</div></div>";
						$(".commentContainer").append(str);
					}else{
						str+="<br/><br/>";
						$(".reCommentContainer"+response.ref).append(str);
						if($(".reCommentBtn"+response.ref).html()=='답글작성'){
							$(".reCommentBtn"+response.ref).html('답글 <span style="font-weight:550">1</span>');
						}else{
							var number=Number($(".reCommentBtn"+response.ref).find("span").html())+1;
							$(".reCommentBtn"+response.ref).find("span").html(number);
						}
					}
				},
				error: function(){
					}
			});

		}
	
	$(function(){
		$(".apply_button").click(function(){
				if(confirm("신청하시겠습니까?")){
					apply_match();
				}
			});
		$(".reject_button").click(function(){
				alert("로그인 해주세요.");
				$("#comment").val('');
			});
		$(".comment-box").click(function(){
			window.scrollTo(0,$(".commentContainer").height());
		});
	});

	$(document).on("click","input.commentBtn",function(){
		var level = $(this).parent().find("#level").val();
		var ref = $(this).parent().find("#ref").val();
		var comment = $(this).parent().parent().find("#comment").val();
		write_comment(comment,level,ref);
	});
	$(document).on("click","div.reCommentToggle",function(){
		$(this).parent().find(".reCommentDiv").toggle();
	});
</script>
<style>
	.date>div{
		font-size:17px;
		display:inline-block;
		font-weight: 550;
	}
	.place{
		font-size:24px;
		font-weight: 700;
	}
	.item>div{
		display:inline-block;
	}
	.time{
		margin-left:7px;
	}
	.cost,.skill,.state{
		margin-left:15px;
	}
	.value{
		font-weight: 550;
		font-size: 16px;
	}
	.commentDiv,.comment{
		width: 730px;
		height : 110px;
		display: inline-block;
	}
	.commentBtnDiv,#commentBtn{
		display: inline-block;
		height : 110px;
   		width: 120px;
    	float: right;
	}
	.comment_date{
		font-size: 12px;
	    color: #cccccc;
	}
	.reCommentToggle{
		margin-top:10px;
	}
	.reCommentToggle>span{
		cursor: pointer;
	}
	.reCommentDiv{
		display: none;
		margin-left:40px;
	}
	.reCommentDiv>.commentDiv,.reCommentDiv>.commentDiv>.comment{
		width:680px;
		
	}
	#comment{
		resize: none;
		border-radius: 4px;
	}
	.applyBtn{
		width: 282px;
	}
	.applyBtnDiv{
		margin-top: 7px;
	}
	
	#btnDirection{
		position: relative;
		top:-340px;
		left : 10px;
		z-index: 5;
		width: 10%;
	}
	.commentHr{
		margin-top:0px;
		margin-bottom: 0px; 
	}
	.comment-box{
		float: right;
		display: inline-block;
		font-size: 26px;
		margin-top: 12px;
	}
	.comment-wrap{
		border-bottom: 1px solid #eee;
	}
	.insert_comment_wrap{
		margin: 15px 0 15px;
	}
	.fa-comment-dots{
		margin-right: 7px;
	}
	.comment-box{
		cursor: pointer;
	}
	.btn-complete{
		background-color: rgb(154, 154, 154);
	}
</style>
</head>
<body>
<div id="wrapper">
	<div class="container">
		<div id="mapWrapper">
			<div id="map" style="width: 100%; height: 350px;"></div>
			<input type="button" id="btnDirection" class="btn btn-default" value="길 찾기"
			onclick="getDirections();">
		</div>
			<br/>
			<div class="date">
				<div>${matchDetail.date}</div>
				<div class="time">${matchDetail.time}</div>
			</div>
			<div class="place"><span id="place">${matchDetail.place}</span></div>
			<div><span id="addr">${matchDetail.addr}</span></div>
			<br/>
			<div>${matchDetail.id}</div>
			<br/>
			<div class="item">
				<div class="rule">
					<div>경기방식</div>
					<div class="value">${matchDetail.rule}</div>
				</div>
				<div class="cost">
					<div>비용</div>
					<div class="value">${matchDetail.cost}</div>
				</div>
				<div class="skill">
					<div>실력</div>
					<div class="value">${matchDetail.skill}</div>
				</div>
				<div class="state">
					<div>상태</div>
					<div class="value">${matchDetail.state}</div>
				</div>
				<div class="comment-box">
					<i class="far fa-comment-dots"></i><span>${countComment}</span>
				</div>
			</div>
			<hr>
			<div>${matchDetail.contents}</div>
			<hr style="margin-bottom:0px;">
			<div class="commentContainer">
				<h4>댓글</h4>
				<c:forEach items="${commentList}" var="commentList">
					<c:if test="${commentList.level eq 0 }">
						<div class="comment-wrap">
							<span class="comment_id">${commentList.id}</span><br/>
							<span class="comment_date">${commentList.date}</span><br/>
							<span class="comment_comment">${commentList.comment}</span><br/>
							<div class="reCommentToggle">
							<c:set var="key">reComment${commentList.ref}</c:set>
							<c:choose>
								<c:when test="${map[key] >=1}">
									<span class="reCommentBtn${commentList.ref}">답글 <span style="font-weight:550">${map[key]}</span></span>
								</c:when>
								<c:otherwise>
									<span class="reCommentBtn${commentList.ref}">답글작성</span>
								</c:otherwise>
							</c:choose>
							<br/><br/></div>
							<div class="reCommentDiv">
								<div class="reCommentContainer${commentList.ref}">
									<c:forEach items="${reCommentList}" var="reCommentList">
										<c:if test="${reCommentList.ref eq commentList.cno}">
											<span class="comment_id">${reCommentList.id}</span><br/>
											<span class="comment_date">${reCommentList.date}</span><br/>
											<span class="comment_comment">${reCommentList.comment}</span><br/><br/>
										</c:if>
									</c:forEach>
								</div>
								<div class="commentDiv">
									<textarea class="comment" name="comment" id="comment" placeholder="댓글을 입력해주세요."></textarea>
								</div>
								<sec:authorize access="isAuthenticated()">
								<div class="commentBtnDiv">
									<input type="button" class="commentBtn btn btn-default" id="commentBtn" value="등록"/>
									<input type="hidden" id="level" value="1"/>
									<input type="hidden" id="ref" value="${commentList.cno}"/>
								</div>
								</sec:authorize>
									<sec:authorize access="isAnonymous()">
									<input type="button" value="등록" class="commentBtn reject_button btn btn-default"  id="commentBtn"/>
								</sec:authorize>
							</div>
						</div>
					</c:if>
				</c:forEach>
			</div>
			<div class="insert_comment_wrap">
				<div class="commentDiv">
					<textarea class="comment" name="comment" id="comment" placeholder="댓글을 입력해주세요."></textarea>
				</div>
				<sec:authorize access="isAuthenticated()">
				<div class="commentBtnDiv">
					<input type="button" class="commentBtn btn btn-default" id="commentBtn" value="등록"/>
					<input type="hidden" id="level" value="0"/>
					<input type="hidden" id="ref" value="0"/>
				</div>
				</sec:authorize>
				<sec:authorize access="isAnonymous()">
					<input type="button" value="등록" class="commentBtn reject_button btn btn-default"  id="commentBtn"/>
				</sec:authorize>
			</div>
			<sec:authorize access="isAuthenticated()">
			<c:choose>
				<c:when test="${checkApply >=1 }">
					<input type="button" value="신청 완료" class="matchButton btn btn-danger" disabled/>
				</c:when>
				<c:when test="${matchDetail.state eq '모집완료' }">
					<input type="button" value="모집 완료" class="matchButton btn btn-complete" disabled/>
				</c:when>
				<c:when test="${matchDetail.category eq '매치'}">
					<input type="button" value="매치 신청" class="matchButton btn btn-success" data-toggle="modal" data-target="#placeModal" />
				</c:when>
				<c:when test="${matchDetail.category eq '용병'}">
					<input type="button" value="용병 신청" class="matchButton btn btn-success apply_button"/>
				</c:when>
			</c:choose>
			<input type="hidden" id="writerId" value="${matchDetail.id}"/>
			</sec:authorize>
			<sec:authorize access="isAnonymous()">
				<input type="button" value="매치 신청" class="matchButton reject_button btn btn-success"  id="reject_button"/>
			</sec:authorize>
				<div id="placeModal" class="modal fade" role="dialog">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-body">
								<form action="apply" method="post" target="_self">
									<div>
									<input type="text" id="teamname" name="teamname" placeholder="신청할 팀 명을 입력해주세요."/>
									</div>
									<div class="applyBtnDiv">
										<button type="button" class="btn btn-default applyBtn apply_button" data-dismiss="modal">매치 신청</button>
										<button type="button" class="btn btn-default applyBtn" data-dismiss="modal">취소</button>
									</div>
									<input type="hidden" id="mbno" name="mbno" value="${matchDetail.mbno}"/>
									<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
								</form>
							</div>
						</div>
					</div>
				</div>
	</div>
		<%@include file="footer.jsp" %>	
	</div>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8ea6851c46139f72cfdeecdff1f58acf&libraries=services"></script>
	<script>
		var addr = $("#addr").text();
		var place =$("#place").text();
		var mapContainer = document.getElementById('map'); // 지도를 표시할 div
		var mapWrapper = document.getElementById('mapWrapper');
		var btnDirection =document.getElementById('btnDirection');
		
		var mapOption = {
			center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption);

		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();

		var coords;
		
		// 주소로 좌표를 검색합니다
		geocoder.addressSearch(addr,function(result, status) {
							// 정상적으로 검색이 완료됐으면 
							if (status === kakao.maps.services.Status.OK) {

								coords = new kakao.maps.LatLng(result[0].y,
										result[0].x);

								// 결과값으로 받은 위치를 마커로 표시합니다
								var marker = new kakao.maps.Marker({
									map : map,
									position : coords
								});

								// 인포윈도우로 장소에 대한 설명을 표시합니다
								var infowindow = new kakao.maps.InfoWindow(
										{
											content : '<div style="width:150px;text-align:center;padding:6px 0;">'+place+'</div>'
										});
								infowindow.open(map, marker);

								// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
								map.setCenter(coords);
								console.log(coords);
							}
		});
		function getDirections(){
			window.open('https://map.kakao.com/link/to/'+place+','+coords.Ma+','+coords.La);
			
		}
	</script>

</body>
</html>