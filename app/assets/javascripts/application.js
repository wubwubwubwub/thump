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
    $('a.gear-photo-link').featherlight({
        loading: '/assets/loading.gif'
    });
    // // to make stool pic exact height of window minus header
    // var windowHeight = $(window).height();
    // $('.profiled-pic').css("height", windowHeight);
    // // var windowHeightPlus = ($(window).height() + 100);
    // $('.studio-pic').css("height", windowHeight-84);
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
