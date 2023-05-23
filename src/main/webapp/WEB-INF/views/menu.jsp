<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>

    <link rel = "icon" href = "/resources/image/favicon.png"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
    <link rel = "stylesheet" href = "/resources/css/index.css">
    <link rel = "stylesheet" href = "/resources/css/nav.css">

    <!-- slick -->
    <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />

    <script src="https://kit.fontawesome.com/0de6ed8d2e.js" crossorigin="anonymous"></script>

</head>
    <body>
        <div class = "nav_container">
            <div class = "top_wrap">
                <div class = "menu_wrap">
                    <ul>
                        <li>
                            <i class="fa-solid fa-book" style="color: #ff5c5c;"></i>
                            <a href ="/board">이야기</a>
                        </li>
                        <li>
                            <i class="fa-solid fa-gift" style="color: #ff5c5c;"></i>
                            <a href ="/dish">반찬</a>
                        </li>
<%--                        <li>
                            <i class="fa-solid fa-circle-question" style="color: #ff5c5c;"></i>
                            <a href ="/qna">문의</a>
                        </li>--%>
                        <c:if test="${sessionScope.loginMember == null}">
                            <li>
                                <i class="fa-solid fa-lock" style="color: #ff5c5c;"></i>
                                <a href ="/login">로그인</a>
                            </li>
                         <%--   <li>
                                <i class="fa-solid fa-lock" style="color: #ff5c5c;"></i>
                                <a href ="/signup">회원가입</a>
                            </li>--%>
                        </c:if>
                        <c:if test="${sessionScope.loginMember != null}">
                            <li>
                                <i class="fa-solid fa-lock" style="color: #ff5c5c;"></i>
                                <a href ="/cms">관리</a>
                            </li>
                        </c:if>
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
                    </form>
                </div>
            </div>
        </div>

    <%-- 모바일 --%>
    <div class = "mobile_nav_container">
        <div class = "top_menu">
            <div class = "logo">
                <a href = "/">
                    <img src = "/resources/image/logo_2.png">
                </a>
            </div>
            <div class ="search_wrap">
                <form>
                    <input type = "text" placeholder="반찬명을 입력하여 주세요.">
                    <button><img src ="/resources/image/search_btn.svg"></button>
                </form>
            </div>
        </div>
        <div class = "bottom_menu">
            <ul>
                <li>
                    <i class="fa-solid fa-book" style="color: #ff5c5c;"></i>
                    <a href ="/board">이야기</a>
                </li>
                <li>
                    <i class="fa-solid fa-gift" style="color: #ff5c5c;"></i>
                    <a href ="/dish">반찬</a>
                </li>
                <li>
                <c:if test="${sessionScope.loginMember == null}">
                    <i class="fa-solid fa-lock" style="color: #ff5c5c;"></i>
                    <a href ="/login">로그인</a>
                </c:if>
                <c:if test="${sessionScope.loginMember != null}">
                    <i class="fa-solid fa-lock" style="color: #ff5c5c;"></i>
                    <a href ="/cms">관리</a>
                </c:if>
            </ul>
        </div>
    </div>

    </body>
</html>