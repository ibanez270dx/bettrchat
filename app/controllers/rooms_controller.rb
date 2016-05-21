class RoomsController < ApplicationController

  def show
    @room = Room.find_or_create_by! room_params
    @messages = @room.messages
  end

private

  def room_params
    uri = URI.parse params[:url]
    {
      host: uri.host,
      url: uri.to_s.gsub(/\/+$/,'')
    }
  end

end
