window.onload = function () {
    dropDownAnimate();
    navBarToggle();
}

//네비게이션 드롭다운 애니메이션
function dropDownAnimate() {
    let dropDownList = document.querySelectorAll('.drop-down-list');

    dropDownList.forEach((target) => target.addEventListener("click", function () {
        const element = target.getElementsByClassName('drop-down-item')[0];
        const clientHeight = element.clientHeight; //현재 높이
        const scrollHeight = element.scrollHeight; //원래 높이

        if (clientHeight === 0)
            element.style.height = scrollHeight + 'px';
        else
            element.style.height = '0px';

    }));

    document.querySelectorAll('.drop-down-item').forEach((target) => {
        target.addEventListener('click', function (event) {
            event.stopPropagation(); //이벤트 버블링 방지
        });

        target.style.overflow = 'hidden';
        target.style.height = '0';
    });
}

//사이드바 접기 열기
function navBarToggle() {
    let gridLayout = document.getElementsByClassName('grid-layout').item(0);
    let nav = document.getElementsByClassName('nav').item(0);
    let header = document.getElementsByClassName('header').item(0);
    let mainOverlay = document.getElementsByClassName('main-container-overlay').item(0);

    if (window.innerWidth < 1200) {
        gridLayout.classList.add('close');
    }

    document.getElementById('nav-btn').addEventListener('click', function (event) {
        if (gridLayout.classList.contains('close')) {
            openNavBar();
        } else {
            closeNavBar();
        }
    });

    mainOverlay.addEventListener('click', function (event) {
        closeNavBar();
    });

    matchMedia("screen and (max-width: 1200px)").addEventListener("change", () => {
        gridLayout.removeAttribute('style');
        header.removeAttribute('style');
        nav.removeAttribute('style');

        if (matchMedia("screen and (max-width: 1200px)").matches) {
            gridLayout.classList.add('close');
        } else {
            gridLayout.classList.remove('close');
        }
    });

    function openNavBar() {
        nav.style.marginLeft = '0px';
        if (!matchMedia("screen and (max-width: 1200px)").matches) {
            gridLayout.style.gridTemplateColumns = '260px 1fr';
            header.style.width = 'calc(100% - 260px)';
        } else {
            mainOverlay.style.display = 'block';
        }
        gridLayout.classList.remove('close');
    }

    function closeNavBar() {
        nav.style.marginLeft = '-260px';
        if (!matchMedia("screen and (max-width: 1200px)").matches) {
            gridLayout.style.gridTemplateColumns = '0 100%';
            header.style.width = '100%';
        } else {
            mainOverlay.style.display = 'none';
        }
        gridLayout.classList.add('close');
    }
}