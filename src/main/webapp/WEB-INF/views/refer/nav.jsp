<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="<c:url value="/resources/css/grid_layout.css"/>"/>
<link rel="stylesheet" href="<c:url value="/resources/css/index-media.css"/>"/>
<div class="grid-layout">
    <div class="header">
        <div class="header-container">
            <div>
                <div>
                    <span class="material-symbols-outlined size-30 fill" id="nav-btn">
                        menu
                    </span>
                </div>
            </div>
            <div>
                <div>
                    <input type="text" class="text-input" placeholder="Search For..."/>
                </div>
                <div>
                    <div>
                        <span class="material-symbols-outlined fill">person</span>
                        ${sessionScope.member.name}
                    </div>
                    <div>
                        <span class="material-symbols-outlined fill">notifications</span>
                    </div>
                    <div>
                        <span class="material-symbols-outlined fill">settings</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="nav">
        <div class="title">
            <div>Jwins CMS</div>
            <div>컨텐츠 관리 시스템</div>
        </div>
        <div class="line"></div>
        <ul>
            <li class="drop-down-list">
                <div class="nav-item">
                    <div>
                        <div class="icon-box">
                            <span class="material-symbols-outlined size-18">dashboard</span>
                        </div>
                        <div>대시보드</div>
                    </div>
                    <span class="material-symbols-outlined">chevron_right</span>
                </div>
            </li>
        </ul>
        <h4>MANAGEMENT</h4>
        <ul>
            <li class="drop-down-list">
                <div class="nav-item">
                    <div>
                        <div class="icon-box">
                            <span class="material-symbols-outlined size-18">dashboard</span>
                        </div>
                        <div>게시판 관리</div>
                    </div>
                    <span class="material-symbols-outlined">chevron_right</span>
                </div>
                <ul class="drop-down-item">
                    <li>
                        <div class="nav-sub-item" onclick="location.href='${pageContext.request.contextPath}/board'">
                            <span class="material-symbols-outlined size-14 fill">fiber_manual_record</span>
                            게시판 통합 관리
                        </div>
                    </li>
                    <li>
                        <div class="nav-sub-item" onclick="location.href='${pageContext.request.contextPath}/board/0/article'">
                            <span class="material-symbols-outlined size-14 fill">fiber_manual_record</span>
                            게시물 관리
                        </div>
                    </li>
                </ul>
            </li>
            <li class="drop-down-list">
                <div class="nav-item">
                    <div>
                        <div class="icon-box">
                            <span class="material-symbols-outlined size-18">dashboard</span>
                        </div>
                        <div>사이트 관리</div>
                    </div>
                    <span class="material-symbols-outlined">chevron_right</span>
                </div>
                <ul class="drop-down-item">
                    <li>
                        <div class="nav-sub-item" onclick="location.href='${pageContext.request.contextPath}/menu'">
                            <span class="material-symbols-outlined size-14 fill">fiber_manual_record</span>
                            메뉴 관리
                        </div>
                    </li>
                    <li>
                        <div class="nav-sub-item" onclick="location.href='${pageContext.request.contextPath}/member'">
                            <span class="material-symbols-outlined size-14 fill">fiber_manual_record</span>
                            사용자 관리
                        </div>
                    </li>
                </ul>
            </li>
            <li class="drop-down-list">
                <div class="nav-item">
                    <div>
                        <div class="icon-box">
                            <span class="material-symbols-outlined size-18">dashboard</span>
                        </div>
                        <div>팝업 관리</div>
                    </div>
                    <span class="material-symbols-outlined">chevron_right</span>
                </div>
                <ul class="drop-down-item">
                    <li>
                        <div class="nav-sub-item" onclick="location.href='${pageContext.request.contextPath}/popup/'">
                            <span class="material-symbols-outlined size-14 fill">fiber_manual_record</span>
                            팝업 통합 관리
                        </div>
                    </li>
                </ul>
            </li>
            <li class="drop-down-list">
                <div class="nav-item">
                    <div>
                        <div class="icon-box">
                            <span class="material-symbols-outlined size-18">dashboard</span>
                        </div>
                        <div>배너 관리</div>
                    </div>
                    <span class="material-symbols-outlined">chevron_right</span>
                </div>
                <ul class="drop-down-item">
                    <li>
                        <div class="nav-sub-item" onclick="location.href='${pageContext.request.contextPath}/banner/'">
                            <span class="material-symbols-outlined size-14 fill">fiber_manual_record</span>
                            배너 통합 관리
                        </div>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
    <div class="main">
        <div class="main-container-overlay"></div>
        <div class="main-container">
