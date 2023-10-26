<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://sargue.net/jsptags/time" prefix="javatime" %>
<html>
<head>
    <title>Jwins CMS</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<c:url value="/resources/css/table.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/css/index.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/css/template.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/css/board.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/css/material_icons.css"/>"/>
    <script src="<c:url value="/resources/js/index.js"/>"></script>
</head>
<body>
<%@ include file="/WEB-INF/views/nav.jsp" %>


    <div class="sub-header-container">
        <h1>배너 통합 관리</h1>
        <p>배너 관리 &#62; 배너 통합 관리</p>
    </div>
    <div class="card-container">
        <div class="card-header">
            <div>
                <h3>배너 상태</h3>
            </div>
            <div class="search-container">
                <div>
                    <select class="text-input">
                        <option class="text-input">제목</option>
                    </select>
                </div>
                <div>
                    <input class="text-input" type="text"/>
                </div>
                <div class="btn btn-primary">검색</div>
            </div>

        </div>
        <div class="card-body">
            <table class="table">
                <thead class="thead-light">
                <tr>
                    <th>코드</th>
                    <th>배너 제목</th>
                    <th>공개여부</th>
                    <th>파일 이름</th>
                    <th>게시 시작일</th>
                    <th>게시 종료일</th>
                    <th>관리</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="banner" items="${list}">
                    <tr>
                        <th>${banner.code}</th>
                        <th><a class="btn-link" href="/banner/detail/${banner.code}">${banner.title}</a></th>
                        <th>
                            <c:if test="${banner.openMode eq 'open'}">공개</c:if>
                            <c:if test="${banner.openMode ne 'open'}">비공개</c:if>
                        </th>
                        <th>${banner.attach[0].filename}</th>
                        <th class="no_lineBreak">
                            <fmt:formatDate value="${banner.startDate}" pattern="yyyy-MM-dd HH:mm"/>
                        </th>
                        <th class="no_lineBreak">
                            <fmt:formatDate value="${banner.endDate}" pattern="yyyy-MM-dd HH:mm"/>
                        </th>
                        <th class="management-cell">
                            <div class="btn-container">
                                <div class="btn btn-primary"
                                     onclick="location.href = '${contextPath}/banner/update/${banner.code}'">
                                    수정
                                </div>
                                <div class="btn btn-light"
                                     onclick="location.href = '${contextPath}/banner/delete/${banner.code}'">
                                    삭제
                                </div>
                            </div>
                        </th>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>

        <div class="card-footer">
            <div class="btn-container">
                <div class="btn btn-success" onclick="location.href = '${contextPath}/banner/add'">
                    배너 추가
                </div>
                <div class="btn btn-info " onclick="location.href = '${contextPath}/banner/view'">
                    배너뷰
                </div>
            </div>
        </div>

    </div>
<%@ include file="/WEB-INF/views/nav_end.jsp" %>
</body>
</html>
