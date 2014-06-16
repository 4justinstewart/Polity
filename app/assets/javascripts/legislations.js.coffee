$(document).ready ->
  console.log "current document is locked and loaded"
  $("img[alt='support']").click (event) ->
    console.log event
    objectId = $(this).parent().parent().attr("id")
    $.ajax(
      type: "POST"
      url: "/legislation_voices/up/" + objectId
      dataType: "json"
    ).done(->
      console.log "done"
      return
    ).success(->
      console.log "success"
      return
    ).fail ->
      console.log "fail"
      return

    vote = $(this).attr("class")
    console.log "You support this legislation"
    console.log vote
    $("img[class=" + vote + "").fadeOut()
    return

  $("img[alt='oppose']").click (event) ->
    console.log event
    objectId = $(this).parent().parent().attr("id")
    $.ajax(
      type: "POST"
      url: "/legislation_voices/down/" + objectId
      dataType: "json"
    ).done(->
      console.log "done"
      return
    ).success(->
      console.log "success"
      return
    ).fail ->
      console.log "fail"
      return

    vote = $(this).attr("class")
    console.log "You oppose this legislation"
    console.log vote
    $("img[class=" + vote + "").fadeOut()
    return

  return
