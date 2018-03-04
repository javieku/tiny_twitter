class MessagesController < ApplicationController
  def create
    @message = Message.new message_params

    if @message.valid?
      flash[:info] = "Message received, thanks!"
      redirect_to contact_path
    else
      render :new
    end
    end

  def new
    @message = Message.new
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :body)
  end
end
