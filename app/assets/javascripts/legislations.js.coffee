# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  console.log "current document is locked and loaded"
  $(".support").click ->
    $(this).effect "pulsate",
      times: 2
    , 300
    return

  $(".oppose").click ->
    $(this).effect "pulsate",
      times: 2
    , 300
    return

  return