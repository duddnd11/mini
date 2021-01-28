<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link href="resources/userCss.css" rel="stylesheet">
<link href="resources/matchCss.css" rel="stylesheet">
<meta charset="UTF-8">
<title>마이페이지</title>
<style type="text/css">
	.match{
		display: none;
	}
	.myMatchApply{
		display: none;
	}
	.myMercenary{
		display: none;
	}
	.user-info{
		margin-bottom:25px;
	}
	h4{
		font-weight: 550;
	}
</style>
<script type="text/javascript">

	function applyList(mbno){
		var applyData={
			mbno :mbno,
		}
		$.ajax({
			url:'rest/applyList',
			type:'post',
			data:JSON.stringify(applyData),
			contentType : 'application/json',
			beforeSend: function(xhr){
				 xhr.setRequestHeader(header, token);
			},
			success: function(response){
				$(".modal-body").children().remove();
				var str="";
				if(response.length == 0){
					str+="<div>신청 목록이 없습니다.</div>";
				}else{
					for(var i=0; i<response.length ;i++){
						str+="<div>";
						str+="<div class='left'>";
						str+="<div class='apply_id'>"+response[i].id+"</div>";
						str+="<div class='apply-teamname'>"+response[i].teamname+"</div>";
						str+="</div>";
						str+="<div class='right-box'>";
						if(response[i].state =="신청"){
								str+="<input id='matching"+response[i].applyno+"' class='matching-button' type='button' value='매칭'/>";
							}else if(response[i].state =="매칭완료"){
								str+="<input id='matching"+response[i].applyno+"' class='matching-button' type='button' value='매칭완료' disabled/>";
								}else{
								str+="<input id='matching"+response[i].applyno+"' class='matching-button' type='button' value='매칭실패' disabled/>";
									}
						str+="<input class='applyno' type='hidden' value='"+response[i].applyno+"'/>"
						str+="<input class='mbno' type='hidden' value='"+response[i].mbno+"'/>"
						str+="</div>";
						str+="</div>";
					}				
				}
				$(".modal-body").append(str);
			},
			error: function(){
				}
		});
	}
	
	function updateState(applyno,mbno){
		var applyData={
			applyno :applyno,
			mbno:mbno
		}
		$.ajax({
			url:'rest/updateState',
			type:'post',
			data:JSON.stringify(applyData),
			contentType : 'application/json',
			beforeSend: function(xhr){
				 xhr.setRequestHeader(header, token);
			},
			success: function(response){
				$("#matching"+applyno).attr("disabled",true);
				$("#matching"+applyno).val("매칭완료");
			},
			error: function(){
				}
		});
	}


   $(function(){
      $(".myMatchToggle").click(function(){
            $(".match").toggle();
         });
      $(".myMatchApplyToggle").click(function(){
            $(".myMatchApply").toggle();
         });
      $(".myMercenaryToggle").click(function(){
          $(".myMercenary").toggle();
       });
      $(".applyListButton").click(function(){
          var mbno = $(this).find(".mbno").val();
          applyList(mbno);
          $("#mbno").val(mbno);
       });
      });

   $(document).on("click","input[class='matching-button']",function(){
          var applyno = $(this).parent().find(".applyno").val();
          var mbno = $(this).parent().find(".mbno").val();
    	  updateState(applyno,mbno);
  });
