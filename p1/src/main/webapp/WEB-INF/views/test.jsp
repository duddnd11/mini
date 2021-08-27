<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.swiper-container{
		margin-top: 300px;
		text-align: center;
	}
</style>
</head>
<body>
<!-- Slider main container -->
    <div class="swiper">
        <!-- Additional required wrapper -->
        <div class="swiper-wrapper">
            <!-- Slides ::슬라이더 -->
            <div class="swiper-slide">Slide 1</div>
            <div class="swiper-slide">Slide 2</div>
            <div class="swiper-slide">Slide 3</div>
            <div class="swiper-slide">Slide 4</div>
            <div class="swiper-slide">Slide 5</div>
            <div class="swiper-slide">Slide 6</div>
            <div class="swiper-slide">Slide 7</div>
            <div class="swiper-slide">Slide 8</div>
            <div class="swiper-slide">Slide 9</div>
            <div class="swiper-slide">Slide 10</div>
        </div>

        <!-- If we need pagination ::페이지 네비게이션(선택) -->
        <div class="swiper-pagination"></div>

        <!-- If we need navigation buttons ::양옆 좌우 버튼(선택) -->
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
    </div>
    <script type="text/javascript">
    $(function(){
        //initialize swiper when document ready
        var mySwiper = new Swiper('.swiper-container', {
            // Optional parameters 
            direction: 'vertical', // 방향
            slidesPerView: 3, // 슬라이드를 한번에 3개를 보여준다
            slidesPerGroup : 3, // 그룹으로 묶을 수, slidesPerView 와 같은 값을 지정하는게 좋음
            spaceBetween: 30, // 슬라이드간 padding 값 30px 씩 떨어뜨려줌
            
            // 그룹수가 맞지 않을 경우 빈칸으로 메우기
            // 3개가 나와야 되는데 1개만 있다면 2개는 빈칸으로 채워서 3개를 만듬
            loopFillGroupWithBlank : true,

            loop: false, // loop 를 true 로 할경우 무한반복 슬라이드, false 로 할경우 슬라이드의 끝에서 더보여지지 않음

            // If we need pagination 
            pagination: {
                el: '.swiper-pagination',
                clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
                type: 'progressbar', // And if we need scrollbar 진행바
            },
            
            // Navigation arrows 
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
            
            // 반응형
            breakpoints: {
                1280: {
                    slidesPerView: 3,
                    slidesPerGroup: 3,
                },
                720: {
                    slidesPerView: 1,
                    slidesPerGroup: 1,
                },
            }
        })
    });

    </script>
</body>
</html>