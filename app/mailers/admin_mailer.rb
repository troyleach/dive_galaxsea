class AdminMailer < ApplicationMailer
  default from: "troyleach29@gmail.com"

  def admin_email(user)
    @user = user
    @url = 'http://localhost:3000'
    mail(to: 'troyleach29@gmail.com',
         subject: 'YOU HAVE A NEW CLIENT'
        )
  end
end
