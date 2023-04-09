<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>dashboard</title>
    <link rel = "icon" href = "/resources/image/favicon.png"/>
    <link rel="stylesheet" href="/resources/css/template.css"/>
</head>
<body>
<div class="grid_layout">
    <%@ include file="template.jsp" %>
    <div class="main">
        <div class="head">
            <div class="bread_crumb_wrap">
                <div>
                    <span>컨텐츠 관리 시스템</span>
                    <span>/</span>
                    <span class="current_menu">대시보드</span>
                </div>
            </div>
            <div class="menu_title_wrap">
                <h1>대시보드</h1>
            </div>
            <span class="menu_info">사이트 현황을 한눈에 볼 수 있습니다.</span>
        </div>
    </div>
</div>
<script src="/resources/js/template.js"></script>
</body>
</html>
