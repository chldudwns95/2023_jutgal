<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://sargue.net/jsptags/time" prefix="javatime" %>
<html>
<head>
    <!-- Link Swiper's CSS -->
    <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"
    />

    <!-- Demo styles -->

</head>
<body>
<!-- Swiper -->

<div #swiperRef="" class="swiper mySwiper">
    <div class="swiper-wrapper">
        <c:forEach var="banner" items="${list}">
            <div class="swiper-slide">
                <c:forEach var="attach" items="${banner.attach}">
                    <div class="banner_img_box">
                        <c:if test="${attach.filename == null}">
                            업로드 된 파일이 없습니다.
                        </c:if>
                        <c:if test="${attach.filename != null}">
                            <img src="/upload/image/banner/${attach.savedFilename}" class="banner_img"/>
                        </c:if>
                    </div>
                    <div>${banner.title}</div>
                </c:forEach>
            </div>
        </c:forEach>
    </div>
    <div class="swiper-button-next"></div>
    <div class="swiper-button-prev"></div>
    <div class="swiper-pagination"></div>
</div>


<!-- Swiper JS -->
<script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>

<!-- Initialize Swiper -->
<script>
    var swiper = new Swiper(".mySwiper", {
        slidesPerView: 1,
        // centeredSlides: true,
        spaceBetween: 10,
        pagination: {
            el: ".swiper-pagination",
            type: "fraction",
        },
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
    });

</script>
</body>
</html>
