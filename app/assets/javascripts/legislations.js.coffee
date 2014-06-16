# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  console.log "current document is locked and loaded"
  $("img[alt='support']").click ->
    vote = $(this).attr("class")
    console.log "You support this legislation"
    console.log vote
    $("img[class=" + vote + "").fadeOut()
    return

  $("img[alt='oppose']").click ->
    vote = $(this).attr("class")
    console.log "You oppose this legislation"
    console.log vote
    $("img[class=" + vote + "").fadeOut()
    return

  return
