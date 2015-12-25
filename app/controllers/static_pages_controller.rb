class StaticPagesController < ApplicationController
  # def send_email
  #   @contact = Contact.new(name: params[:name], email: params[:email], phone: params[:phone])
  #   @contact.request = request
  #   if @contact.deliver
  #     flash[:notice] = 'Thank you for your message. We will contact you soon!'
  #     redirect_to root_path
  #   else
  #     flash[:error] = 'Cannot send message.'
  #     redirect_to root_path
  #     # render :new
  #   end
  # end
  def send_email
    if Notifier.send_email(params[:name], params[:phone], params[:email]).deliver
      flash[:notice] = 'Thank you for your message. We will contact you soon!'
      redirect_to root_path
    else
      flash[:error] = 'Cannot send message.'
      redirect_to root_path
    end
  end
end