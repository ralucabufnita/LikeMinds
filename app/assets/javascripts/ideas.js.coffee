# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/



$(document).on 'click', '.show-text', ->
  pLength = $(this).parent().text().length
  $(this).parent().next().show()
  textLength = $(this).parent().text().slice(0,-40)
  $(this).parent().text(textLength)
  $(this).hide()

$(document).on 'click', '.hide-text', ->
  $(this).parent().hide()
  prevText = $(this).parent().prev().text()

  $(this).parent().prev().html(prevText + '... <a class=show-text>Show More</a>')

#$('#searchButton').click (e) ->
#  e.preventDefault()
#  data =
#    title: title
#    category: cateogry
#  $.ajax ->
#    url: 'ideas/search'
#    data: data
#    cache: false
#    success: (data) ->
#      console.log data
#    error: (XMLHttpRequest, textStatus, errorThrown) ->
#      console.log errorThrown