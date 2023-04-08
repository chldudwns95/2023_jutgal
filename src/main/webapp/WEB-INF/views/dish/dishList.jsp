
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
    <link rel = "stylesheet" href = "/resources/css/dishList.css"/>

</head>
<body>
    <div class = "list_container">
        <jsp:include page="../menu.jsp"/>

        <div class = "content_wrap">
            <nav>
                <div>
                    <strong>반찬종류</strong>
                    <ul>
                        <li>반찬타입1</li>
                        <li>반찬타입1</li>
                        <li>반찬타입1</li>
                        <li>반찬타입1</li>
                        <li>반찬타입1</li>
                        <li>반찬타입1</li>
                        <li>반찬타입1</li>
                        <li>반찬타입1</li>
                        <li>반찬타입1</li>
                    </ul>
                </div>
                <div>
                    <strong>간편검색</strong>
                    <ul>
                        <li>간편검색</li>
                        <li>간편검색</li>
                        <li>간편검색</li>
                        <li>간편검색</li>
                        <li>간편검색</li>
                        <li>간편검색</li>
                        <li>간편검색</li>
                        <li>간편검색</li>
                        <li>간편검색</li>
                    </ul>
                </div>
            </nav>

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

    <%-- 모바일 --%>
    <div class = "mobile_list_container">
        <div class = "mobile_list_wrap">
            <ul>
                <li>
                    <div class = "mobile_content">
                        <div class = "mobile_content_top">
                            <img src="https://www.miwon.co.kr/wp-content/uploads/2022/05/prdt_20150708021700914.jpg">
                            <div class ="mobile_content_top_info">
                                <span class ="mobile_content_name" style = "font-size : 14px;">맛소금</span>
                                <span class = "mobile_content_sub_name" style = "font-size: 12px;">전세계의 입맛 맛소금!</span>
                            </div>
                        </div>

                        <div>
                            <a href = "#">
                                <img src="https://www.miwon.co.kr/wp-content/uploads/2022/05/prdt_20150708021700914.jpg">
                        </div>
                        <div class = "mobile_content_info">
                            <span>#인기제품</span>
                            <span>15,000원 100g / 5000원</span>
                        </div>
                        </a>
                    </div>
                </li>
            </ul>
        </div>
    </div>

</body>
</html>