class MessagesController < ApplicationController
  before_action :authenticate_user!

  def index
    @messages = current_user.send_messages | current_user.received_messages
  end

  def create
    @message = Message.create(message_params.merge(sender: current_user))
    redirect_to dialog_url(id: @message.receiver.id)
  end

  private

  def message_params
    params.require(:message).permit(:receiver_id, :text)
  end
end
