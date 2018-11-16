class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "RoomChannel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def send_text(data)
    @message = Message.new(speech: data['speech'], user_id: data['user_id'], channel_id: data['channel_id'], username: data['username'])
    @message.translation = @message.start_translation
    @message.save

    ActionCable.server.broadcast("RoomChannel", @message)
    #   speech: data['speech'],
    #   user_id: data['user_id'],
    #   translation: @message.translation,
    #   channel_id: @message.channel_id
    # )
  end
  
end
