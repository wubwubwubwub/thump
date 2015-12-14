// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require featherlight
//= require leaflet
//= require fotorama
//= require_tree .

function capitalizeFirstLetter(string) {
    return string.charAt(0).toUpperCase() + string.slice(1);
}

$(document).ready(function(){    

    $(".gear-categories").find("a").filter(".link").each(function() {
        $(this).on('click', function() {
            event.preventDefault();
            $(".welcome-container").fadeOut();
            $(".gear-categories").find(".link").css("color", "#d0d0d0");
            $(this).css("color", "#ff5656");
            
            var category = $(this).data('category');
            $(".gear-categories").find(".gear-list").each(function() {
                if ($(this).data('category') == category) {
                    $(this).fadeIn();
                } else {
                    $(this).fadeOut();
                };
            });
        });
    });

    $('a.gear-photo-link').featherlight({
        loading: '/assets/loading.gif'
    });

    // to make stool pic exact height of window minus header
    var windowHeight = $(window).height();
    $('.profiled-pic').css("height", windowHeight);
    // var windowHeightPlus = ($(window).height() + 100);
    $('.studio-pic').css("height", windowHeight-84);

});

$(document).on("page:change", function() {

    if (window.location.pathname.split("/")[1] != "") {
        $("title").html("Thump | " + capitalizeFirstLetter(window.location.pathname.split("/")[1]));
    };

    $('header').find('a').each(function() {
        if ($(this).attr('href').split('/')[1] === window.location.pathname.split('/')[1]) {
            $(this).addClass('current');
        }
    });
});
