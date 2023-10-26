<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://sargue.net/jsptags/time" prefix="javatime" %>
<!DOCTYPE html>
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
        <h1>배너 상세보기</h1>
        <p>배너 관리 &#62; 배너 통합 관리  &#62; 배너 상세보기</p>
    </div>
    <div class="card-container">
        <div class="card-body">
            <table class="table">

                <tbody class="detail_table">
                        <tr>
                            <th>코드</th>
                            <td>${item.code}</td>
                        </tr>
                        <tr>
                            <th>배너 제목</th>
                            <td><a href="/item/detail/${item.code}">${item.title}</a> </td>
                        </tr>
                        <tr>
                            <th>배너 작성일</th>
                            <td>
                                <fmt:formatDate value="${item.banDatetime}" pattern="yyyy-MM-dd HH:mm"/>
                            </td>
                        </tr>
                        <tr>
                            <th>공개여부</th>
                            <td>
                                <c:if test="${item.openMode eq 'open'}">공개</c:if>
                                <c:if test="${item.openMode ne 'open'}">비공개</c:if>
                            </td>
                        </tr>
                        <tr>
                            <th>이미지</th>
                            <td>
                                <c:forEach var="attach" items="${item.attach}">
                                    <c:if test="${attach.filename == null}">
                                        업로드 된 파일이 없습니다.
                                    </c:if>
                                    <c:if test="${attach.filename != null}">
                                        <img src="/upload/image/banner/${attach.savedFilename}" />
                                    </c:if>

                                </c:forEach>
                            </td>
                        </tr>
                        <tr>
                            <th>파일 이름</th>
                            <td>${item.attach[0].filename}</td>
                        </tr>
                        <tr>
                            <th>경로</th>
                            <td>${item.attach[0].uuid}</td>
                        </tr>
                        <tr>
                            <th>게시 시작일</th>
                            <td>
                                <fmt:formatDate value="${item.startDate}" pattern="yyyy-MM-dd HH:mm"/>
                            </td>
                        </tr>
                        <tr>
                            <th>게시 종료일</th>
                            <td>
                                <fmt:formatDate value="${item.endDate}" pattern="yyyy-MM-dd HH:mm"/>
                            </td>
                        </tr>
                </tbody>
            </table>
        </div>

        <div class="card-footer">
            <div class="btn-container">
                <div class="btn btn-primary" onclick="location.href = '${contextPath}/banner/update/${item.code}'">
                    수정
                </div>
                <div class="btn btn-light" onclick="location.href = '../'">
                    목록으로
                </div>
            </div>
        </div>

    </div>
<%@ include file="/WEB-INF/views/nav_end.jsp" %>
</body>
</html>