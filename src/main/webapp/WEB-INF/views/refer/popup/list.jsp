<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>Jwins CMS</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<c:url value="/resources/css/index.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/css/template.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/css/board.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/css/material_icons.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/css/table.css"/>"/>
</head>
<body>
<%@ include file="/WEB-INF/views/nav.jsp" %>

<div class="sub-header-container">
    <h1>팝업 통합 관리</h1>
    <p>팝업 관리 &#62; 팝업 통합 관리</p>
</div>
<div class="card-container">
    <div class="card-header">
        <div>
            <h3>팝업 상태</h3>
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
            <colgroup>
                <col style="width: 10%">
                <col style="width: 30%">
                <col style="width: 10%">
                <col style="width: 20%">
                <col style="width: 10%">
                <col style="width: 10%">
                <col style="width: 10%">
            </colgroup>
            <thead class="thead-light">
            <tr>
                <th>코드</th>
                <th>팝업 제목</th>
                <th>공개여부</th>
                <th>파일 이름</th>
                <th>게시 시작일</th>
                <th>게시 종료일</th>
                <th>관리</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="popup" items="${list}">
                <tr>
                    <td data-label="코드">${popup.code}</td>
                    <td data-label="팝업 제목"><a class="btn-link" href="/popup/detail/${popup.code}">${popup.title}</a>
                    </td>
                    <td data-label="공개여부">
                        <c:if test="${popup.openMode eq 'open'}">공개</c:if>
                        <c:if test="${popup.openMode ne 'open'}">비공개</c:if>
                    </td>
                    <td data-label="파일명">${popup.attach[0].filename}</td>
                    <td data-label="게시 시작일" class="no_lineBreak">
                        <fmt:formatDate value="${popup.startDate}" pattern="yyyy-MM-dd HH:mm"/>
                    </td>
                    <td data-label="게시 종료일" class="no_lineBreak">
                        <fmt:formatDate value="${popup.endDate}" pattern="yyyy-MM-dd HH:mm"/>
                    </td>
                    <td data-label="관리" class="management-cell">
                        <div class="btn-container">
                            <div class="btn btn-primary"
                                 onclick="location.href = '/popup/update/${popup.code}'">
                                수정
                            </div>
                            <div class="btn btn-light"
                                 onclick="location.href = '/popup/delete/${popup.code}'">
                                삭제
                            </div>
                        </div>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <div class="card-footer">
        <div class="btn-container">
            <div class="btn btn-success" onclick="location.href = '/popup/add'">
                팝업 추가
            </div>
            <div class="btn btn-info " onclick="location.href = '/popup/view'">
                팝업뷰
            </div>
        </div>
    </div>
</div>
<%@ include file="/WEB-INF/views/nav_end.jsp" %>
</body>
</html>
