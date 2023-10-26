$(document).ready(function () {


    $(".close_today").mouseover(function () { 
      $("#close_x").removeClass("rotate_re");
      $("#close_x").addClass("rotate_x");
    });

    $(".close_today").mouseleave(function () { 
      $("#close_x").removeClass("rotate_x");
      $("#close_x").addClass("rotate_re");
    });

    function setCookie(days){
      var expire = new Date();
      expire.setDate(expire.getDate() + days);
      document.cookie = "popup_cookies=1; expires=" + expire.toGMTString()+ "; path=/";
    }

    function closeWin(){
      $(".popup_bg").css('display', 'none');
    }
    
    $('.close_onetime').click(function () { 
      closeWin();
    });

    $('.close_today').click(function () { 
      closeWin();
      setCookie(1);
    });
  
  
    // 팝업창 띄우지 않게 하기 시작
    function ReadCookie(name){
      var nameOfCookie=name+"=";
      //alert(nameOfCookie);
      var x=0;
      while(x<=document.cookie.length)
      {
        var y=(x+nameOfCookie.length)
        if(document.cookie.substring(x,y)==nameOfCookie){
          if((endOfCookie=document.cookie.indexOf(";",y))==-1)
            endOfCookie=document.cookie.length;
          return unescape(document.cookie.substring(y,endOfCookie));
        }
        x=document.cookie.indexOf(" ",x) +1;
        if(x==0)
          break;
      }
      return "";
    }
  

    function bd_popup_win1(){
      var ck = ReadCookie( "popup_cookies" );
      if ( ck == "1" ){
        $(".popup_bg").css('display', 'none');
        return;
      }else{
        $(".popup_bg").css('display', 'flex');  
      }
    }
  
    bd_popup_win1();

    
});