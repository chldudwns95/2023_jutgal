<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>반찬목록</title>
    <link rel = "icon" href = "/resources/image/favicon.png"/>

    <style>
        .content_wrap .content img {
            width: 230px;
            height: 230px;
        }

        .content_wrap ul {
            display : flex;
            gap : 40px 5%;
            flex-wrap : wrap;

            position :relative;
            max-width: 1600px;
            margin : 2rem auto;
            padding : 40px 10px 10px 10px;
        }

        .content_wrap ul li {
            width: 20%;
        }

        .content_wrap ul::before {
            position: absolute;
            padding-top: 10px;
            width: 100%;
            text-align: center;
            top: 0px;
            left: 0px;
        }
        .list_container .content_wrap img {
            align-items: center;
        }
        .list_container .content_wrap .content span {
            display: flex;
            justify-content: flex-start;
            flex-wrap: wrap;
        }
    </style>
</head>
<body>
    <div class = "list_container">
        <jsp:include page="../menu.jsp"/>


        <div class = "content_wrap">
            <ul>
                <li>
                    <div class = "content">
                        <a href = "#">
                            <img src="https://www.miwon.co.kr/wp-content/uploads/2022/05/prdt_20150708021700914.jpg">
                            <div class = "content_info">
                                <span>#인기제품</span>
                                <span>맛소금</span>
                                <span>전세계의 입맛 맛소금!</span>
                                <span>15,000원 100g / 5000원</span>
                            </div>
                        </a>
                    </div>
                </li>
                <li>
                    <div class = "content">
                        <a href = "#">
                            <img src="https://www.miwon.co.kr/wp-content/uploads/2022/05/prdt_20150623101843179.jpg">
                            <span>#흠...</span>
                            <span>미원</span>
                            <span>저희가게에선 사용하지 않아요!</span>
                            <span>15,000원 100g / 5000원</span>
                        </a>
                    </div>
                </li>
                <li>
                    <div class = "content">
                        <a href = "#">
                            <img src="https://www.miwon.co.kr/wp-content/uploads/2022/05/prdt_20150624025003549.jpg">
                            <span>#인기제품</span>
                            <span>치킨스톡</span>
                            <span>국물요리 한스푼 기맥힘!</span>
                            <span>15,000원 100g / 5000원</span>
                        </a>
                    </div>
                </li>
                <li>
                    <div class = "content">
                        <a href = "#">
                            <img src="https://www.miwon.co.kr/wp-content/uploads/2022/05/prdt_20150708021700914.jpg">
                            <span>#인기제품</span>
                            <span>맛소금</span>
                            <span>전세계의 입맛 맛소금!</span>
                            <span>15,000원 100g / 5000원</span>
                        </a>
                    </div>
                </li>
                <li>
                    <div class = "content">
                        <a href = "#">
                            <img src="https://www.miwon.co.kr/wp-content/uploads/2022/05/prdt_20150623101843179.jpg">
                            <span>#흠...</span>
                            <span>미원</span>
                            <span>저희가게에선 사용하지 않아요!</span>
                            <span>15,000원 100g / 5000원</span>
                        </a>
                    </div>
                </li>
                <li>
                    <div class = "content">
                        <a href = "#">
                            <img src="https://www.miwon.co.kr/wp-content/uploads/2022/05/prdt_20150624025003549.jpg">
                            <span>#인기제품</span>
                            <span>치킨스톡</span>
                            <span>국물요리 한스푼 기맥힘!</span>
                            <span>15,000원 100g / 5000원</span>
                        </a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</body>
</html>