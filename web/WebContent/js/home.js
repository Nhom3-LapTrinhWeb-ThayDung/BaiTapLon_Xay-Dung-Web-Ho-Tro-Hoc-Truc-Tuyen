$(document).ready(function() {
    var banner_slide = $('.bxslider-banner').bxSlider({ mode: 'fade', controls: false, pager: true, auto: true, pause: 7000 });

    var chamngon_slide = $('.wrap-chamngon').bxSlider({ mode: 'fade', controls: false, pager: true, auto: true, pause: 10000 });

    var course_slide = $('.course-bxslider').bxSlider({ controls: true, displaySlideQty: 3, minSlides: 3, maxSlides: 3, auto: true, nextSelector: 'a.lnk-course-next', prevSelector: 'a.lnk-course-pre', nextText: " ", prevText: " ", pause: 7000 }); var course_other = $('.course-other-bxslider').bxSlider({ controls: false, moveSlideQty: 3, displaySlideQty: 3 }); $('a.course-ta-next').click(function() { course_other.goToNextSlide(); return false; }); $('a.course-ta-pre').click(function() { course_other.goToPreviousSlide(); return false; }); var test_course = $('.test-bxslider').bxSlider({ controls: false, moveSlideQty: 3, displaySlideQty: 3 }); $('a.test-ta-next').click(function() { test_course.goToNextSlide(); return false; }); $('a.test-ta-pre').click(function() { test_course.goToPreviousSlide(); return false; }); var class_slider = $('.class-slider').bxSlider({ controls: false, displaySlideQty: 4 }); $('a.class-next').click(function() { class_slider.goToNextSlide(); return false; }); $('a.class-pre').click(function() { class_slider.goToPreviousSlide(); return false; });
    var teacher_slider = $('.teacher-slider').bxSlider({ controls: false, moveSlideQty: 4, displaySlideQty: 4 });
    var student_slider = $('.student-slider').bxSlider({ controls: false, moveSlideQty: 4, displaySlideQty: 4 });
    $('a.teacher-next').click(function() { teacher_slider.goToNextSlide(); return false; });
    $('a.teacher-pre').click(function() { teacher_slider.goToPreviousSlide(); return false; });
    $('a.student-next').click(function() { student_slider.goToNextSlide(); return false; });
    $('a.student-pre').click(function() { student_slider.goToPreviousSlide(); return false; });
    var regis_slider = $('.regis-bxslider').bxSlider({ controls: false, moveSlideQty: 3, displaySlideQty: 3 }); $('a.regis-next').click(function() { regis_slider.goToNextSlide(); return false; }); $('a.regis-pre').click(function() { regis_slider.goToPreviousSlide(); return false; }); $('.recomment_send').live("click", function() { $(this).parent().find('.form-recomment').slideToggle(); });

    $("#popup_banner").each(function() {
        var self = this; $(this).overlay({ mask: { top: 350, color: '#000000', loadSpeed: 50, opacity: 0.8 }, onBeforeLoad: function() {

        }, onClose: function() { }
        });
    });

    $('a.popup-close').live('click', function() { $('a.close').click(); }); $('a.pb_close').live('click', function() { $('a.close').click(); }); $('.div-view-solution').click(function() { $(this).parent().find('.ql-solution').slideToggle(); });

    $('.show-course').live("click", function() {
        $('.question-list').toggleClass('_question-list');

    });

    $(".persion-tab-lnk").click(function() {
        $(".persion-tab-lnk").removeClass('active')
        $(this).addClass('active')
    })
    $(".lnk-tab-persion").click(function() {
        $('.persion-detail').show();
        $('#DetailDMK').hide();
        $('#DetailUser').hide();
        $('#DetailThi').hide();
    })
    $(".lnk-tab-info").click(function() {
        $('.persion-right').hide();
        $('#DetailDMK').hide();
        $('#DetailUser').show();
        $('#DetailThi').hide();
    })
    $(".lnk-tab-change").click(function() {
        $('.persion-right').hide();
        $('#DetailDMK').show();
        $('#DetailUser').hide();
        $('#DetailThi').hide();
    })
    $(".lnk-tab-exam").click(function() {
        $('.persion-right').hide();
        $('#DetailDMK').hide();
        $('#DetailUser').hide();
        $('#DetailThi').show();
    })


    ////////////------LOGIN------///////////////////
    $(".popup-test").each(function() {
        var self = this; $(this).overlay({ mask: { top: 230, color: '#000000', loadSpeed: 50, opacity: 0.8 }, onBeforeLoad: function() {
            var a1 = document.getElementById('box_popup')
            a1.innerHTML = '<a class="popup-close">	X</a>        <h3 class="bp-title">	Thông tin</h3><div class="bp-content">    <p style="padding-left:15px;padding-bottom:10px;line-height:22px;color:#333333">        Cơ quan chủ quản: Tổng Công ty Viễn thông Viettel (Viettel Telecom) <br /> Giấy phép trang tin điện tử: số 1433/GP-TTĐT do Sở TT&TT Hà Nội cấp ngày 27/05/2015 <br />Giấy phép mạng xã hội: Số 58/ GXN – TTĐT do Sở TT&TT Hà Nội cấp ngày 17-06-2013 <br />Trụ sở chính: Tầng 6 tòa nhà Công đoàn ngân hàng, Lô C2B Trần Thái Tông, Cầu Giấy, Hà Nội <br />Điện thoại: 198 (100đ/ phút) <br />Hotline: 04.62692214 <br />Email: ViettelStudy@viettel.com.vn<br />    </p></div>';
        }, onClose: function() {


        }
        });
    });
    ////////////------LOGIN------///////////////////


    $(".popup-login").each(function() {
        var self = this; $(this).overlay({ mask: { top: 230, color: '#000000', loadSpeed: 50, opacity: 0.8 }, onBeforeLoad: function() {

        }, onClose: function() { }
        });
    });

    $(".popup-comment").live("click", function() {
        $('#btnSendLog').click();
    });
    $(window).scroll(function() {
        var scrollTop = $(window).scrollTop();
        if (scrollTop > 20) {
            $("#to_top").fadeIn("slow");
        } else {
            $("#to_top").fadeOut("slow");
        }
    });

});

