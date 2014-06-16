# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  console.log "current document is locked and loaded"
  $(".support").click ->
    console.log "You support this legislation"
    console.log this
    return


  # $(this).effect( "bounce", "slow" );
  $(".oppose").click ->
    console.log "You oppose this legislation"
    console.log this
    return

  return


# $(this).effect( "bounce", "slow" );