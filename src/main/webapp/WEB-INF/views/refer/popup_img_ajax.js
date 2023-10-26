$(document).ready(function(){

    $(".img_delete").click(function (){
        const code = $(this).data("code");
        $.ajax("/popup/delete_img/" + code, {
            method : "GET",
            success : function(result) {
                if(code == result){
                    $(".img_delete[data-code='" + code + "']").closest("li").remove();
                }
            },
            error : function(jqXhr, status) {
                alert("오류: " + status);
            }
        })
    });
});