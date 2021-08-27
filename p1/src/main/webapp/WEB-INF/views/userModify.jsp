<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style>
	.year,.month,.day{
		width:155px;
		height:45px;
		font-size : 16px;
	}
	.month,.day{
		margin-left :13px;
	}
	.gender{
		width:100%;
		height:45px;
	}
	h4{
		display: inline-block;
	}
	.name-check,.id-check,.pw-check,.email-check,.gender-check,.phone-check,.birth-check{
		display: inline-block;
		float: right;
    	margin-top: 17px;
	}
	#pwDiv{
		display: none;
	}
	.fas{
		font-size:25px;
		float: right;
		margin-top: 7px;
	}
</style>

<script type="text/javascript">
	nameFlag=true;
	idFlag=true;
	pwFlag=true;
	emailFlag=true;
	genderFlag=true;
	birthFlag=true;
	phoneFlag=true;

	$(function(){
		/**
		$("#pwDiv").toggle(function(){
			alert("dd");			
		});**/
	});
</script>
</head>
<body>
<div id="wrapper">
		<div class="userContainer">
			<div class="user-body">
			<h3>내 정보 수정</h3>
			<form action="myInfoModifyAction" method="post" onsubmit="return submitCheck();" enctype="multipart/form-data" >
				<input type="file" id="profile-imageFile" name="multipart" style="display:none"/>
				<div id="preImageDiv">
					<img id="preImage" src="resources/img/${user.img}" style="cursor:pointer;" onclick="document.all.multipart.click()"/>
				</div>
				<div>
					<div>
					<h4>이름 </h4>
					<div class="name-check"></div>
					</div>
					<input type="text" name="name" id="name" placeholder="이름을 입력해주세요." value="${user.name}"/>
				</div>
				<div>
					<div>
						<h4>아이디</h4>
						<div class="id-check"></div>
					</div>
					<input type="text" name="id" id="id" value="${user.id}" disabled="disabled"/>
				</div>
				<div id="pwToggle" style="cursor:pointer;">
					<h4>비밀번호</h4><i class="fas fa-chevron-down"></i>
				</div>
				<div id="pwDiv">
					<div>
						<input type="password" name="password" id="pw" placeholder="새 비밀번호를 입력해주세요."/>
						<h4>비밀번호 확인</h4>
						<div class="pw-check"></div>
					</div>
					<input type="password" name="passwordCheck" id="pw2" placeholder="새 비밀번호를 한번 더 입력해주세요.">
				</div>
				<div>
					<div>
					<h4>이메일</h4>
					<div class="email-check"></div>
					</div>
					<input type="text" id="email" name="email" placeholder="이메일을 입력해주세요." value="${user.email}"/>
				</div>
				<div>
					<div>
					<h4>성별</h4>
					<div class="gender-check"></div>
					</div>
					<select class="gender" id="gender" name="gender">
						<option>성별</option>
						<c:choose>
							<c:when test="${user.gender eq '남성' }">
								<option value="남성" selected>남성</option>
								<option value="여성">여성</option>
							</c:when>
							<c:when test="${user.gender eq '여성' }">
								<option value="남성">남성</option>
								<option value="여성" selected>여성</option>
							</c:when>
						</c:choose>
					</select>
					</div>
				<div>
					<div>
					<h4>생년월일</h4>
					<div class="birth-check"></div>
					</div>
					<div>
					<input type="text" class="year" id="year" name="year" value="${year}" placeholder="년(4자)"/>
					<select class="month" name="month" id="month">
						<option>월</option>
						<c:forEach begin="1" end="12" var="i">
						<option value="${i}"<c:if test="${month eq i}">selected</c:if>>${i}</option>
						</c:forEach>
					</select>
					<input type="text" class="day" id="day" name="day" value="${day}" placeholder="일"/>
					</div>
					<input type="hidden" id="birth" name="birth" value="0"/>
				</div>
				<div>
					<div>
					<h4>휴대폰 번호</h4>
					<div class="phone-check"></div>
					</div>
					<input type="text" id="phoneNum" name="phoneNum" value="${user.phoneNum}"/>
				</div>
				<br/>
				<div>
					<input type="submit" class="btn btn-success"value="정보수정"/>
				</div>
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }"/>
			</form>
			</div>
		</div>
<%@ include file ="footer.jsp" %>
		</div>
</body>
</html>