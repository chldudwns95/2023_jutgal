<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>JwinsCMS</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/index.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/css/template.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/css/login.css"/>"/>
</head>
<body>
<div class="login-container">
    <form method="post" action="login">
        <div>
            <label>아이디</label>
            <input name="id" type="text" class="text-input"/>
        </div>
        <div>
            <label>비밀번호</label>
            <input name="password" type="password" class="text-input"/>
        </div>
        <button type="submit" class="btn btn-primary">로그인</button>
    </form>
</div>
</body>
</html>
