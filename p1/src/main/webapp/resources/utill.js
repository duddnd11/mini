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
						idFlag=false;
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
				str+="한글과 영문 대 소문자를 사용하세요. (특수기호, 공백 사용 불가)</span>";
				nameFlag=false;
			}else{
				nameFlag=true;
			}
			$(".name-check").append(str);
		});
		$("#id").blur(function(){
				$(".id-check").children().remove();
				var id = $("#id").val();
				var idExp=/^[a-zA-z0-9]{1,12}$/;
				var str="";
				if(!idExp.test(id)){
					str+= "<span style='color:red'>";
					str+="영문 대소문자와 숫자 1~12자리로 입력해야합니다!";
					str+="</span>";
					$(".id-check").append(str);
					idFlag=false;
				}else{
					idCheck(id);
				}
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
						pwFlag=false;				
					}else{
						str+= "<span style='color:blue'>";
						str+="비밀번호가 일치합니다.";	
						pwFlag=true;
					}
				}else{
					str+= "<span style='color:red'>";
					str+= "비밀번호가 일치하지 않습니다.";
					pwFlag=false;
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
				emailFlag=false;
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
				genderFlag=false;
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
				phoneFlag=false;
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
		
		$("#pwToggle").click(function(){
			
			
			if($("#pwDiv").is(":visible")){
				$("#pwDiv").slideUp(150);
				$("#pw").val("");
				$("#pw2").val("");
			}else{
				$("#pwDiv").slideDown(150);
				$("#pwDiv").css("background-color","#eee");
				$("input[type=password]").css("background-color","#eee");
				var timer;
				if(!timer){
					timer=setTimeout(function(){
						timer=null;
						$("#pwDiv").css("background-color","white");
						$("input[type=password]").css("background-color","");
					},300);
				}
			}
						
			pwFlag=!pwFlag;
			fold(this);
		});		

		$("#profile-imageFile").change(function(){
			readURL(this);
        });
		
	});
		var today = new Date();
		var year;
		var month;
		var day;
	
	function fold(id){
        if($(id).find(".fas").attr("class") == "fas fa-chevron-down"){
			$(id).find(".fas").attr("class","fas fa-chevron-up");
		}else{
			$(id).find(".fas").attr("class","fas fa-chevron-down");
		}
	}
		
	function birthCheck(){
		$(".birth-check").children().remove();
		var yearNow = today.getFullYear();
		year=$("#year").val();
		month = $("#month").val();
		day= $("#day").val();
		var str="<span style='color:red'>";
		if(year<1900 || year>yearNow){
			str+= "태어난 년도 4자리를 정확하게 입력하세요.";
			birthFlag=false;
		}else if(month=="월"){
			str+= "태어난 월을 선택하세요.";
			birthFlag=false;
		}else if(day<1 || day>31){
			str+= "태어난 일(날짜) 2자리를 정확하게 입력하세요.";
			birthFlag=false;
		}else if((month==4 || month==6 || month==9 || month==11) && day==31){
			str+= "태어난 일(날짜) 2자리를 정확하게 입력하세요.";
			birthFlag=false;
		}else if(month==2){
			var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
			if(day>29 || (day==29 && !isleap)){
			str+= "태어난 일(날짜) 2자리를 정확하게 입력하세요.";
				birthFlag=false;
			}else{
				birthFlag=true;
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
	
	// 이미지 미리보기
	function readURL(input){
		if(input.files && input.files[0]){
			var reader = new FileReader();
			reader.onload = function(e){
				$("#preImage").attr('src',e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
	
