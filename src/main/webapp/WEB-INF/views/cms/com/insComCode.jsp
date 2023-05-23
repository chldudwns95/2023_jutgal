<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공통코드 등록</title>
</head>
<body>
    <form method="post">
        <div>
            <label>공통코드</label>
            <input type = "text" name ="autoNo">
        </div>
        <div>
            <label>공통코드 이름</label>
            <input type = "text" name = "autoNm">
        </div>
        <div>
            <label>참조 코드</label>
            <input type = "text" name = "refCode">
        </div>
        <div>
            <label>참조 코드 이름</label>
            <input type = "text" name = "refName">
        </div>
    <button>등록</button>
    </form>
</body>
</html>
