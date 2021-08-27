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
	function findIdSubmitCheck(){
		if(nameFlag && phoneFlag){
			return true;
		}else{
			alert("입력 정보를 다시 확인해 주세요.");
		}
		return false;
	}
</script>
</head>
<body>
<div id="wrapper">
	<div class="userContainer">
		<div class="user-body">
			<h3>아이디 찾기</h3>
			<form action="findIdAction" onsubmit="return findIdSubmitCheck();">
				<div>
					<h4>이름</h4>
					<div class="name-check"></div>
					<input type="text" name="name" id="name" placeholder="이름을 입력해주세요."/>
				</div>
				<div>
					<h4>휴대폰 번호</h4>
					<div class="phone-check"></div>
					<input type="text" name="phoneNum" id="phoneNum" placeholder="가입시 입력한 휴대폰 번호를 입력해주세요"/>
				</div>
				<br/>
				<input type="submit" value="아이디 찾기" class="btn btn-success"/>
			</form>
		</div>
	</div>
<%@ include file="footer.jsp" %>
	</div>
</body>
</html>