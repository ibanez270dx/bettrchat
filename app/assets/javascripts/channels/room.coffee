$(document).on "turbolinks:load", ->
  App.room = App.cable.subscriptions.create { channel: "RoomChannel", room: $('[data-room-id]').data('room-id') },
    connected: ->
      # Called when the subscription is ready for use on the server

    disconnected: ->
      # Called when the subscription has been terminated by the server

    received: (data) ->
      # Called when there's incoming data on the websocket for this channel
      $('#messages').append data['message']
      window.convertTimestamps()
      window.scrollToBottom()

    speak: (room_id, message) ->
      @perform 'speak', room_id: room_id, message: message

$(document).on 'keypress', '[data-behavior~=room_speaker]', (event) ->
  if event.keyCode is 13
    App.room.speak $(this).data('room-id'), event.target.value
    event.target.value = ''
    event.preventDefault()
