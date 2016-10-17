$(document).ready(function() {

    /**
     * Replace Ucan
     */
    var walker = document.createTreeWalker(
            document.body,
            NodeFilter.SHOW_TEXT,
            null,
            false
            );

    var node;

    while (node = walker.nextNode()) {
        if (node.parentElement.tagName !== 'SCRIPT'
            && node.nodeValue.toLowerCase().indexOf('ucan') !== -1) {
            node.nodeValue = node.nodeValue
                    .replace(/ucan.vn\/shark/ig, 'tienganh1.viettelstudy.vn/viettel')
                    .replace(/ucan.vn/ig, 'tienganh1.viettelstudy.vn')
                    .replace(/ucan/ig, 'ViettelStudy');
        }
    }

    $('activity').remove();
    $('uc').remove();
    $('viettelstudy').remove();

    $('.popup-vts-pro-cancel, .popup-vts-pro-button-cancel').click(function() {
        $('.popup-vts-pro').hide();
    })
});