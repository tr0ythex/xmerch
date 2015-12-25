class Notifier < ApplicationMailer
  default :from => "noreply@xmerch.ru"

  def send_email(name, phone, email)
    @name = name
    @phone = phone
    @email = email
    mail to: "sales@xmerch.ru", :subject => "Новый запрос"
  end
end
