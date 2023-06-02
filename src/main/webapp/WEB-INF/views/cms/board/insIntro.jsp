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
</head>
<body>
    <form method="post">
        <div>
            <label>공지코드</label>
            <input type ="text" name = "boardCode"/>
        </div>
        <div>
            <label>공지제목</label>
            <input type ="text" name = "boardTitle"/>
        </div>
        <div>
            <label>공지내용</label>
            <input type ="text" name = "boardContents"/>
        </div>
        <div>
            <label>글쓴이</label>
            <input type ="text" name = "memId"/>
        </div>
        <button>등록</button>
    </form>
</body>
</html>
