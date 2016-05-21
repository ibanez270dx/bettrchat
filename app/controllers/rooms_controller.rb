class RoomsController < ApplicationController

  def show
    @room = Room.find_or_create_by! room_params
    @rooms = Room.where host: @room.host
    @messages = @room.messages
  end

private

  def room_params
    uri = URI.parse params[:url]
    {
      host: uri.host,
      request_uri: uri.request_uri.gsub(/\/+$/,''),
      url: uri.to_s.gsub(/\/+$/,'')
    }
  end

end
