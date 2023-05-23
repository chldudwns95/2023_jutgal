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
<jsp:include page="menu.jsp"/>

<form action="/signup" method="post">
    <div>
        <label>ID</label>
        <input type = "text" name = "memId"/>
    </div>
    <div>
        <label>PW</label>
        <input type = "password" name = "memPw"/>
    </div>
    <div>
        <label>권한</label>
        <input type = "text" name = "role" value = "admin"/>
    </div>
    <div>
        <label>별명</label>
        <input type = "text" name = "name"/>
    </div>
    <input type = "submit" value = "submit"/>
</form>

</body>
</html>
