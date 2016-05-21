
# Localize timestamps using MomentJS w/ optional formatting
#   <span data-timestamp="1452128836"></span>
#   => <span data-timestamp="1452128836">Jan 6, 2016 5:07 PM</span>

window.convertTimestamps = ->
  $('[data-timestamp]').each ->
    timestamp = $(this).data 'timestamp'
    $(this).text moment.unix(timestamp).fromNow()

$(document).on "turbolinks:load", ->
  convertTimestamps()
