# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(window).scroll ->
  if $('.navbar').offset().top > 50
    $('.navbar-fixed-top').addClass 'top-nav-collapse'
  else
    $('.navbar-fixed-top').removeClass 'top-nav-collapse'
  return
#jQuery for page scrolling feature - requires jQuery Easing plugin
$ ->
  $('a.page-scroll').bind 'click', (e) ->
    $anchor = $(this)
    $('html, body').stop().animate { scrollTop: $($anchor.attr('href')).offset().top }, 1500, 'easeInOutExpo'
    e.preventDefault()
    return
  stepsButton = $('#stepsBtn')
  $(stepsButton).bind 'click', (e) ->
    $anchor = $(this)
    $('html, body').stop().animate { scrollTop: $($anchor.attr('href')).offset().top }, 1500, 'easeInOutExpo'
    e.preventDefault()
    return
  signupButton = $('#signupBtn')
  signupDiv = $('#signupDiv')
  signupNavLink = $('#signupNavLink')
  if $(signupDiv).not(':hidden')
    $(signupDiv).hide()
  $(signupButton).on 'click', ->
    $anchor = $(signupButton)
    $('html, body').animate({ scrollTop: $($anchor.attr('href')).offset().top }, 1500, 'easeInOutExpo').promise().done $(signupDiv).slideDown('slow').delay()
    return
  return
#  $('#signup-btn').on 'click', (e) ->
#    $.ajax
#    url: '/users'
#    type: 'POST'
#    beforeSend: (xhr) ->
#      xhr.setRequestHeader 'X-CSRF-Token', $('meta[name="csrf-token"]').attr('content')
#      return
#    data: ->
#      email: email,
#      password: password,
#      password_confirmation: password,
#      commit : 'Sign up'
#    success: (response) ->
#      console.log("Hi")
#      return
#    return
