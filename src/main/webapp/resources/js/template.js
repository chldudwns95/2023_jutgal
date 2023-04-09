setScreenSize();
checkViewport();

//모바일 뷰포트 대응 함수
function setScreenSize() {
    let vh = window.innerHeight * 0.01;
    document.documentElement.style.setProperty('--vh', `${vh}px`);
}

// 모바일 접속시에 좌측 사이드바 접어주는 함수
function checkViewport() {
    let gridLayout = document.querySelector('.grid_layout');
    let nav = document.querySelector('.nav');

    if(window.innerWidth < 900){
        console.log('실행');
        nav.style.transition = 'transform 0s ease-in-out';
        gridLayout.classList.add('nav_toggle');
        setTimeout(() => {nav.removeAttribute('style')}, 250);
    }
}

// 메뉴 클릭 이벤트
document.querySelectorAll('.menu_depth2').forEach(item => {
    item.closest('.menu').querySelector('.menu_wrap').addEventListener('click', function () {
        let menuDepth2 = this.closest('.menu').querySelector('.menu_depth2');
        let icon = this.querySelector('.more_btn');

        if (menuDepth2.clientHeight === 0) {
            menuDepth2.style.height = menuDepth2.scrollHeight + 'px';
            icon.style.transform = 'rotate(-180deg)';
        } else {
            menuDepth2.style.height = '0px';
            icon.style.transform = '';
        }
    });
});

// 좌측 상단 메뉴 아이콘 클릭 이벤트
document.getElementById('menuBtn').addEventListener('click', function () {
    document.querySelector('.grid_layout').classList.toggle('nav_toggle');
});

// 모바일 화면 네비게이션 뒷배경 클릭 이벤트
document.querySelector('.grid_layout_bg').addEventListener('click', function () {
    document.querySelector('.grid_layout').classList.add('nav_toggle');
});

// 우측 상단 회원정보 클릭 이벤트
document.querySelector('.header .member_wrap').addEventListener('click', function() {
    document.querySelector('.member_info').classList.toggle('show');
});

// 뷰포트 변경시 <html> --vh 변경 이벤트
window.addEventListener('resize', setScreenSize);