class MessagesController < ApplicationController
    before_action :set_message, only: [:show, :update, :destroy]

    # GET /messages 
    def index 
        @messages = Channel.all 

        render json: @messages
    end 

    # GET /messages/:id
    def show 
        render json: @message
    end 

    # POST /messages
    def create 
        @message = Channel.new(message_params)
        if @message.save 
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
        @message = Channel.find(params[:id])
    end 

    def message_params
        params.require(:message).permit(:name)
    end
end
