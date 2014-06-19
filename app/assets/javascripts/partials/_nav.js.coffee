# $(document).ready ->
#   menu = $("#navigation-menu")
#   menuToggle = $("#js-mobile-menu")
#   signUp = $(".sign-up")
#   $(menuToggle).on "click", (e) ->
#     e.preventDefault()
#     menu.slideToggle ->
#       menu.removeAttr "style"  if menu.is(":hidden")
#       return

#     return


#   # underline under the active nav item
#   $(".nav .nav-link").click ->
#     $(".nav .nav-link").each ->
#       $(this).removeClass "active-nav-item"
#       return

#     $(this).addClass "active-nav-item"
#     $(".nav .more").removeClass "active-nav-item"
#     return

#   return


$ ->
  brainbow()
  return

brainbow = init = ->

  # function stuff
  indicate = indicate = ($e, current) ->
    o = $e.offset()
    h = $e.innerHeight()
    w = $e.innerWidth()
    t = (o.top + h - 3).toFixed(2)
    l = o.left.toFixed(2)
    c = $e.data("color") or "rgba(0,0,0,0)"
    $(".indicator").css
      top: (if current then t + "px" else t + 6 + "px")
      left: l + "px"
      width: w + "px"
      height: (if current then "1px" else "0.3em")
      "background-color": c

    return


  # event stuff
  $("nav ul").on "click", "li", (e) ->
    $("nav ul li").each ->
      $(this).removeClass "current"
      return

    $(this).addClass "current"
    return

  $("nav ul").on "mouseenter", "li", (e) ->
    indicate $(this), false
    return

  $("nav ul").on "mouseleave", "li", (e) ->
    indicate $("li.current"), true
    return

  $(window).on "resize", ->
    indicate $("li.current"), true
    return


  # init stuff
  $("nav ul li").each(->
    $(this).data color: $(this).css("color")
    return
  ).first().addClass "current"
  indicate $("nav ul li.current"), true
  return