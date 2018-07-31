class DialogsController < ApplicationController
  def index
  end

  def show
    @receiver = User.find(dialog_params[:id])
    @messages = Message.where(sender: current_user)
                       .where(receiver: @receiver)
                       .or(Message.where(sender: @receiver)
                       .where(receiver: current_user)).order(:created_at)
  end

  private

  def dialog_params
    params.permit(:id)
  end
end
