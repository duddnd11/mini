<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function apply_team(){
		var applyData={
			teamno :$("#teamno").val(),
			comment:$("#comment").val(),
		}
	
		$.ajax({
			url:'rest/applyTeam',
			type:'post',
			data:JSON.stringify(applyData),
			contentType : 'application/json',
			beforeSend: function(xhr){
				 xhr.setRequestHeader(header, token);
			},
			success: function(response){
				$("#join").attr("disabled",true);
				$("#join").val("신청 완료");
			},
			error: function(){
				}
		});
	}

	$(function(){
		$("#join").click(function(){
			apply_team();
		});
	});

</script>
<style>
	#emblem{
		width:230px;
		height: 230px;
		float: left;
	}
	#teamDetail{
		display: inline-block;
	}
	th,td{
		text-align: center;
	}
	.table{
		width: 640px;
	}
</style>
</head>
<body>
<div id="wrapper">
	<div class="container">
			<div style="height:247px;">
			<img id="emblem" src="resources/img/${teamDetail.img}">
			<div id="teamDetail">
				<table class="table table-striped">
				<tr>
					<th colspan="4">팀명</th>
				</tr>
				<tr>
					<td colspan="4">${teamDetail.name}</td>
				</tr>
				<tr>
					<th colspan="4">활동 지역</th>
				</tr>
				<tr>
					<td colspan="4">${teamDetail.addr}</td>
				</tr>
				<tr>
					<th>종목</th>
					<th>현재원</th>
					<th>성별</th>
					<th>대표자</th>
				</tr>
				<tr>
					<td>${teamDetail.sport}</td>
					<td>${teamDetail.members}</td>
					<td>${teamDetail.gender}</td>
					<td>${teamDetail.representative}</td>
				</tr>
				</table>
			</div>
			</div>
			<div class="panel panel-info">
				<div class="panel-heading">
					팀소개
				</div>
				<div class="panel-body">
					${teamDetail.introduce}
				</div>
			</div>
			<c:choose>
			<c:when test="${checkApply >=1 }">
				<input type="button" id="join" class="btn btn-danger" value="신청 완료" disabled/>
			</c:when>
			<c:otherwise>
				<input type="button" id="join" class="btn btn-success" value="가입 신청" data-toggle="modal" data-target="#placeModal"/>
			</c:otherwise>
			</c:choose>
			<div id="placeModal" class="modal fade" role="dialog">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-body">
								<form action="teamApply" method="post" target="_self">
									<div>
										<input type="text" id="comment" name="comment" placeholder="내용을 입력해 주세요."/>
									</div>
									<input type="hidden" id="teamno" name="teamno" value="${teamDetail.teamno}"/>
									<button type="button" id="apply_button" data-dismiss="modal">가입신청</button>
									<button type="button" data-dismiss="modal">취소</button>
									<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
								</form>
							</div>
						</div>
					</div>
				</div>
	</div>
<%@ include file ="footer.jsp" %>
	</div>
</body>
</html>