$.datetimepicker.setLocale('kr');

jQuery(function () {
    jQuery('#date1').datetimepicker({
        step: 30,

        i18n: {
            kr: { // Korean
                months: [
                    "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"
                ],
                dayOfWeekShort: [
                    "일", "월", "화", "수", "목", "금", "토"
                ],
                dayOfWeek: ["일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일"]
            },
        },

        onShow: function (ct) {
            this.setOptions({
                maxDateTime: jQuery('#date2').val() ? jQuery('#date2').val() : false
            })
        },
        format: 'Y-m-d H:i',
    });
    jQuery('#date2').datetimepicker({
        step: 30,

        i18n: {
            kr: { // Korean
                months: [
                    "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"
                ],
                dayOfWeekShort: [
                    "일", "월", "화", "수", "목", "금", "토"
                ],
                dayOfWeek: ["일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일"]
            },
        },

        onShow: function (ct) {
            this.setOptions({
                minDateTime: jQuery('#date1').val() ? jQuery('#date1').val() : false,
            })
        },
        format: 'Y-m-d H:i',
    });
});
