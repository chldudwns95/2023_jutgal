<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>반찬상세</title>

    <style>
        a {
            text-decoration: none;
            color : black;
        }

        ul {
            list-style : none;
        }

        .detail_container .best_menu .best_content img {
            width : 150px;
            height : 150px;
        }

        .detail_container {
            max-width: 1600px;
            margin : 0 auto;
        }

        .detail_container .detail_wrap {
            display: flex;
            justify-content: center;
            border-bottom : 1px solid #ddd;
        }

        .detail_container .detail_wrap img {
            width: 500px;
            height: 500px;
        }

        .detail_container .detail_wrap .detail_info {
            display: flex;
            flex-direction: column;
            width: 500px;
            margin-top : 100px
        }

        .detail_container .detail_wrap .detail_info .detail_subtitle {
            color : gray;
            margin-bottom: 1rem;
            font-size : 15px;
        }
        .detail_container .best_content {
            width: 300px;
        }

        .detail_container .best_menu {
            margin-top : 2rem;
            border-bottom: 1px solid #ddd;
        }

        .detail_container .best_menu ul {
            display: flex;
            justify-content: flex-start;
        }

        .detail_container .best_menu span {
            display: flex;
            padding : 3px;
            margin-left : 20px;
        }

        .detail_container .dish_explain {
            margin-top : 2rem;
        }
    </style>
</head>
<body>
    <div class = "detail_container">
        <div class = "detail_wrap">
            <div class = "detail_image">
                <img src="https://www.miwon.co.kr/wp-content/uploads/2022/05/prdt_20150624025003549.jpg">
            </div>
            <div class = "detail_info">
                <span class = "detail_subtitle">#인기메뉴</span>
                <h2>치킨스톡</h2>
                <span>국물요리 한스푼 기맥힘!</span>
                <span>15,000원 100g / 5000원</span>
            </div>
        </div>
        <div class = "best_menu">
            <strong>추천반찬(#인기메뉴? 인기메뉴만 list)</strong>
            <ul>
                <li>
                    <div class = "best_content">
                        <a href = "#">
                            <img src="https://www.miwon.co.kr/wp-content/uploads/2022/05/prdt_20150708021700914.jpg">
                            <span>맛소금</span>
                            <span>전세계의 입맛 맛소금!</span>
                            <span>15,000원 100g / 5000원</span>
                        </a>
                    </div>
                </li>
                <li>
                    <div class = "best_content">
                        <a href = "#">
                            <img src="https://www.miwon.co.kr/wp-content/uploads/2022/05/prdt_20150623101843179.jpg">
                            <span>미원</span>
                            <span>저희가게에선 사용하지 않아요!</span>
                            <span>15,000원 100g / 5000원</span>
                        </a>
                    </div>
                </li>
                <li>
                    <div class = "best_content">
                        <a href = "#">
                            <img src="https://www.miwon.co.kr/wp-content/uploads/2022/05/prdt_20150708021700914.jpg">
                            <span>맛소금</span>
                            <span>전세계의 입맛 맛소금!</span>
                            <span>15,000원 100g / 5000원</span>
                        </a>
                    </div>
                </li>
                <li>
                    <div class = "best_content">
                        <a href = "#">
                            <img src="https://www.miwon.co.kr/wp-content/uploads/2022/05/prdt_20150623101843179.jpg">
                            <span>미원</span>
                            <span>저희가게에선 사용하지 않아요!</span>
                            <span>15,000원 100g / 5000원</span>
                        </a>
                    </div>
                </li>
            </ul>
        </div>

        <div class = "dish_explain">
            <strong>반찬 설명</strong>

        </div>
    </div>
</body>
</html>
