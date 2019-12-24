class MessagesController < ApplicationController

  def index
    @messages = Message.all
    render json: @messages
  end

  def create
    @message = Message.new(message_params)
    @message.vote_count = 0
    @message.save
    render json: @message, status: :created
  end

  def show
    @message = Message.find(params[:id])
    render json: @message
  end

  # Update this when you have a user_votes table.
  # Currently, ANYBODY could aritrarily manipulate vote counts
  #def update
  #  @message = Message.find(params[:id])
  #  @message.vote_count += params[:vote_increment].to_i
  #  @message.save
  #  render json: @message
  #end

  def destroy
    @message.destroy
    head :no_content
  end

  private ##########################

  def message_params
    params.require(:message).permit(:sender, :recipient, :text, :is_public, :vote_increment)
  end

  def set_message
    @message = Message.find(params[:id])
  end
end
