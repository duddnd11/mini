<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

	function like(){
		var data={
			id:'<sec:authorize access="isAuthenticated()"><sec:authentication property="principal.id"/></sec:authorize>',
			blackListNo:${blackList.no}
		}
		$.ajax({
			url:'rest/like',
			type:'post',
			data:JSON.stringify(data),
			contentType:'application/json',
			beforeSend: function(xhr){
				 xhr.setRequestHeader(header, token);
			},
			success: function(response){
				$(".countLike").html(response.countLike);
				if(response.myLike == 0){
					$("#like").attr("class","far fa-thumbs-up")
				}else{
					$("#like").attr("class","fas fa-thumbs-up")
				}
			},
			error: function(){
				console.log("에러");
				location.href="userLogin2";
				//location.replace("userLogin2");
			}
		});
	}
	
	$(function(){
		$("#like").click(function(){
			like();
		});
		$("#rejectLike").click(function(){
			if(confirm("로그인이 필요합니다.")){
				like();
				var pathname = location.pathname;
				var search =location.search;
			}
		});
	});

	
</script>
<style type="text/css">
	#like, #rejectLike{
		cursor: pointer;
	}
</style>
</head>
<body>
<div id="wrapper">
	<div class="container">
			<h3>블랙리스트 게시판</h3>
				<div class="btns">
					<sec:authorize access="isAuthenticated()">
						<sec:authentication property="principal.id" var="loginId"/>
					</sec:authorize>
					<c:if test="${blackList.writer eq loginId}">
						<button class="btn btn-light" onclick="location.href='blackListModify?no=${blackList.no}&page=${page}'">수정</button>
						<button class="btn btn-light" onclick="if(confirm('정말 삭제 하시겠습니까?')){location.href='blackListDelete?no=${blackList.no}'};">삭제</button>
					</c:if>
					<button class="btn btn-light menu" onclick="location.href='blackList?page=${page}'">목록</button>
				</div>
			<div class="box">
				<div class="notice-header">
					<div class="noticedetail-title">${blackList.title}</div>
					<div class="writer">${blackList.writer}</div>
					<div class="notice-date">${blackList.date}</div>
					<div class="hitCount">조회수 ${blackList.hitCount}</div>
					<div class="like-box">
						<sec:authorize access="isAuthenticated()">
							<c:choose>
								<c:when test="${myLike eq 0 }">
									<i id="like" class="far fa-thumbs-up"></i>
								</c:when>
								<c:otherwise>
									<i id="like" class="fas fa-thumbs-up"></i>
								</c:otherwise>
							</c:choose>
						</sec:authorize>
						<sec:authorize access="isAnonymous()">
							<i id="rejectLike" class="far fa-thumbs-up"></i>
						</sec:authorize>
						<span class="countLike">${countLike}</span>
					</div>
					<div class="target">신고대상 : ${blackList.target}</div>
				</div>
				<div class="noticedetail-content">${blackList.content}</div>
			</div>
			<div class="notice_nav">
				<c:choose>
					<c:when test="${prevBlackList eq null}">
						<a class="prevBtn" href="#"><i class="fas fa-angle-up"></i><span class="nav_btn">이전글</span><span>이전글이 없습니다.</span></a>
						<a href="blackListDetail?no=${nextBlackList.no}&page=${page}"><i class="fas fa-angle-down"></i><span class="nav_btn">다음글</span><span>${nextBlackList.title}</span></a>
					</c:when>
					<c:when test="${nextBlackList eq null}">
						<a class="prevBtn" href="blackListDetail?no=${prevBlackList.no}&page=${page}"><i class="fas fa-angle-up"></i><span class="nav_btn">이전글</span><span>${prevBlackList.title}</span></a>
						<a href="#"><i class="fas fa-angle-down"></i><span class="nav_btn">다음글</span><span>다음글이 없습니다.</span></a>
					</c:when>
					<c:otherwise>
						<a class="prevBtn" href="blackListDetail?no=${prevBlackList.no}&page=${page}"><i class="fas fa-angle-up"></i><span class="nav_btn">이전글</span><span>${prevBlackList.title}</span></a>
						<a href="blackListDetail?no=${nextBlackList.no}&page=${page}"><i class="fas fa-angle-down"></i><span class="nav_btn">다음글</span><span>${nextBlackList.title}</span></a>
					</c:otherwise>
				</c:choose>
			</div>
			
			<div class="relate">
				<h4>전체글</h4>
				<c:forEach var="list" items="${list}">
				
				<div class="notice-body" <c:if test="${list.no eq blackList.no}">style="background-color:#1bff0047;" </c:if>>
					<a href="blackListDetail?no=${list.no}&page=${page}">
						<div class="notice-title">${list.title}</div>
						<div class="notice-date">${list.date}</div>
					</a>
				</div>
				</c:forEach>
				<div class="noticeAllBox">
					<a href="blackList?page=1" class="noticeAll">전체보기</a>
				</div>		
			</div>
	</div>
<%@ include file="footer.jsp" %>
</div>
</body>
</html>