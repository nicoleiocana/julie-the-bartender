class MessagesController < ApplicationController
  def new
    @message = Message.new 
  end
  
  def create 
    @message = Message.new(message_params)
    if @message.valid?
      MessageMailer.contact(@message).deliver_now
      flash[:success] = "I recevied your message and will reply shortly!"
      redirect_to root_path
    else
      flash.now[:danger] = "There was an error sending your message. Please try again."
      render 'new'
    end
  end
  
  private
  
    def message_params
      params.require(:message).permit(:name, :email, :phone, :body)
    end
end
