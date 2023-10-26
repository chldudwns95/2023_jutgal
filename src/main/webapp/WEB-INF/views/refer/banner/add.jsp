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

    <script src="<c:url value="/resources/js/jquery-3.6.0.min.js"/>"></script>
    <script src="<c:url value="/resources/js/jquery.datetimepicker.full.min.js"/>"></script>
    <script src="<c:url value="/resources/js/datetimepicker_set.js"/>"></script>
    <script src="<c:url value="/resources/js/img_preview.js"/>"></script>
    <link rel="stylesheet" href="<c:url value="/resources/css/jquery.datetimepicker.css"/>"/>

    <link rel="stylesheet" href="<c:url value="/resources/css/template.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/css/board.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/css/material_icons.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/css/table.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/css/index.css"/>"/>
    <script src="<c:url value="/resources/js/index.js"/>"></script>


</head>
<body>
<%@ include file="/WEB-INF/views/nav.jsp" %>

<form method="post" enctype="multipart/form-data" action="/banner/add" autocomplete="off">


    <div class="sub-header-container">
        <h1>배너 추가</h1>
        <p>배너 관리 &#62; 배너 통합 관리 &#62; 배너 추가</p>
    </div>
    <div class="card-container">
        <div class="card-body">

            <table class="table">
                <tbody class="detail_table">
                <tr>
                    <th>배너 제목</th>
                    <td><input name="title" type="text"/></td>
                </tr>
                <tr>
                    <th>공개여부</th>
                    <td>
                        <select name="openMode">
                            <option value="open">공개</option>
                            <option value="">비공개</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th>첨부 이미지</th>
                    <td class="attachment_image">
                        <input name="uploadfile" type="file" onchange="readURL(this);">
                        <img id="preview" src="" alt=""/>
                    </td>
                </tr>
                <tr>
                    <th>게시 기간</th>
                    <td class="calender-container">
                        <input type="text" id="date1" name="startDate"/>
                        <p>~</p>
                        <input type="text" id="date2" name="endDate"/>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="card-footer">
            <div class="btn-container">
                <button class="btn btn-primary" type="submit">
                    등록
                </button>
            </div>
        </div>
    </div>
</form>
<%@ include file="/WEB-INF/views/nav_end.jsp" %>
</body>
</html>