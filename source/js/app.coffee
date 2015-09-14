(($) ->
  $(window).on('load', () ->

    fullscreen   = $('#play-fullscreen')
    player_frame = $('#player-frame')
    player       = document.getElementById('player')

    fullscreen.on 'click', (e) ->
      player_frame.show()
      fullscreen.hide()
      
      player.src += "&autoplay=1"
      req = player.requestFullscreen || player.webkitRequestFullscreen || player.mozRequestFullScreen || player.msRequestFullscreen

      req.call(player)
      player.playVideo()
      e.preventDefault()

  )
)(jQuery)