</script>
</head>
<body>
	<div class="userContainer">
		<div class="user-info">
			<div class="left-section">
				<sec:authentication property="principal.name"/>	<br/>	
				<sec:authentication property="principal.email"/>	
			</div>
			<div class="right-section">
				<a href="#">정보수정</a>	
			</div>
		</div>
		<div class="myMenu">
		<div class="myMatchToggle">
			<h4>My 매치</h4>
		</div>
		<br/>
		<c:forEach items="${myMatchList}" var="myMatchList">
		<a href="#applyList"  data-toggle="modal" class="applyListButton">
			<input type="hidden" value="${myMatchList.mbno }" class="mbno"/>
			<div class="match">
				<div class="left-section">
					<div class="left-box">
						<span class="date-span"> ${myMatchList.date} </span><br /> <span>
							${myMatchList.time} </span>
					</div>
					<div class="right-box">
							<span class="place">${myMatchList.place}</span><br/>
							<span>${myMatchList.rule}</span>
							<span class="skill-span">실력 ${myMatchList.skill}</span>
						</div>
				</div>
				<div class="right-section">
					<div class="status">
						<span class="status-text"> ${myMatchList.state}<br />
							${myMatchList.cost}
						</span>
					</div>
				</div>
				<hr>
			</div>
		</a>
		</c:forEach>
		<div id="applyList" class="modal fade" role="dialog">
		<input type="hidden" id="mbno"/>
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-body">
					</div>
				</div>
			</div>
		</div>
		
		<div class="myMatchApplyToggle">
			<h4>매치신청</h4>
		</div>
		<br />
		<c:forEach items="${myMatchApplyList}" var="myMatchApplyList">
			<div class="myMatchApply">
				<div class="left-section">
					<div class="left-box">
						<span class="date-span"> ${myMatchApplyList.date} </span><br /> <span>
							${myMatchApplyList.time} </span>
					</div>
					<div class="right-box">
							<span class="place">${myMatchApplyList.place}</span><br/>
							<span>${myMatchApplyList.rule}</span>
							<span class="skill-span">실력 ${myMatchApplyList.skill}</span>
						</div>
				</div>
				<div class="right-section">
				<c:choose>
				<c:when test="${myMatchApplyList.applyVo.state eq '신청' }">
					<div class="status">
						<span class="status-text"> 
							${myMatchApplyList.applyVo.state}<br />
							${myMatchApplyList.cost}
						</span>
					</div>
				</c:when>
				<c:when test="${myMatchApplyList.applyVo.state eq '매칭완료' }">
					<div class="status-success">
						<span class="status-text"> 
							${myMatchApplyList.applyVo.state}<br />
							${myMatchApplyList.cost}
						</span>
					</div>
				</c:when>
				<c:when test="${myMatchApplyList.applyVo.state eq '매칭실패' }">
					<div class="status-fail">
						<span class="status-text"> 
							${myMatchApplyList.applyVo.state}<br />
							${myMatchApplyList.cost}
						</span>
					</div>
				</c:when>
				</c:choose>
				</div>
				<hr>
			</div>
		</c:forEach>
		<div class="myMercenaryToggle">
			<h4>용병모집</h4>
		</div>
		<br />
		<c:forEach items="${myMercenaryList}" var="myMercenaryList">
		<a href="#applyList"  data-toggle="modal" class="applyListButton">
		<div class="myMercenary">
				<div class="left-section">
					<div class="left-box">
						<span class="date-span"> ${myMercenaryList.date} </span><br /> <span>
							${myMercenaryList.time} </span>
					</div>
					<div class="right-box">
							<span class="place">${myMercenaryList.place}</span><br/>
							<span>${myMercenaryList.rule}</span>
							<span class="skill-span">실력 ${myMercenaryList.skill}</span>
						</div>
				</div>
				<div class="right-section">
					<div class="status">
						<span class="status-text"> ${myMercenaryList.state}<br />
							${myMercenaryList.cost}
						</span>
					</div>
				</div>
				<hr>
			</div>
		</a>
		</c:forEach>
		<div class="myMercenaryApplyToggle">
			<h4>용병신청</h4>
		</div>
		<br />
			<c:forEach items="${myMercenaryApplyList}" var="myMercenaryApplyList">
				<div class="myMercenary">
				<div class="left-section">
					<div class="left-box">
						<span class="date-span"> ${myMercenaryApplyList.date} </span><br /> <span>
							${myMercenaryApplyList.time} </span>
					</div>
					<div class="right-box">
							<span class="place">${myMercenaryApplyList.place}</span><br/>
							<span>${myMercenaryApplyList.rule}</span>
							<span class="skill-span">실력 ${myMercenaryApplyList.skill}</span>
						</div>
				</div>
				<div class="right-section">
					<div class="status">
						<span class="status-text"> ${myMercenaryApplyList.appyVo.state}<br />
							${myMercenaryApplyList.cost}
						</span>
					</div>
				</div>
				<hr>
			</div>
			</c:forEach>
		<div>
			<h4>팀원모집</h4>
		</div>
	</div>
	</div>
</body>
</html>