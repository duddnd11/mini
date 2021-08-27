<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>팀 등록</title>
<style>
.introduce{
	width:100%;
	resize: none;
}
</style>
<script type="text/javascript">

	function submitCheck(){
		var name= $("#name").val().trim();
		var sport= $("#sport").val().trim();
		var members=  $("#members").val().trim();
		var addr=  $("#addr").val().trim();
		var gender= $("#gender").val().trim();
		var introduce= $("#introduce").val().trim();
		
		if(name != "" && sport != "" && members != "" && addr != "" && gender != "" && introduce != ""){
			return true;
		}else{
			alert("입력 정보를 다시 확인해 주세요.");
		}
		return false;
	}

	$(function(){
		$("#emblem-imageFile").on('change',function(){
			readURL(this);
			});
		function readURL(input) {
            if (input.files && input.files[0]) {
               var reader = new FileReader();
               reader.onload = function (e) {
                  $('#preImage').attr('src', e.target.result);
               }
               reader.readAsDataURL(input.files[0]);
            }
        }
	});
</script>
</head>
<body>
	<div id="wrapper">
	<div class="container">
	<div class="user-body">
	<h3>팀 등록</h3>
		<form action="createTeamAction" method="post" onsubmit="return submitCheck();" enctype="multipart/form-data">
		<div>
			<input type="file" id="emblem-imageFile" name="multipart" style="display:none"/>
			<div id="preImageDiv">
					<img id="preImage" src="resources/img/기본엠블럼.jpg" onclick="document.all.multipart.click()"/>
			</div>
		</div>
		<div>
			<p>팀 명</p>
			<input type="text" id="name" name="name" placeholder="팀명을 입력해 주세요."/>
		</div>
		<div>
			<p>종목</p>
			<input type="text" id="sport" name="sport" placeholder="운동 종목을 입력해 주세요."/>
		</div>
		<div>
			<p>팀원 수</p>
			<input type="text" id="members" name="members" placeholder="현재 팀원 수를 입력해 주세요."/>
		</div>
		<div>
			<p>활동지역</p>
			<input type="text" id="addr" name="addr" placeholder="주요 활동지역을 입력해 주세요."/>
		</div>
		<div>
			<p>성별</p>
			<select class="gender" id="gender" name="gender">
				<option>성별</option>
				<option value="남성">남성</option>
				<option value="여성">여성</option>
				<option value="무관">무관</option>
			</select>
		</div>
		<div>
			<p>팀 소개</p>
			<textarea name="introduce" id="introduce" class="introduce" placeholder="팀을 소개 할 내용을 입력해주세요."></textarea>
		</div>
		<div>
			<input type="submit" value="팀 등록"/>
		</div>
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }"/>
		<input type="hidden" name="representative" value="${userId}"/>
		</form>
		</div>
	</div>
	<%@ include file ="footer.jsp" %>
	</div>
</body>
</html>