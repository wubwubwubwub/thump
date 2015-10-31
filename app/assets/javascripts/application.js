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
//= require_tree .


$(document).ready(function(){
//     // var windowHeight = $(window).height();
//     // $(".picturewell").css({'height': windowHeight - 50 });
    $("#sent").hide();
    $("#error").hide();
});

$(function(){
    $("#new_inquiry").submit(function(){
        var dataSet = $(this).serialize();
        $.ajax({
            type: "POST",
            url: $(this).attr("action"),
            data: dataSet,
            complete: function(){
                $(".contact_form").fadeOut();
                $("#sent").fadeIn();
            },
            error: function(){
                $(".contact_form").fadeOut();
                $("#error").fadeIn();
            }
        });
        return false;
    });
})
