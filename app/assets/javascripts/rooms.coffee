
# Localize timestamps using MomentJS w/ optional formatting
#   <span data-timestamp="1452128836"></span>
#   => <span data-timestamp="1452128836">Jan 6, 2016 5:07 PM</span>

window.convertTimestamps = ->
  $('[data-timestamp]').each ->
    timestamp = $(this).data 'timestamp'
    $(this).text moment.unix(timestamp).fromNow()

window.scrollToBottom = ->
  $('#messages')[0].scrollTop = $('#messages')[0].scrollHeight

$(document).on "turbolinks:load", ->
  convertTimestamps()
  scrollToBottom()
