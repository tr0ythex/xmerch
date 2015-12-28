class StaticPagesController < ApplicationController
  # def send_email
  #   if Notifier.send_email(params[:name], params[:phone], params[:email]).deliver
  #     flash[:notice] = 'Thank you for your message. We will contact you soon!'
  #     redirect_to root_path
  #   else
  #     flash[:error] = 'Cannot send message.'
  #     redirect_to root_path
  #   end
  # end
  def send_email
    flash[:notice] = 'Thank you for your message. We will contact you soon!'
    redirect_to root_path
  end
end