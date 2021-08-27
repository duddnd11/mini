<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function rowAdd(){
		var count = $(".table tr").length;
		var id = document.getElementById("file_route");
		var html;
		html+='<tr>';
		html+='<td><input type="checkbox" class="checkbox"/></td>';
		html+='<td class="number">'+count+'</td>';
		html+='<td><img class="sliderImg" alt="main1" src="resources/img/회색화면.png"></td>';
		html+='<td><input type="text" placeholder="선택된 파일 없음" readonly="readonly" id="file_route'+count+'">'
			+'<label class="imgBtn">이미지 변경<input type="file" id="file'+count+'" name="multipart" onchange="fileRoute('+count+'); readURL(this,'+count+')" style="display:none;"></label></td>';
		html+='<td><input type="button" class="deleteButton btn btn-default" value="X 삭제"/></td>';
		html+='</tr>';

		$(".table").append(html);
	}

	function fileRoute(number){
		var	id = "file_route"+number;
		document.getElementById(id).value=$("#file"+number).val();
	}

	function readURL(input,number){
		if(input.files && input.files[0]){
			var reader = new FileReader();
			reader.onload = function(e){
				$("#file"+number).parent().parent().parent().find(".sliderImg").attr('src',e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	}

	var deleteFile= new Array;
		
	$(document).on("click","input[class='deleteButton btn btn-default']",function(){
		var number =$(this).parent().parent().find(".number").text();
		$(this).parent().parent().remove();
		deleteFile.push(number);
		$("#deleteNumbers").val(deleteFile);
		var rows = $(".table tr").length;
		console.log("number:"+number);

		for(i=number-1;i<rows-1;i++){
			console.log("i:"+i);
			$(".table").find(".number").eq(i).html(i+1);	
			console.log("dd("+i+"):"+$(".table").find(".number").eq(i).text());
		}
	});

	$(document).on("click","input[id='checkAll']",function(){
			$('.checkbox').prop('checked', this.checked );
	});

	$(document).on("click","input[class='btn btn-default checkDelete']",function(){
		var length = $(".checkbox").length;
		$(".checkbox").each(function() {
			 if(this.checked == true){
				$(this).parent().parent().remove();
				var number =$(this).parent().parent().find(".number").text();
				deleteFile.push(number);
				$("#deleteNumbers").val(deleteFile);

				var rows = $(".table tr").length;
				console.log("number:"+number);

				for(i=number-1;i<rows-1;i++){
					console.log("i:"+i);
					$(".table").find(".number").eq(i).html(i+1);	
					console.log("dd("+i+"):"+$(".table").find(".number").eq(i).text());
				}
			}
		});
	});
</script>
<style type="text/css">
	caption>input{
		width: 40px;
		height:23px;
		font-size: 12px;
		float: right;
		margin-top: 16px;
		padding: 0;
	}
	caption>h4{
		display: inline-block;
	}
	.deleteButton{
		width: 65px;
	}
	#checkAll{
		vertical-align: bottom;
	}
	.sliderImg{
		width: 200px;
		height: 78px;
	}
	input[type=text]{
		width: 72%;
	}
	.btn{
		font-size: 14px;
		padding: 0;
	}
	#buttons>input{
		width: 20%;
	}
	#buttons{
		text-align: center;
	}
	input[type=submit]{
		margin-right: 13px;
	}
	.checkDelete{
		width: 75px;
		margin-left: 3px;
	}
	.reload{
		width: 57px;
		margin-left: 3px;
	}
	.imgBtn{
		cursor: pointer;
	}
</style>
</head>
<body>
	<div id="wrapper">
		<div class="container">
			<form action="adminChangeSliderImage" id="slideForm" method="post" enctype="multipart/form-data">
				<table class="table">
					<caption>
						<span class="table_name">이미지 변경 및 추가</span>
						<input type="button" class="btn btn-default reload" value="초기화" onclick="window.location.reload();"/>
						<input type="button" class="btn btn-default checkDelete" value="선택 삭제" />
						<input type="button" class="btn btn-default" value="추가 " onclick="rowAdd()" />
					</caption>
					<thead>
						<tr>
							<th><input type="checkbox" id="checkAll"/></th>
							<th>순서</th>
							<th>이미지</th>
							<th>이미지 파일</th>
							<th>삭제</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${sliderName}" var="sliderName">
							<c:set var="i" value="${i+1}" />
							<tr class="tbody_tr">
								<td><input type="checkbox" class="checkbox"/></td>
								<td class="number" id="아이디${i}">${i}</td>
								<td><img class="sliderImg" alt="main1" src="resources/img/slider/${sliderName}"></td>
								<td><input type="text" placeholder="선택된 파일 없음" readonly="readonly" id="file_route${i}" value="${sliderName}">
									<label class="imgBtn">이미지 변경
										<input type="file" id="file${i}" name="multipart" onchange="fileRoute(${i}); readURL(this,${i})" style="display: none;">
									</label>
								</td>
								<td><input type="button" class="deleteButton btn btn-default" value="X 삭제" /></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div id="buttons">
					<input type="submit" class="btn btn-primary" value="슬라이드 설정완료" />
					<input type="button" class="btn btn-default" onclick="window.history.back();" value="취소"/>
				</div>
				<input type="hidden" id="deleteNumbers" name="deleteNumbers"/>
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }" />
			</form>
		</div>
		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>