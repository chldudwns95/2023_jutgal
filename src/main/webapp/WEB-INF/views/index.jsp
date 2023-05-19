<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>엄마의 손맛, 강경젓갈입니다.</title>
    <link rel = "icon" href = "/resources/image/favicon.png"/>
</head>

<body>

    <div class = "main_container">
    <jsp:include page="menu.jsp"/>
        <div class = "slide_wrap">
            <div class ="slide">
                <div><img src = "/resources/image/slide_1.png"></div>
                <div><img src = "/resources/image/slide_2.png"></div>
                <div><img src = "/resources/image/slide_3.png"></div>
            </div>
        </div>

        <script>
            $( document ).ready( function() {
                $('.slide').slick({
                    infinite : true, 	            //무한 반복 옵션
                    speed : 3000,	                // 다음 버튼 누르고 다음 화면 뜨는데까지 걸리는 시간(ms)
                    autoplay : true,			    // 자동 스크롤 사용 여부
                    autoplaySpeed : 3000, 		    // 자동 스크롤 시 다음으로 넘어가는데 걸리는 시간 (ms)
                    pauseOnHover : true,		    // 슬라이드 이동	시 마우스 호버하면 슬라이더 멈추게 설정
                    draggable : true, 	            //드래그 가능 여부
                    slidesToShow: 1,
                    /*centerMode : true,
                    centerPadding : '30vw',*/

                    responsive: [{
                        breakpoint: 768,
                        settings: {
                            arrows: false,
                            centerPadding: '40px',
                            slidesToShow: 1
                        }
                    },
                    {
                        breakpoint: 480,
                        settings: {
                            arrows: false,
                            centerPadding: '40px',
                            slidesToShow: 1
                        }
                    }]
                });
            } );
        </script>

        <div class = "intro_wrap">
                <p class = "intro_txt">
                    SINCE <strong>1999 <br>
                    강경젓갈</strong>의 이야기를 들어보실레요?
                </p>
                <span class = "intro_play">
                    <i class="fa-solid fa-play fa-2xl" style="color: #ff5c5c;"></i>
                </span>
        </div>

        <div class = "contents_wrap">
            <div class = "best_menu">
                <strong>추천반찬</strong>
                <ul>
                    <li>
                        <img src = "/resources/image/slide_4.png">
                        <strong>반찬서브종류</strong>
                        <span>반찬이름</span>
                        <span>반찬설명</span>
                        <span>반찬가격</span>
                    </li>
                    <li>
                        <img src = "/resources/image/slide_5.png">
                        <strong>반찬서브종류</strong>
                        <span>반찬이름</span>
                        <span>반찬설명</span>
                        <span>반찬가격</span>
                    </li>
                </ul>
            </div>

            <div class ="best_dish">
                <strong>추천젓갈</strong>
                <ul>
                    <li>
                        <img src = "/resources/image/slide_4.png">
                        <strong>반찬서브종류</strong>
                        <span>반찬이름</span>
                        <span>반찬설명</span>
                        <span>반찬가격</span>
                    </li>
                    <li>
                        <img src = "/resources/image/slide_5.png">
                        <strong>반찬서브종류</strong>
                        <span>반찬이름</span>
                        <span>반찬설명</span>
                        <span>반찬가격</span>
                    </li>
                </ul>
            </div>
            <div>
                <strong>직접담은 김치</strong>
                <ul>
                    <li>
                        <img src = "/resources/image/slide_4.png">
                        <strong>반찬서브종류</strong>
                        <span>반찬이름</span>
                        <span>반찬설명</span>
                        <span>반찬가격</span>
                    </li>
                    <li>
                        <img src = "/resources/image/slide_5.png">
                        <strong>반찬서브종류</strong>
                        <span>반찬이름</span>
                        <span>반찬설명</span>
                        <span>반찬가격</span>
                    </li>
                </ul>
            </div>
        </div>

        <footer>
            <jsp:include page="footer.jsp"/>
        </footer>
</body>
</html>
