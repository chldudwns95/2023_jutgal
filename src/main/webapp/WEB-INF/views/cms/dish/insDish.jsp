<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>반찬등록</title>
</head>
<body>
    <div>
        <form method="post">
            <div>
                <input type = "text" name="dishCode">
            </div>
            <div>
                <label>반찬이름</label>
                <input type = "text" name="dishName" placeholder="반찬이름을 입력하세요.">
            </div>
            <div>
                <label>가격</label>
                <input type = "number" name="dishPrice" placeholder="반찬가격을 입력하세요.">
            </div>
            <div>
                <label>양</label>
                <input type = "text" name="dishG" placeholder="질량을 입력하세요.">
            </div>
            <div>
                <label>서브타이틀</label>
                <select name = "subtitle">
                    <option value = "232">232</option>
                </select>
            </div>
            <div>
                <label>반찬설명[ckEditor 할 것]</label>
                <input type = "text" name="dishContents" placeholder="반찬설명을 입력하세요.">
            </div>
            <button>등록</button>
        </form>
    </div>
</body>
</html>
