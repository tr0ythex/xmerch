class Notifier < ApplicationMailer
  default :from => "noreply@xmerch.ru"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.send_email.subject
  #
  def send_email
    @greeting = "Hi"

    mail to: "sales@xmerch.ru", :subject => "FUCK YOU!!!"
  end
end
