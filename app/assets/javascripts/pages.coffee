# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "page:change", ->
  
  $('.gear-categories').find('a').filter('.link').each ->
    $(this).on 'click', (event)->
      event.preventDefault()
      # $(".welcome-container").fadeOut();
      $('.gear-categories').find('.link').css 'color', '#d0d0d0'
      $(this).css 'color', '#ff5656'
      category = $(this).data('category')
      $('.gear-categories').find('.gear-list').each ->
        if $(this).data('category') == category
          $(this).fadeIn()
        else
          $(this).fadeOut()
        return
      return
    return

  $('.gear-categories').find('a').first().click()
  $('.gear-categories').find('div').first().css 'display', 'block'
