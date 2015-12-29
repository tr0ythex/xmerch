class StaticPagesController < ApplicationController
  def send_email
    if Notifier.send_email(params[:name], params[:phone], params[:email]).deliver
      respond_to do |format|
        format.js { render 'form_success' }
      end
    else
      respond_to do |format|
        format.js { render 'form_error' }
      end
    end
  end
end