# Preview all emails at http://localhost:3000/rails/mailers/admin_mailer
class AdminMailerPreview < ActionMailer::Preview
  def admin_email
    AdminMailer.admin_email(User.last)
  end
end
