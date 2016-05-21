class RoomsController < ApplicationController

  def index

  end

  def show
    redirect_to(action: :index) unless params[:url]
    @room = Room.find_or_create_by! room_params
    @rooms = Room.where host: @room.host
    @messages = @room.messages
  end

private

  def room_params
    uri = URI.parse params[:url]
    uri = URI.parse("http://#{uri.to_s}") unless uri.is_a?(URI::HTTP)
    host, request_uri = uri.host, uri.request_uri.gsub(/\/+$/,'')
    {
      host: host,
      request_uri: request_uri,
      key: "#{host}#{request_uri}",
      url: uri.to_s.gsub(/\/+$/,'')
    }
  end

end
