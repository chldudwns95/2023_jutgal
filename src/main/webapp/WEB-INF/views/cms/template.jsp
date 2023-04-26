<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<div class="grid_layout_bg"></div>
<div class="nav">
    <div class="title_container">
        <img src = "/resources/image/logo.png" style = "width :180px; height: 50px;">
    </div>
    <div class="nav_container">
        <ul class="menu_list">
            <li class="menu">
                <div class="menu_wrap">
                    <span class="menu_name">대시보드</span>
                    <span class="material-symbols-outlined more_btn">chevron_right</span>
                </div>
            </li>
            <li class="menu">
                <a href = "/cms/intro/introList">
                    <div class="menu_wrap">
                        <span class="menu_name">공지관리</span>
                        <span class="material-symbols-outlined more_btn">chevron_right</span>
                    </div>
                </a>
            </li>
            <li class="menu">
                <div class="menu_wrap">
                    <span class="menu_name">반찬관리</span>
                    <span class="material-symbols-outlined more_btn">expand_more</span>
                </div>
                <ul class="menu_depth2">
                    <div class="wrap">
                        <a href="/cms/dish/dishList">
                            <li class="menu">
                                <span class="menu_name">반찬</span>
                            </li>
                        </a>
                        <a href="/cms/dish/subList">
                            <li class="menu">
                                <span class="menu_name">인기반찬</span>
                            </li>
                        </a>
                    </div>
                </ul>
            </li>
            <li class="menu">
                <div class="menu_wrap">
                    <span class="menu_name">공통관리</span>
                    <span class="material-symbols-outlined more_btn">expand_more</span>
                </div>
                <ul class="menu_depth2">
                    <div class="wrap">
                        <a href="/cms/com/comList">
                            <li class="menu">
                                <span class="menu_name">공통코드</span>
                            </li>
                        </a>
                        <a href="/cms/com/menuList">
                            <li class="menu">
                                <span class="menu_name">메뉴</span>
                            </li>
                        </a>
                    </div>
                </ul>
            </li>
        </ul>
    </div>
    <div class="nav_footer">
        <span>시스템 문의</span>
        <span>Tel. 010-9556-6646</span>
        <span>Copyright 2023. <br>강경젓갈 all rights reserved.</span>
    </div>
</div>
<div class="header">
    <div class="menu_btn_wrap">
            <span class="material-symbols-outlined menu_btn" id="menuBtn">
                menu
            </span>
    </div>
   <%-- <div class="member_wrap">
        <span>${admin.loginid}</span>
        <span class="material-symbols-outlined">
                    arrow_drop_down
        </span>
        <div class="member_info">
            <div class="profile_wrap">
                        <span class="material-symbols-outlined profile_icon">
                            account_circle
                        </span>
                <span class="name">${admin.loginid}</span>
            </div>
            <div>
                <ul class="member_info_list">
                    <li>
                        <a><span>내 정보</span></a>
                    </li>
                    <li>
                        <a href="/cms/logout"><span>로그아웃</span></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>--%>
</div>