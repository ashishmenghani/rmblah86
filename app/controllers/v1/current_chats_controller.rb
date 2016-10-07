module V1
class CurrentChatsController < ApplicationController
  before_action :set_current_chat, only: [:show, :update, :destroy]

  # GET /current_chats
  def index
    @current_chats = CurrentChat.all

    render json: @current_chats
  end

  # GET /current_chats/1
  def show
    render json: @current_chat
  end

  # POST /current_chats
  def create
    @current_chat = CurrentChat.new(current_chat_params)

    if @current_chat.save
      render json: @current_chat, status: :created, location: @current_chat
    else
      render json: @current_chat.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /current_chats/1
  def update
    if @current_chat.update(current_chat_params)
      render json: @current_chat
    else
      render json: @current_chat.errors, status: :unprocessable_entity
    end
  end

  # DELETE /current_chats/1
  def destroy
    @current_chat.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_current_chat
      @current_chat = CurrentChat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def current_chat_params
      params.require(:current_chat).permit(:jid_from, :jid_to)
    end
end
end
