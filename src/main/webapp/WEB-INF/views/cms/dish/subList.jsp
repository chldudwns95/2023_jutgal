<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>인기반찬 목록</title>
    <link rel = "icon" href = "/resources/image/favicon.png"/>
    <link rel="stylesheet" href="/resources/css/template.css"/>
</head>
<body>
    <div class="grid_layout">
        <%@ include file="../template.jsp" %>
        <div class="main">
            <div class="head">
                <div class="bread_crumb_wrap">
                    <div>
                        <span>컨텐츠 관리 시스템</span>
                        <span>/</span>
                        <span class="current_menu">인기반찬 관리</span>
                    </div>
                </div>
                <div class="menu_title_wrap">
                    <h1>인기반찬 관리</h1>
                </div>
                <span class="menu_info">인기반찬을 관리할 수 있습니다.</span>
            </div>

            <div class="body">
                <div class="board_container">
                    <table class="table">
                        <thead>
                        <tr>
                            <th style="width: 10%">코드</th>
                            <th style="width: 47%">제목</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="event" items="${eventList}">
                            <tr>
                                <td class="no">${event.code}</td>
                                <td class="title"><a href="/cms/event/${event.code}${pager.query != '' ? '?'.concat(pager.query) : ''}">${event.title}</a></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>

                <div class="button_container">
                    <button class="primary_btn" onclick="location.href = '/cms/dish/insSub'">등록</button>
                </div>
            </div>
        </div>
    </div>
    <script src="/resources/js/template.js"></script>
</body>
</html>
