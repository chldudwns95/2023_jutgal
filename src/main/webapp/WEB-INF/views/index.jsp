<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <link rel = "icon" href = "/resources/image/favicon.png"/>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>엄마의 손맛, 강경젓갈입니다.</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
    <link rel = "stylesheet" href = "/resources/css/index.css">

    <!-- slick -->
    <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />

    <script src="https://kit.fontawesome.com/0de6ed8d2e.js" crossorigin="anonymous"></script>

</head>

<body>
    <div class = "main_container">
        <div class = "top_wrap">
            <div class = "menu_wrap">
                <ul>
                    <li>
                        <i class="fa-solid fa-book" style="color: #ff5c5c;"></i>
                        <a href ="/intro">소개</a>
                    </li>
                    <li>
                        <i class="fa-solid fa-gift" style="color: #ff5c5c;"></i>
                        <a href ="/dish">반찬</a>
                    </li>
                    <li>
                        <i class="fa-solid fa-circle-question" style="color: #ff5c5c;"></i>
                        <a href ="/qna">문의</a>

                    </li>
                </ul>
            </div>
            <div class = "logo">
                <a href = "/">
                    <img src = "/resources/image/logo_2.png">
                </a>
            </div>
            <div class ="search_wrap">
                <form>
                    <input type = "text" placeholder="반찬명을 입력하여 주세요.">
                    <button><img src ="/resources/image/search_btn.svg"></button>
                    <%-- hover 넣을것--%>
                </form>
            </div>
        </div>

        <div class = "slide_wrap">
            <div class ="slide">
                <div><img src = "/resources/image/slide_1.png"></div>
                <div><img src = "/resources/image/slide_2.png"></div>
                <div><img src = "/resources/image/slide_3.png"></div>
                <%--<div><img src = "/resources/image/slide_4.png"></div>
                <div><img src = "/resources/image/slide_5.png"></div>--%>
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

        <div class = "outer_data_wrap">
            <div>
                인스타
            </div>
            <div>
                네이버 블로그
            </div>
        </div>

        <div class ="footer_wrap">
            <p>상호:강경젓갈 대표자:김성자 <br>사업자등록번호:302-90-10157<br>
                전화:043-744-5338<br> 주소: 충북 영동군 영동읍 영동시장3길 13 강경젓갈</p>
            <p>Copyright@강경젓갈. All right reserved.</p>
            <div class="footer-img">
                <a href = "/"><img src="/resources/image/footer.png"></a></div>
        </div>

    </div>
</body>
</html>
