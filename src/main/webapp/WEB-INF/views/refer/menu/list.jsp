<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Jwins CMS</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<c:url value="/resources/css/index.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/css/template.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/css/material_icons.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/css/menu.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/toast_ui/tui-tree.css"/>"/>
</head>
<body>

<div>
    <%@ include file="/WEB-INF/views/nav.jsp" %>
    <div class="sub-header-container">
        <h1>메뉴 관리</h1>
        <p>메뉴 관리</p>
    </div>

    <div class="card-container-wrap">
        <div class="card-container menu-list-container">
            <div class="search-tree-container">
                <div>
                    <input class="text-input" placeholder="Search for TreeData">
                </div>
                <div class="btn-container">
                    <div class="btn-sm btn-dark" id="openAllNodeBtn">
                        <span class="material-symbols-outlined size-16 wght-300">
                            folder_open
                        </span>
                        Open All
                    </div>
                    <div class="btn-sm btn-dark" id="closeAllNodeBtn">
                        <span class="material-symbols-outlined size-16 wght-300">
                            folder
                        </span>
                        Close All
                    </div>
                    <div class="btn-sm btn-primary" id="addBtn">추가</div>
                    <div class="btn-sm btn-secondary" id="removeBtn">삭제</div>
                </div>
            </div>
            <div>
                <div id="tree" class="tui-tree-wrap"></div>
            </div>
        </div>
        <div class="card-container">
            <div class="card-body">
                <div class="menu-name-container" id="menuPath">
                    선택된 메뉴가 없습니다
                </div>
                <div>
                    <form id="menuForm">
                        <div>
                            <div class="input-container">
                                <label class="form-label">메뉴명</label>
                                <input name="name" class="text-input" type="text" style="width: 50%;"/>
                            </div>
                            <p class="input-info">네비게이션에 노출되는 메뉴이름입니다.</p>
                        </div>

                        <hr class="form-line">

                        <div>
                            <div class="input-container">
                                <label class="form-label">유형</label>
                                <div style="width: 100%;">
                                    <input name="type" type="radio" value="content"/>
                                    <label>콘텐츠</label>
                                    <input name="type" type="radio" value="board"/>
                                    <label>게시판</label>
                                </div>
                            </div>
                            <p class="input-info">메뉴 클릭시 보여지는 콘텐츠 유형입니다.</p>
                        </div>

                        <hr class="form-line">

                        <div>
                            <div class="input-container">
                                <label class="form-label">게시판명</label>
                                <select name="boardCode" class="text-input" style="width: 50%;">
                                    <c:forEach var="board" items="${boardList}">
                                        <option value="${board.code}">${board.name}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <p class="input-info">메뉴와 연결되는 게시판입니다.</p>
                        </div>

                        <hr class="form-line">

                        <div>
                            <div class="input-container">
                                <label class="form-label">영문 메뉴명</label>
                                <input name="engName" class="text-input" type="text"/>
                            </div>
                            <p class="input-info">메뉴 URL구성시 사용되는 영문이름입니다. 소문자로 구성 및 단어 구분시 - 사용</p>
                        </div>

                        <hr class="form-line">

                        <div>
                            <div class="input-container">
                                <label class="form-label">메뉴 정보</label>
                                <input name="information" class="text-input" type="text"/>
                            </div>
                            <p class="input-info">메뉴 정보입니다.</p>
                        </div>

                        <hr class="form-line">

                        <div>
                            <div class="input-container">
                                <label class="form-label">메뉴 노출</label>
                                <input name="show" type="checkbox"/>
                            </div>
                            <p class="input-info">메뉴 노출에서 제외되며 하위메뉴에도 적용됩니다.</p>
                        </div>

                        <hr class="form-line">

                        <div class="btn-container" style="justify-content: flex-end;">
                            <div id="saveBtn" class="btn btn-primary">저장</div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="/WEB-INF/views/nav_end.jsp" %>

<script src="<c:url value="/resources/js/jquery-3.6.0.min.js"/>"></script>
<script src="<c:url value="/resources/toast_ui/tui-tree.js"/>"></script>
<script src="<c:url value="/resources/js/menu.js"/>"></script>
</body>
</html>
