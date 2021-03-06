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
	
</style>
<script type="text/javascript">
	var nameFlag=false;
	var idFlag=false;
	var pwFlag=false;
	var emailFlag=false;
	var genderFlag=false;
	var birthFlag=false;
	var phoneFlag=false;

	function idCheck(id){
		var idData={
			id:id
		}
		$.ajax({
			url:'rest/idCheck',
			type:'post',
			data:JSON.stringify(idData),
			contentType : 'application/json',
			beforeSend: function(xhr){
				 xhr.setRequestHeader(header, token);
			},
			success: function(response){
				$(".id-check").children().remove();
				var str="";
				if(response == true){
				 		str+= "<span style='color:blue'>";
						str+="사용 가능한 아이디 입니다.";
						idFlag=true;
					}else{
				 		str+= "<span style='color:red'>";
						str+= "사용 불가능한 아이디 입니다.";
					}
				str+="</span>";
				$(".id-check").append(str);
			},
			error: function(){
				}
		});
	}	
	
	$(function(){
		$("#name").blur(function(){
			$(".name-check").children().remove();
			var name=$("#name").val();
			var nameExp = /^[가-힣]{2,5}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/; 
			var str="";
			if(!nameExp.test(name)){
				str+= "<span style='color:red'>";
				str+="한글과 영문 대 소문자를 사용하세요. (특수기호, 공백 사용 불가)";
			}else{
				nameFlag=true;
			}
			$(".name-check").append(str);
		});
		$("#id").blur(function(){
				var id = $("#id").val();
				idCheck(id);
			});
		$("#pw2").blur(function(){
				$(".pw-check").children().remove();
				var password1RegExp = /^(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/; //비밀번호 유효성 검사
				var pw = $("#pw").val();
				var pw2 = $("#pw2").val();
				var str = "";
				if(pw==pw2){
					if(!password1RegExp.test(pw)){
						str+= "<span style='color:red'>";
						str+="비밀번호는 8자 이상이어야 하며, 숫자/소문자/특수문자를 모두 포함해야 합니다.";						
					}else{
						str+= "<span style='color:blue'>";
						str+="비밀번호가 일치합니다.";	
						pwFlag=true;
					}
				}else{
					str+= "<span style='color:red'>";
					str+= "비밀번호가 일치하지 않습니다.";
				}
				str+="</span>";
				$(".pw-check").append(str);
			});
		$("#email").blur(function(){
			$(".email-check").children().remove();
			var emailRegExp = /^[A-Za-z0-9_]+[A-Za-z0-9]*[@]{1}[A-Za-z0-9]+[A-Za-z0-9]*[.]{1}[A-Za-z]{1,3}$/;
			var email=$("#email").val();
			var str="";
			if(!emailRegExp.test(email)){
				str+= "<span style='color:red'>";
				str+= "이메일 형식이 올바르지 않습니다.";
			}else{
				emailFlag=true;
				}
			$(".email-check").append(str);
		});	
		$("#gender").blur(function(){
			$(".gender-check").children().remove();
			var gender=$("#gender").val();
			var str="";
			if(gender=="성별"){
				str+= "<span style='color:red'>";
				str+= "성별을 선택해 주세요.";
			}else{
				genderFlag=true;
				}
			$(".gender-check").append(str);
		});
		$("#phoneNum").blur(function(){
			$(".phone-check").children().remove();
			var regPhone = /^((01[1|6|7|8|9])[1-9]+[0-9]{6,7})|(010[1-9][0-9]{7})$/;
			var phoneNum=$("#phoneNum").val();
			var str="";
			if(!regPhone.test(phoneNum)){
				str+= "<span style='color:red'>";
				str+= "올바른 휴대폰 번호를 입력해 주세요.";
			}else{
				phoneFlag=true;
				}
			$(".phone-check").append(str);
		});
		
		$("#year").blur(function(){
			birthCheck();
		});
		$("#month").change(function(){
			birthCheck();
		});
		$("#day").blur(function(){
			birthCheck();
		});
		
		$("#profile-imageFile").on('change',function(){
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
		var today = new Date();
		var year;
		var month;
		var day;

	function birthCheck(){
		$(".birth-check").children().remove();
		var yearNow = today.getFullYear();
		year=$("#year").val();
		month = $("#month").val();
		day= $("#day").val();
		var str="<span style='color:red'>";
		if(year<1900 || year>yearNow){
			str+= "태어난 년도 4자리를 정확하게 입력하세요.";
		}else if(month=="월"){
			str+= "태어난 월을 선택하세요.";
		}else if(day<1 || day>31){
			str+= "태어난 일(날짜) 2자리를 정확하게 입력하세요.";
		}else if((month==4 || month==6 || month==9 || month==11) && day==31){
			str+= "태어난 일(날짜) 2자리를 정확하게 입력하세요.";
		}else if(month==2){
			var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
			if(day>29 || (day==29 && !isleap)){
			str+= "태어난 일(날짜) 2자리를 정확하게 입력하세요.";
			}
		}else{
			birthFlag=true;
		}

		$(".birth-check").append(str);
	}
	
	function submitCheck(){
		if(nameFlag && idFlag && pwFlag && emailFlag && genderFlag && birthFlag && phoneFlag){
			return true;
		}else{
			alert("입력 정보를 다시 확인해 주세요.");
		}
		return false;
	}
</script>
</head>
<body>
		<div class="userContainer">
			<div class="user-body">
			<h3>회원가입</h3>
			<form action="signUpAction" method="post" onsubmit="return submitCheck();" enctype="multipart/form-data" >
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
					<input type="submit" value="회원가입"/>
				</div>
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }"/>
			</form>
			</div>
		</div>
</body>
</html>