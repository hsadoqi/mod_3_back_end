# require 'pry'
class MessagesController < ApplicationController
    before_action :set_message, only: [:show, :update, :destroy]

    # GET /messages
    def index
        @messages = Message.all


        render json: @messages
    end

    # GET /messages/:id
    def show
        render json: @message
    end

    # POST /messages
    def create 
        # byebug
        @message = Message.new(message_params)
        lang = @message.channel.lang
        @message.translation = @message.start_translation(lang)
        
        if @message.save
            # ActionCable.server.broadcast 'room_channel',
            #                 {content:  @message.translation,
            #                 username: @message.user.username}
            # head :ok
            render json: @message
        else
            render json: @message.errors.full_messages
        end
    end


    # PATCH/PUT /messages/:id
    def update
        if @message.update(message_params)
            render json: @message
        else
            render json: @message.errors
        end
    end

    # DELETE /messages/:id
    def destroy
        @message.destroy
    end

    private

    def set_message
        @message = Message.find(params[:id])
    end

    def message_params
        params.require(:message).permit(:speech, :translation, :user_id, :channel_id, :username)
    end

end 
