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

    <script src="<c:url value="/resources/js/jquery-3.6.0.min.js"/>"></script>
    <script src="<c:url value="/resources/js/jquery.datetimepicker.full.min.js"/>"></script>
    <script src="<c:url value="/resources/js/datetimepicker_set.js"/>"></script>
    <script src="<c:url value="/resources/js/img_preview.js"/>"></script>
    <script src="<c:url value="/resources/js/popup_img_ajax.js"/>"></script>
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

<form method="post" action="/banner/update/${item.code}" enctype="multipart/form-data">
    
        <div class="sub-header-container">
            <h1>팝업 수정</h1>
            <p>팝업 관리 &#62; 팝업 통합 관리  &#62; 팝업 수정</p>
        </div>
        <div class="card-container">
            <div class="card-body">

                <table class="table">
                    <tbody class="detail_table">
                    <tr>
                        <th>팝업 코드</th>
                        <td>${item.code}</td>
                    </tr>
                    <tr>
                        <th>팝업 제목</th>
                        <td><input name="title" type="text" value="${item.title}"/></td>
                    </tr>
                    <tr>
                        <th>공개여부</th>
                        <td>
                            <select name="openMode">
                                <option value="open" ${item.openMode == 'open' ? "selected" : ""}>공개</option>
                                <option value="" ${item.openMode == '' || item.openMode eq null ? "selected" : ""}>불가</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th rowspan="2">첨부 이미지</th>
                        <td>
                            <ul>
                                <c:forEach var="attach" items="${item.attach}">
                                    <c:if test="${attach.filename == null}">
                                        업로드 된 파일이 없습니다.
                                    </c:if>
                                    <c:if test="${attach.filename != null}">
                                        <li>
                                            <img src="/upload/image/banner/${attach.savedFilename}" width="100px"/>
                                            ${attach.filename}
                                            <button type="button" class="img_delete" data-code="${attach.attachCode}">삭제</button>
                                        </li>
                                    </c:if>
                                </c:forEach>
                            </ul>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="attachment_image">
                                <input name="uploadfile" type="file" onchange="readURL(this);">
                                <img id="preview" src="" alt=""/>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th>게시 기간</th>
                        <td class="calender-container">
                            <input type="text" id="date1" name="startDate" value="${item.startDate2Str}" />
                            <p>~</p>
                            <input type="text" id="date2" name="endDate" value="${item.endDate2Str}"/>

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