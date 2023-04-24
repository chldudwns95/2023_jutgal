<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
</head>
<body>
    <div>
        <div>
            <form>
                <div>
                    <label>ID</label>
                    <input type="text" name = "MEM_ID" placeholder="ID를 입력하세요">
                </div>
                <div>
                    <lobel>PW</lobel>
                    <input type = "password" name = "MEM_PW" placeholder="PW를 입력하세요">
                </div>
                <button>로그인</button>
            </form>
        </div>
    </div>
</body>
</html>
