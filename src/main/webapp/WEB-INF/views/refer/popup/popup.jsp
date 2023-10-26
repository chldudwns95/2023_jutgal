<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="<c:url value="/resources/css/material_icons.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/css/popup.css"/>"/>
    <!-- Link Swiper's CSS -->
    <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"
    />

</head>
<body>
<div class="popup_bg">
    <div class="popup_gropu">
        <div class="popup_cen">
            <div class="popup_col">
                <h2 class="poopup_title">
                    팝업
                </h2>

                <div class="popup_slide_area">
                    <div #swiperRef="" class="swiper mySwiper">
                        <div class="swiper-wrapper">

                                <c:forEach var="popup" items="${list}">
                                    <div class="swiper-slide">
                                        <a href="#">
                                        <c:forEach var="attach" items="${popup.attach}">
                                            <div class="banner_img_box">
                                                <c:if test="${attach.filename == null}">
                                                    업로드 된 파일이 없습니다.
                                                </c:if>
                                                <c:if test="${attach.filename != null}">
                                                    <img src="/upload/image/popup/${attach.savedFilename}" class="banner_img"/>
                                                </c:if>
                                            </div>
                                            <div>${popup.title}</div>
                                        </c:forEach>
                                        </a>
                                    </div>
                                </c:forEach>

                        </div>
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                    </div>


                </div>

                <div class="popup_btn_area">
                    <div class="popup_btns">
                        <div class="popup_btn cursor_none"><a>소식건수 : 총
                            <span class="popup_cnt">
                                ${fn:length(list) }
                            </span>
                            건</a></div>
                        <div class="popup_btn close_onetime"><a href="#" >닫기</a></div>
                        <div class="popup_btn close_today">
                            <a href="#">
                                오늘 하루 열지 않기&nbsp;<span class="material-symbols-outlined" id="close_x">close</span>
                            </a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>

<!-- Swiper JS -->
<script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>

<!-- Initialize Swiper -->
<script>
    var swiper = new Swiper(".mySwiper", {
        <c:if test="${list.size() > 1}">
        slidesPerView: 2,
        loop: true,
        </c:if>
        <c:if test="${list.size() < 2}">
        slidesPerView: 1,
        </c:if>
        // centeredSlides: true,

        spaceBetween: 10,
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
    });

</script>
<script src="<c:url value="/resources/js/popup.js"/>"></script>
</body>
</html>
