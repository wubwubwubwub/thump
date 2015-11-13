# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "page:change", ->
  return unless $('#map').length
  address = '<div id=\'marker-title\'>Thump Recording</div>295 Eckford St<br>Brooklyn, NY 11222'
  lon = $('#map').data('lon')
  lat = $('#map').data('lat')
  map = L.map('map', {
    dragging: false,
    zoomControl: false,
    doubleClickZoom: false,
    touchZoom: false,
    scrollWheelZoom: false }).setView([
    lon
    lat
  ], 14)

  L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token={accessToken}',
    maxZoom: 14
    id: 'nolancamp.cigjhgpyc002zuikruj5roc05'
    accessToken: 'pk.eyJ1Ijoibm9sYW5jYW1wIiwiYSI6ImNpZ2poZ3I0OTAwNGR0dGx1MDlzM3Vqb3gifQ.wXiBFbtGd4LpdZG0J9MVWQ').addTo map
  L.marker([
    lon
    lat
  ]).addTo(map).bindPopup address

  $('#new_inquiry').submit ->
    dataSet = $(this).serialize()
    $.ajax
      type: 'POST'
      url: $(this).attr('action')
      data: dataSet
      complete: ->
        $('#contact_form').fadeOut()
        $('#contact-heading').fadeOut()
        $('#sent').fadeIn()
        return
      error: ->
        $('#contact_form').fadeOut()
        $('#error').fadeIn()
        return
    false