function validgopy(ctr) {
    var str = document.getElementById(ctr).value;
    var output;
    output = str.replace('&', '%26');
    output = output.replace('<', '[');
    output = output.replace('>', ']');
    output = output.replace('"', '&quot;');
    output = output.replace('script', '');
    output = output.replace('index-2.html', '');
    output = output.replace('href', '');
    output = output.replace('http', '');
    document.getElementById(ctr).value = output;
}


function checkdata(txt) {

    var s = document.getElementById('<%= search_query.ClientID %>');

    if ((s.value.toLowerCase() == 'từ khóa tìm kiếm') || (s.value == '') || (s.value.toLowerCase() == 'tu khoa tim kiem') || (s.value.toLowerCase() == 'tìm kiếm') || (s.value.toLowerCase() == 'tim kiem')) {
        s.value = '';
        s.focus();
        return false;
    }
    s.value = formatkey(s.value);

}


function formatkey(key) {
    var output;
    output = key.replace('&', '%26');
    output = output.replace('"', '&quot;');
    output = output.replace('<', '&lt;');
    output = output.replace('>', '&gt;');
    output = output.replace('index-2.html', '%2F');
    output = output.replace('script', '');
    output = output.replace('href', '');
    output = output.replace('http', '');
    return output;

}



function wgloadtientrinhhoc(_urlroot) {
    var a1 = document.getElementById('wrap_vt_gadget')
    if (a1.innerHTML == '') {
        a1.innerHTML = '<img src="'+_urlroot +'"images/ajax-loader.gif" alt="loadding" />'
        $.ajax({
            type: "get",
            url: _urlroot + "Ajax/wgTienTrinhHoc.aspx",
            success: function(msg) {
                msg = $.trim(msg);
                a1.innerHTML = msg;
                return false;
            }
        });
    }
}