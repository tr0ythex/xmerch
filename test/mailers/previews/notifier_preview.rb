# Preview all emails at http://localhost:3000/rails/mailers/notifier
class NotifierPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notifier/send_email
  def send_email
    Notifier.send_email
  end

end
