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
    <link rel="icon" href=""/>
</head>
<body>
    <form method="post">
        <div>
            <label>게시판 종류(코드)</label>
            <input type = "text" name = "boardType"/>
        </div>
        <div>
            <label>게시판 종류(이름)</label>
            <input type = "text" name = "boardName"/>
        </div>
        <button>등록</button>
    </form>
</body>
</html>