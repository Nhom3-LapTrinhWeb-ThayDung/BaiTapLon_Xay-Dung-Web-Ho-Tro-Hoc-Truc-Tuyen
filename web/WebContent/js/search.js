/**
* Created by JetBrains PhpStorm.
* User: pmdv_hoangl
* Date: 11/22/11
* Time: 11:14 AM
* To change this template use File | Settings | File Templates.
*/

var searchValue = "";
var lastTimeQuery = null;
var lastQuery = "";
var timer = null;
var xTriggered = 0;
var frirstpos = 0;
var lastpos = 0;
var offs = 0;
var domailVts="";

$(document).ready(function() {

  domailVts= location.hostname;
  if(domailVts.indexOf("tintuc.viettelstudy.vn")>-1)
  {
  domailVts ="http://tintuc.viettelstudy.vn/";
  }
  else
  {
  domailVts="index-2.html";
  }
  
    $('.has_default_text').each(function() {
        $(this).focus(function() {
            var defaultText = $(this).attr('default_text');
            if ($.trim($(this).val()) === defaultText) {
                $(this).val("");
            }
        }).blur(function() {
            var defaultText = $(this).attr('default_text');
            if ($.trim($(this).val()) === '') {
                $(this).val(defaultText);
            }
        });
    });
    // An hien thong tin 
    var lyricContent = $('.box-info ._info-content');
    if (lyricContent.size()) {
        lyricContent.each(function() {
            var self = $(this);
            var height = self.height();

            if (height > 100) {
                self.addClass('_hide_detail');
                self.parent().find('a.view-more').show();
            }
        });
    }
    $('a.view-more').click(function() {
        $(this).parent().find('._info-content').toggleClass('_hide_detail');
        if ($(this).hasClass('show')) {
            $(this).html('Â«&nbsp; RĂºt gá»n').removeClass('show');
        } else {
            $(this).html('Â»&nbsp; Xem toĂ n bá»™').addClass('show');
        }
    });


    $('.searchInput').keyup(function(event) {
        searchValue = $(this).val();
        offs = searchValue.length;
        //delaySearch(function() {
        var timerCallback = function() {
            suggesstionFunc();
        };
        clearTimeout(timer);
        timer = setTimeout(timerCallback, 200);
        //}, 500);
    });
    $('.searchInput').blur(function(event) {

        setTimeout("$('#suggestions').fadeOut(50);", 300);
    });

    $('#search_query').keypress(function(e) {
        if ($('#suggestions').css('display') != 'block')
            return;
        var allItem = $('#suggestions .item-sugg li a');
        var activeItem = $('#suggestions .item-sugg li a.active');
        var totalItem = allItem.size();
        var firstItem = allItem.eq(0);
        var lastItem = allItem.eq(totalItem - 1);
        var idx = allItem.index(activeItem);

        if (!totalItem) {
            return;
        }
        switch (e.keyCode) {
            case 38:
                if (idx == -1) {
                    lastItem.addClass('active');
                } else {
                    var prevItem = allItem.eq(idx - 1);
                    activeItem.removeClass('active');
                    prevItem.addClass('active');
                }

                break;

            case 40:
                if (idx == -1) {
                    firstItem.addClass('active');
                } else if (idx == (totalItem - 1)) {
                    // Item cuoi cung 
                    activeItem.removeClass('active');
                    firstItem.addClass('active');
                } else {
                    var nextItem = allItem.eq(idx + 1);

                    activeItem.removeClass('active');
                    nextItem.addClass('active');
                }

                break;
            case 13:
                if (idx >= 0) {

                    $(location).attr('href', activeItem.attr('href'));
                }
        }
    });

    $(".searchInput").keypress(function(e) {
        if ((e.which && e.which == 13) || (e.keyCode && e.keyCode == 13)) {
            var itemSugg = $('#suggestions .item-sugg li a.active');
            if (itemSugg.size() == 0)
                $('.btn-search').click();
            else {
                // alert(itemSugg.attr('href'));

            }
            return false;
        } else {
            return true;
        }
    });

});
function unsignString(str) {
    str = str.toLowerCase();
    str = str.replace(/à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ/g, "a");
    str = str.replace(/è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ/g, "e");
    str = str.replace(/ì|í|ị|ỉ|ĩ/g, "i");
    str = str.replace(/ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ/g, "o");
    str = str.replace(/ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ/g, "u");
    str = str.replace(/ỳ|ý|ỵ|ỷ|ỹ/g, "y");
    str = str.replace(/đ/g, "d");
    str = str.replace(/!|@|%|\^|\*|\(|\)|\+|\=|\<|\>|\?|\/|,|\.|\:|\;|\'| |\"|\&|\#|\[|\]|~|$|_/g, " ");
    /* tìm và thay thế các kí tự đặc biệt trong chuỗi sang kí tự - */
    str = str.replace(/-+-/g, ""); //thay thế 2- thành 1- 
    str = str.replace(/^\-+|\-+$/g, "");
    str = str.replace("-", " ");
    //cắt bỏ ký tự - ở đầu và cuối chuỗi  
    return str;
}
function unsignMaxString(str) {
    str = str.toLowerCase();
    str = str.replace(/à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ/g, "a");
    str = str.replace(/è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ/g, "e");
    str = str.replace(/ì|í|ị|ỉ|ĩ/g, "i");
    str = str.replace(/ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ/g, "o");
    str = str.replace(/ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ/g, "u");
    str = str.replace(/ỳ|ý|ỵ|ỷ|ỹ/g, "y");
    str = str.replace(/đ/g, "d");
    str = str.replace("-", " ");
    //cắt bỏ ký tự - ở đầu và cuối chuỗi  
    return str;
}
function getDomain() {
    return location.host.replace(/:([0-9][0-9][0-9][0-9])/, "");
}
function trim(s) {
    var l = 0;
    var r = s.length - 1;
    while (l < s.length && s[l] == ' ') {
        l++;
    }
    while (r > l && s[r] == ' ') {
        r -= 1;
    }
    return s.substring(l, r + 1);
}

function FormatStupidBTV(fstring){

var myStringVar = fstring;
var myStringVar=myStringVar.replace(";", "");
var myStringVar=myStringVar.replace(":", "");
var myStringVar=myStringVar.replace('"', '');
return myStringVar;

}
function highlightWords(fstring) {

    searchValue = unsignString(searchValue);
    //alert(searchValue);
    if (fstring != null) {
        string = unsignMaxString(fstring);

        //alert(string);
        var myKey = trim(searchValue);
        var myStringVar = trim(string);
        var first = myStringVar.indexOf(myKey);
        if (first != -1) {
            var last = first + offs;
            if (last != -1) {
                if (last > first) {
                    var text = fstring.substring(first, last);

                    fstring = fstring.replace(trim(text), '<span class="bold" style="display:inline">' + trim(text) + '</span>');
                }
            }

        }
    }
    return fstring;
}

function htmlEncode(value) {
    return $('<div/>').text(value).html();
}

function htmlDecode(value) {
    return $('<div/>').html(value).text();
}
/****************************End Common function*****************************/

/**************************For All Players In Page***************************/
var listPlayerInPages = [];

function insertPlayerIntoPage(playerName) {
    var i = 0;
    for (i in listPlayerInPages) {
        if (listPlayerInPages[i] == playerName) {
            return;
        }
    }
    listPlayerInPages.push(playerName);
}

function stopAllPlayerInPageWithout(playerName) {
    for (i in listPlayerInPages) {
        if (listPlayerInPages[i] != playerName) {
            jwpLayer(listPlayerInPages[i]).stop(true);
        }
    }
}

function pauseAllPlayerInPageWithout(playerName) {
    for (i in listPlayerInPages) {
        if (listPlayerInPages[i] != playerName) {
            jwplayer(listPlayerInPages[i]).pause(true);
        }
    }
}


function suggesstionFunc() {
    if (searchValue.length < 3) {
        $('#suggestions').fadeOut(100);
    } else {
        strr = unsignString(trim(searchValue));
        var link = domailVts+"/Ajax/fSuggestion.aspx?q=" + encodeURI(strr);
        $.ajax({
            type: "POST",
            url: link,
            contentType: 'application/json; charset=utf-8',
            data: {},
            cache: false,
            success: function(data) {
                var getData = $.parseJSON(data);
                var khoahoc = getData.khoahoc;
                var baihoc = getData.baihoc;
                var video = getData.video;
                var chuyende = getData.chuyende;
                var baithi = getData.baithi;
                var tintuc = getData.message;
                var giaovien = getData.giaovien;
                var hocvien = getData.hocvien;
                var truyen = getData.truyen;
                var tienganhtreem = getData.tienganhtreem;
                var kynangmembaihocle = getData.kynangmembaihocle;
                var kynangmemkhoahoc = getData.kynangmemkhoahoc;
                 
                
                
                
                var hasResult = false;
                var resHtml = '';
				var urlRoot = 'index-2.html';
                resHtml += '<ul> '
                + '<li><a class="search-title"> Tìm kiếm với <span>"' + htmlEncode(searchValue) + '"</span></a></li>';
                // bind khoahoc
                if (khoahoc.length > 0) {
                    hasResult = true;
                    resHtml += '<li class="item-sugg item-sugg4">'
                  + '<h3>Khóa học</h3>'
                  + '<ul>';
                    for (var i in khoahoc) {
                        resHtml += '<li><a class="link-search" href="' + urlRoot + khoahoc[i].url + '"><img width="62" height="35" src="http://media.viettelstudy.vn/' + khoahoc[i].image + '" class="image-search"/>' + highlightWords(khoahoc[i].name) + '</a></li>';
                    }
                    resHtml += '</ul></li>';
                }
                //chuyen de
                if (chuyende.length > 0) {
                    hasResult = true;
                    resHtml += '<li class="item-sugg item-sugg1">'
                              + '<h3>Chuyên đề</h3>'
                              + '<ul>';
                    for (var i in chuyende) {
                        resHtml += '<li><a class="link-search" href="' + urlRoot + chuyende[i].url + '"><img width="62" height="35" src="http://media.viettelstudy.vn/' + chuyende[i].image + '" class="image-search">' + highlightWords(chuyende[i].name) + '</a></li>';
                    }
                    resHtml += '</ul></li>';
                }
                // bind Bài học
                if (baihoc.length > 0) {
                    hasResult = true;
                    resHtml += '<li class="item-sugg item-sugg1">'
                              + '<h3>Bài học</h3>'
                              + '<ul>';
                    for (var i in baihoc) {
                        resHtml += '<li><a class="link-search" href="' + urlRoot + baihoc[i].url + '">' + highlightWords(baihoc[i].name) + '</a></li>';

                    }
                    resHtml += '</ul></li>';
                }
                // bind Đề thi
                if (baithi.length > 0) {
                    hasResult = true;
                    resHtml += '<li class="item-sugg item-sugg1">'
                              + '<h3>Đề thi</h3>'
                              + '<ul>';
                    for (var i in baithi) {
                        resHtml += '<li><a class="link-search" href="' + urlRoot + baithi[i].url + '">' + highlightWords(baithi[i].name) + '</a></li>';
                    }
                    resHtml += '</ul></li>';
                }

                resHtml += '</ul>';
                // bind thuvien
                if (video.length > 0) {
                    hasResult = true;

                    resHtml += '<li class="item-sugg item-sugg2">'
                  + '<h3>Thư viện</h3>'
                  + '<ul>';
                    for (var i in video) {
                        resHtml += '<li><a class="link-search" href="' + urlRoot + video[i].url + '"><img width="62" height="35" src="http://media.viettelstudy.vn/' + video[i].image + '" class="image-search">' + highlightWords(video[i].name) + '</a></li>';
                    }
                    resHtml += '</ul></li>';
                }

                // bind tin tuc
                if (tintuc.length > 0) {
                    hasResult = true;
                    resHtml += '<li class="item-sugg item-sugg3">'
                              + '<h3>Tin tức</h3>'
                              + '<ul>';
                    for (var i in tintuc) {
                        resHtml += '<li><a class="link-search" href="http://tintuc.viettelstudy.vn/' + FormatStupidBTV(tintuc[i].url) + '"><img width="62" height="35" src="http://media.viettelstudy.vn/' + tintuc[i].image + '" class="image-search"/>' + highlightWords(tintuc[i].name) + '</a></li>';
                    }
                    resHtml += '</ul></li>';
                }
                // bind giao vien
                if (giaovien.length > 0) {
                    hasResult = true;
                    resHtml += '<li class="item-sugg item-sugg3">'
                              + '<h3>Giáo viên</h3>'
                              + '<ul>';
                    for (var i in giaovien) {
                        resHtml += '<li><a class="link-search" href="' + urlRoot + giaovien[i].url + '"><img width="62" height="35" src="http://media.viettelstudy.vn/' + giaovien[i].image + '" class="image-search"/>' + highlightWords(giaovien[i].name) + '</a></li>';
                    }
                    resHtml += '</ul></li>';
                }
                // bind hoc vien
                if (hocvien.length > 0) {
                    hasResult = true;
                    resHtml += '<li class="item-sugg item-sugg3">'
                              + '<h3>Học viên</h3>'
                              + '<ul>';
                    for (var i in hocvien) {
                        resHtml += '<li><a class="link-search" href="' + urlRoot + hocvien[i].url + '"><img width="62" height="35" src="http://media.viettelstudy.vn/' + hocvien[i].image + '" class="image-search"/>' + highlightWords(hocvien[i].name) + '</a></li>';
                    }
                    resHtml += '</ul></li>';
                }
                //truyen
                if (truyen.length > 0) {
                    hasResult = true;
                    resHtml += '<li class="item-sugg item-sugg3">'
                              + '<h3>Truyện</h3>'
                              + '<ul>';
                    for (var i in truyen) {
                        resHtml += '<li><a class="link-search" href="' + urlRoot + truyen[i].url + '"><img width="62" height="35" src="http://media.viettelstudy.vn/' + truyen[i].image + '" class="image-search"/>' + highlightWords(truyen[i].name) + '</a></li>';
                    }
                    resHtml += '</ul></li>';
                }
                //tienganhtreem
                if (tienganhtreem.length > 0) {
                    hasResult = true;
                    resHtml += '<li class="item-sugg item-sugg3">'
                              + '<h3>Tiếng anh trẻ em</h3>'
                              + '<ul>';
                    for (var i in tienganhtreem) {
                        resHtml += '<li><a class="link-search" href="' + urlRoot + tienganhtreem[i].url + '"><img width="62" height="35" src="http://media.viettelstudy.vn/' + tienganhtreem[i].image + '" class="image-search"/>' + highlightWords(tienganhtreem[i].name) + '</a></li>';
                    }
                    resHtml += '</ul></li>';
                }
                //kynangmembaihocle
                if (kynangmembaihocle.length > 0) {
                    hasResult = true;
                    resHtml += '<li class="item-sugg item-sugg3">'
                              + '<h3>Kỹ năng sống</h3>'
                              + '<ul>';
                    for (var i in kynangmembaihocle) {
                        resHtml += '<li><a class="link-search" href="' + urlRoot + kynangmembaihocle[i].url + '"><img width="62" height="35" src="http://media.viettelstudy.vn/' + kynangmembaihocle[i].image + '" class="image-search"/>' + highlightWords(kynangmembaihocle[i].name) + '</a></li>';
                    }
                    resHtml += '</ul></li>';
                }
                //kynangmemkhoahoc
                if (kynangmemkhoahoc.length > 0) {
                    hasResult = true;
                    resHtml += '<li class="item-sugg item-sugg3">'
                              + '<h3>Kỹ năng sống</h3>'
                              + '<ul>';
                    for (var i in kynangmemkhoahoc) {
                        resHtml += '<li><a class="link-search" href="' + urlRoot + kynangmemkhoahoc[i].url + '"><img width="62" height="35" src="http://media.viettelstudy.vn/' + kynangmemkhoahoc[i].image + '" class="image-search"/>' + highlightWords(kynangmemkhoahoc[i].name) + '</a></li>';
                    }
                    resHtml += '</ul></li>';
                }

                if (hasResult)
                    $('#suggestions').html(resHtml);
                else
                    $('#suggestions').html('<ul><li><a class="search-title"> Không tìm thấy kết quả nào "' + htmlEncode(searchValue)
                  + '"</a></li></ul>');

            },
            error: function(request, status, err) {

            },
            complete: function() {
                $('#suggestions').fadeIn(200);
            }

        });
    }
}