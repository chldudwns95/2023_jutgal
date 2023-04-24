<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>인기반찬 추가</title>
</head>
<body>
    <div>
        <form method="post">
            <div>
                <label>코드 (추후 자동등록)</label>
                <input type = "text" name = "SUBTITLE_CODE" placeholder="코드를 입력하여 주세요."/>
            </div>
            <div>
                <label>내용</label>
                <input type = "text" name = "SUBTITLE_NAME" placeholder="'#' 반찬을 입력하여 주세요."/>
            </div>
            <button>등록</button>
        </form>
    </div>
</body>
</html>
