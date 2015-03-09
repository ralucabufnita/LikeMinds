/**
 * Created by josephcarlson on 3/4/15.
 */
//jQuery to collapse the navbar on scroll
$(window).scroll(function() {
    if ($(".navbar").offset().top > 50) {
        $(".navbar-fixed-top").addClass("top-nav-collapse");
    } else {
        $(".navbar-fixed-top").removeClass("top-nav-collapse");
    }
});

//jQuery for page scrolling feature - requires jQuery Easing plugin
$(function() {
    $('a.page-scroll').bind('click', function(e) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: $($anchor.attr('href')).offset().top
        }, 1500, 'easeInOutExpo');
        e.preventDefault();
    });

    var stepsButton = $('#stepsBtn');

    $(stepsButton).bind('click', function(e) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: $($anchor.attr('href')).offset().top
        }, 1500, 'easeInOutExpo');
        e.preventDefault();
    });

    var signupButton = $('#signupBtn');
    var signupDiv = $('#signupDiv');
    var signupNavLink = $('#signupNavLink');

    if ($(signupDiv).not(':hidden')) {
        $(signupDiv).hide();
    }
    $(signupButton).on('click', function () {
        $(signupDiv).slideDown('slow').delay(10).promise().done(
            function () {
                var $anchor = $(signupButton);
                $('html, body').stop().animate({
                    scrollTop: $($anchor.attr('href')).offset().top
                }, 1500, 'easeInOutExpo');
            });
    });

    //$(signupNavLink).on('click', function () {
    //            var $anchor = $(signupNavLink);
    //            $('html, body').stop().animate({
    //                scrollTop: $($anchor.attr('href')).offset().top
    //            }, 1500, 'easeInOutExpo');//.promise().done(
    //                //$(signupDiv).slideDown('slow').delay(10))
    //});

});