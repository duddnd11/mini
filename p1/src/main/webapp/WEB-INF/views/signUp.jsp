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

	h4{
		display: inline-block;
	}
	.name-check,.id-check,.pw-check,.email-check,.gender-check,.phone-check,.birth-check{
		display: inline-block;
		float: right;
    	margin-top: 17px;
	}
	#preImage{
		cursor: pointer;
	}
</style>
<script src="resources/utill.js"></script>
<script type="text/javascript">
		
</script>
</head>
<body>
<div id="wrapper">
		<div class="userContainer">
			<div class="user-body">
			<h3>회원가입</h3>
			<form action="userSignUpAction" method="post" onsubmit="return submitCheck();" enctype="multipart/form-data" >
				<input type="file" id="profile-imageFile" name="multipart" style="display:none"/>
				<div id="preImageDiv">
					<img id="preImage" src="resources/img/기본프로필.png" onclick="document.all.multipart.click()"/>
				</div>
				<div>
					<div>
					<h4>이름 </h4>
					<div class="name-check"></div>
					</div>
					<input type="text" name="name" id="name" placeholder="이름을 입력해주세요."/>
				</div>
				<div>
					<div>
						<h4>아이디</h4>
						<div class="id-check"></div>
					</div>
					<input type="text" name="id" id="id" placeholder="아이디를 입력해 주세요."/>
				</div>
				<div>
					<h4>비밀번호</h4>
					<input type="password" name="password" id="pw" placeholder="비밀번호를 입력해주세요."/>
				</div>
				<div>
					<div>
						<h4>비밀번호 확인</h4>
						<div class="pw-check"></div>
					</div>
					<input type="password" name="passwordCheck" id="pw2" placeholder="비밀번호를 한번 더 입력해주세요.">
				</div>
				<div>
					<div>
					<h4>이메일</h4>
					<div class="email-check"></div>
					</div>
					<input type="text" id="email" name="email" placeholder="이메일을 입력해주세요."/>
				</div>
				<div>
					<div>
					<h4>성별</h4>
					<div class="gender-check"></div>
					</div>
					<select class="gender" id="gender" name="gender">
						<option>성별</option>
						<option value="남성">남성</option>
						<option value="여성">여성</option>
					</select>
				</div>
				<div>
					<div>
					<h4>생년월일</h4>
					<div class="birth-check"></div>
					</div>
					<div>
					<input type="text" class="year" id="year" name="year" placeholder="년(4자)"/>
					<select class="month" name="month" id="month">
						<option>월</option>
						<c:forEach begin="1" end="12" var="i">
						<option value="${i}">${i}</option>
						</c:forEach>
					</select>
					<input type="text" class="day" id="day" name="day" placeholder="일"/>
					</div>
					<input type="hidden" id="birth" name="birth" value="0"/>
				</div>
				<div>
					<div>
					<h4>휴대폰 번호</h4>
					<div class="phone-check"></div>
					</div>
					<input type="text" id="phoneNum" name="phoneNum" placeholder="휴대폰 번호를 입력해주세요."/>
				</div>
				<br/>
				<div>
					<input type="submit" class="btn btn-success" value="회원가입"/>
				</div>
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }"/>
			</form>
			</div>
		</div>
<%@ include file ="footer.jsp" %>
		</div>
</body>
</html>