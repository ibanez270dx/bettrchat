class RoomsController < ApplicationController
  def show
    @room = Room.find_or_create_by! url: params[:url]
    @messages = @room.messages
  end
end
