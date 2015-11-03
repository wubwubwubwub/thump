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
//= require leaflet
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
    var address = "<div id='marker-title'>Thump Recording</div>295 Eckford St<br>Brooklyn, NY 11222"
    var lon = $('#map').data("lon");
    var lat = $('#map').data("lat");
    var map = L.map('map').setView([lon, lat], 14);
    
    L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token={accessToken}', {
        // attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://mapbox.com">Mapbox</a>',
        maxZoom: 14,
        id: 'nolancamp.cigjhgpyc002zuikruj5roc05',
        accessToken: 'pk.eyJ1Ijoibm9sYW5jYW1wIiwiYSI6ImNpZ2poZ3I0OTAwNGR0dGx1MDlzM3Vqb3gifQ.wXiBFbtGd4LpdZG0J9MVWQ'
    }).addTo(map);

    L.marker([lon, lat]).addTo(map)
        .bindPopup(address);
    // .openPopup();
    
    
})
