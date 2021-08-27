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
	.match-wrap{
		display: none;
	}
	.myMatchApply-wrap{
		display: none;
	}
	.myMercenary-wrap{
		display: none;
	}
	.myMercenaryApply-wrap{
		display: none;
	}
	.user-info{
		margin-bottom:25px;
	}
	h4{
		font-weight: 550;
		display: inline-block;
	}
	.imgDiv{
		width:100px;
	}
	#profile-image{
		border-radius: 50%;
		width: 70px;
		height: 70px;
	}
	.myMatchToggle:hover,.myMatchApplyToggle:hover,.myMercenaryToggle:hover,.myMercenaryApplyToggle:hover{
		cursor: pointer;
	}
	.profile{
		display: inline-block;
		margin-left: 10px;
	}
	.name{
		font-size: 16px;
		font-weight: 700;
	}
	.fas{
		float: right;
	}
	.apply-wrap{
		height: 55px;
		border-bottom: 1px solid #eee;
		margin-top: 10px;
	}
	.apply-wrap-last{
		height: 55px;
		margin-top: 10px;
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
						if(i==response.length-1){
							str+="<div class='apply-wrap-last'>";
						}else{
							str+="<div class='apply-wrap'>";
						}
						str+="<div class='left-section'>";
						str+="<div class='apply_id'>"+response[i].id+"</div>";
						str+="<div class='apply-teamname'>"+response[i].teamname+"</div>";
						str+="<div>"+response[i].memberVo.phoneNum+"</div>";
						str+="</div>";
						str+="<div class='right-section'>";
						if(response[i].state =="신청"){
								str+="<input id='matching"+response[i].applyno+"' class='matching-button btn btn-success' type='button' value='매칭'/>";
							}else if(response[i].state =="매칭완료"){
								str+="<input id='matching"+response[i].applyno+"' class='matching-button btn btn-primary' type='button' value='매칭완료' disabled/>";
								}else if(response[i].state=="매칭실패"){
								str+="<input id='matching"+response[i].applyno+"' class='matching-button btn btn-danger' type='button' value='매칭실패' disabled/>";
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
            $(".match-wrap").toggle();
            fold(this);
         });
      $(".myMatchApplyToggle").click(function(){
            $(".myMatchApply-wrap").toggle();
            fold(this);
         });
      $(".myMercenaryToggle").click(function(){
          $(".myMercenary-wrap").toggle();
          fold(this);
       });
      $(".myMercenaryApplyToggle").click(function(){
          $(".myMercenaryApply-wrap").toggle();
          fold(this);
       });
      $(".applyListButton").click(function(){
          var mbno = $(this).find(".mbno").val();
          applyList(mbno);
          $("#mbno").val(mbno);
       });
      
      });
		
   $(document).on("click","input.matching-button",function(){
          var applyno = $(this).parent().find(".applyno").val();
          var mbno = $(this).parent().find(".mbno").val();
          console.log(applyno);
          console.log(mbno);
    	  updateState(applyno,mbno);
  });
</script>
</head>
<body>
<div id="wrapper">
	<div class="userContainer">
		<div class="user-info">
			<div class="left-section">
				<img id="profile-image" src="resources/img/<sec:authentication property="principal.img"/>">
				<div class="profile">
					<span class="name"><sec:authentication property="principal.name"/>님</span><br/>
					<sec:authentication property="principal.email"/>	
				</div>
			</div>
			<div class="right-section">
				<a href="myInfoModify" style="font-weight: 700;">정보수정</a>	
			</div>
		</div>
		<div class="myMenu">
		<div class="myMatchToggle">
			<h4>My 매치</h4><i class="fas fa-chevron-down"></i>
		</div>
		<br/>
		<div class="match-wrap">
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
									<fmt:formatNumber value="${myMatchList.cost}" pattern="#,###"/>원
								</span>
							</div>
						</div>
						<hr>
					</div>
				</a>
			</c:forEach>
			<c:if test="${empty myMatchList}">작성된 매치가 없습니다.</c:if>
		</div>
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
			<h4>매치신청</h4><i class="fas fa-chevron-down"></i>
		</div>
		<br />
		<div class="myMatchApply-wrap">
			<c:forEach items="${myMatchApplyList}" var="myMatchApplyList">
				<div class="myMatchApply">
					<a href="matchDetail?mbno=${myMatchApplyList.mbno}">
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
								<fmt:formatNumber value="${myMatchApplyList.cost}" pattern="#,###"/>원
							</span>
						</div>
					</c:when>
					<c:when test="${myMatchApplyList.applyVo.state eq '매칭완료' }">
						<div class="status-success">
							<span class="status-text"> 
								${myMatchApplyList.applyVo.state}<br />
								<fmt:formatNumber value="${myMatchApplyList.cost}" pattern="#,###"/>원
							</span>
						</div>
					</c:when>
					<c:when test="${myMatchApplyList.applyVo.state eq '매칭실패' }">
						<div class="status-fail">
							<span class="status-text"> 
								${myMatchApplyList.applyVo.state}<br />
								<fmt:formatNumber value="${myMatchApplyList.cost}" pattern="#,###"/>원
							</span>
						</div>
					</c:when>
					</c:choose>
					</div>
					<hr>
					</a>
				</div>
			</c:forEach>
			<c:if test="${empty myMatchApplyList}">신청한 매치가 없습니다.</c:if>
		</div>
		<div class="myMercenaryToggle">
			<h4>용병모집</h4><i class="fas fa-chevron-down"></i>
		</div>
		<br />
		<div class="myMercenary-wrap">
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
			<c:if test="${empty myMercenaryList}">작성한 용병모집이 없습니다.</c:if>
		</div>
		<div class="myMercenaryApplyToggle">
			<h4>용병신청</h4><i class="fas fa-chevron-down"></i>
		</div>
		<br />
		<div class="myMercenaryApply-wrap">
			<c:forEach items="${myMercenaryApplyList}" var="myMercenaryApplyList">
				<div class="myMercenaryApply">
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
						<span class="status-text"> ${myMercenaryApplyList.applyVo.state}<br />
							${myMercenaryApplyList.cost}
						</span>
					</div>
				</div>
				<hr>
			</div>
			</c:forEach>
			<c:if test="${empty myMercenaryApplyList}">용병신청한 매치가 없습니다.</c:if>
		</div>
		<div>
			<h4>팀원모집</h4><i class="fas fa-chevron-down"></i>
		</div>
	</div>
	</div>
<%@ include file ="footer.jsp" %>
	</div>
</body>
</html>