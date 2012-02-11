var $blocks = $('.block,div.logo,nav,#logo,header');
var mobile = navigator.userAgent.match(/(iPhone|iPod|iPad|Android|BlackBerry)/);
if (mobile) {
    $blocks.addClass('device');
} else {
    $(window).resize(function () {
        var width = $(this).width();
        $blocks.removeClass('windowed').removeClass('device');
        if (width < 915 && width >= 450) {
            $blocks.addClass('windowed');
        } else if (width < 450) {
            $blocks.addClass('device');
        }
    });
    $(window).resize();
}
$('#logo').click(function () {
    window.location = '/';
});
