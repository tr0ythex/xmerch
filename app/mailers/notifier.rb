class Notifier < ApplicationMailer
  default :from => "noreply@xmerch.ru"

  def send_email
    mail to: "sales@xmerch.ru", :subject => "FUCK YOU!!!"
  end
end
