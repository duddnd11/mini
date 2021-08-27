	var titleFlag=false;
	var contentFlag=false;
	var targetFlag=false;
	
	function titleCheck(){
		var title=$(".title").val().trim();
		if(title != ""){
			titleFlag=true;
		}else{
			titleFlag=false;
		}
	
	}

	function contentCheck(){
		var content=$(".content").val().trim();
		if(content != ""){
			contentFlag=true;
		}else{
			contentFlag=false;
		}
	}
	
	function targetCheck(){
		var target = $(".target").val().trim();
		if(target!=""){
			targetFlag=true;
		}else{
			targetFlag=false;
		}
	}
	
	function noticeCheck(){
		titleCheck();
		contentCheck();
	
		if(titleFlag && contentFlag){
			return true;
		}else if(!titleFlag){
			alert("제목을 확인해 주세요.");
		}else if(!contentFlag){
			alert("내용을 확인해 주세요.");
		}
		return false;
	}
	
	function blackListCheck(){
		titleCheck();
		contentCheck();
		targetCheck();	
		if(titleFlag && contentFlag && targetFlag){
			return true;
		}else if(!titleFlag){
			alert("제목을 확인해 주세요.");
		}else if(!contentFlag){
			alert("내용을 확인해 주세요.");
		}else if(!targetFlag){
			alert("대상자를 확인해 주세요.");
		}
		return false;
	
	}
	
	$(function(){
		$(".mainCheck").click(function(){
			if($(".mainCheck").prop("checked")){
				$(".mainCheck").val(1);
			}else{
				$(".mainCheck").val(0);
			}
		});
	});
	
	
	