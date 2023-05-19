<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href = "/resources/css/login.css"/>
    <title>로그인</title>
</head>
<body>
    <div class = "login_container">
        <jsp:include page="menu.jsp"/>
        <div class = "login_wrap">
            <div class = "login_data">
                <form id = "login_form" method="post">
                    <div class = "login_txt">
                        <h1>로그인</h1>
                    </div>
                    <div class = "login_id">
                        <input type="text" name = "MEM_ID" placeholder="ID를 입력하세요">
                    </div>
                    <div class = "login_pw">
                        <input type = "password" name = "MEM_PW" placeholder="PW를 입력하세요">
                    </div>
                    <span class = "errorMsg">아이디 또는 비밀번호를 확인해주세요.</span>
                    <button type = "button" id = "login_btn">로그인</button>
                </form>

                <div class = "login_notice">
                    <h2>죄송합니다</h2>
                    <h3>로그인은 관리자용 페이지입니다.</h3>
                    <h3>일반로그인은 준비중입니다.</h3>
                </div>
            </div>
        </div>
    </div>
<script>

    const clickedLogin = document.getElementById('login_btn');

    clickedLogin.addEventListener('click', () => {
        $.ajax({
            url : 'login',
            type : 'POST',
            data: $('form').serialize(),
            success : () => window.location = '/cms',
            error : () => {
          /*      document.querySelector('form .errorMsg').classList.add('show');*/
                document.querySelector('.errorMsg').style.display = "block";
            }
        })
    });

</script>
</body>
</html>
