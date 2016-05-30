class AdminMailer < ApplicationMailer
  default from: "troyleach29@gmail.com"

  def admin_email(user)
    @user = user
    @url = ENV["DIVEGALAXSEA_HOST"]
    @recipients = ['troyleach@outlook.com']
    #@recipients = ['troyleach@outlook.com', 'kim@divegalaxsea.com']

    mail(to: @recipients,
         subject: 'YOU HAVE A NEW CLIENT'
        )
  end
end
