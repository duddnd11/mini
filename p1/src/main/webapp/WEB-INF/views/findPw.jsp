<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/utill.js"></script>
<script type="text/javascript">
$(function(){
	$("#id2").blur(function(){
		$(".id-check").children().remove();
		var id = $("#id2").val();
		var idExp=/^[a-zA-z0-9]{1,12}$/;
		var str="";
		if(!idExp.test(id)){
			str+= "<span style='color:red'>";
			str+="영문 대소문자와 숫자 1~12자리로 입력해야합니다!";
			str+="</span>";
			$(".id-check").append(str);
			idFlag=false;
		}else{
			idFlag = true;
		}
	});

	$("#findPwForm").submit(function(e) {
	    e.preventDefault(); 
	    findPw();
	});
});

function findPwSubmitCheck(){
	if(idFlag && phoneFlag && emailFlag){
		return true;
	}else{
		alert("입력 정보를 다시 확인해 주세요.");
	}
	return false;
}

function findPw(){
	var Data={
		id:$("#id2").val(),
		phoneNum:$("#phoneNum").val(),
		email: $("#email").val()
	}

	$.ajax({
		url:'rest/findPwAction',
		type:'post',
		data:JSON.stringify(Data),
		contentType : 'application/json',
		beforeSend: function(xhr){
			 xhr.setRequestHeader(header, token);
		},
		success: function(response){
			if(response ==1){
				alert("임시 비밀번호가 메일로 전송되었습니다.");
				location.href="userLogin2";
			}else{
				alert("일치하는 정보가 없습니다.");
			}
		},
		error: function(){
			}
	});
}

</script>
</head>
<body>
<div id="wrapper">
	<div class="userContainer">
		<div class="user-body">
			<h3>비밀번호 찾기</h3>
			<form id="findPwForm"action="findPwAction" onsubmit="return findPwSubmitCheck();">
				<div>
					<h4>아이디</h4>
					<div class="id-check"></div>
					<input type="text" name="id" id="id2" placeholder="아이디를 입력해 주세요.">
				</div>
				<div>
					<h4>휴대폰 번호</h4>
					<div class="phone-check"></div>
					<input type="text" name="phoneNum" id="phoneNum" placeholder="가입시 입력한 휴대폰 번호를 입력해 주세요"/>
				</div>
				<div>
					<h4>이메일</h4>
					<div class="email-check"></div>
					<input type="text" name="email" id="email" placeholder="가입시 입력한 이메일 주소를 입력해 주세요."/>
				</div>
				<br/>
				<input type="submit" class="btn btn-success" value="임시비밀번호 전송"/>		
			</form>
		</div>
	</div>
<%@ include file="footer.jsp" %>
	</div>
</body>
</html>