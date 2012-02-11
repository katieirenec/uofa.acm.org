$(document).ready(function () {
    var $github = $('#github').hide();
    var $blocks = $('.block,div.logo,nav,#logo,header');
    var mobile = navigator.userAgent.match(/(iPhone|iPod|iPad|Android|BlackBerry)/);
    if (!mobile) {
        $github.hide();
        $blocks.addClass('device').removeClass('windowed')
    } else {
        $(window).resize(function () { var width = $(this).width();
            $blocks.removeClass('windowed').removeClass('device');
            if (width < 915 && (width >= 450 || !mobile)) {
                $blocks.removeClass('device');
                $blocks.addClass('windowed');
                if (width < 715) $github.hide();
            } else if (width < 450 && mobile) {
                $blocks.removeClass('windowed');
                $blocks.addClass('device');
                $github.hide();
            } else if (width >= 915) {
                $github.show();
            }
        });
        $(window).resize();
    }
});

$('#logo').click(function () {
    window.location = 'index.php';
});
