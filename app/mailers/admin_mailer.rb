class AdminMailer < ApplicationMailer
  #default from: "troyleach29@gmail.com"

  def admin_email(user)
    @user = user
    @url = ENV["DIVEGALAXSEA_HOST"]
    #@recipients = ['troyleach@outlook.com']
    @recipients = ['troyleach@outlook.com', 'kim@divegalaxsea.com']
    #attachments["logo_original.png"] = File.read("#{Rails.root}/public/images/logo_original.png")
    #attachments["SSI-NEW.png"] = File.read("#{Rails.root}/public/images/SSI-NEW.png")

    mail(from: @user.email,
         to: @recipients,
         subject: 'YOU HAVE A NEW CLIENT'
        )
  end

  def confirmation_email(user)
    @user = user
    @url = ENV["DIVEGALAXSEA_HOST"]
    @recipients = "#{@user.first_name} #{@user.last_name} <#{@user.email}>"
    @senders = ['troyleach@outlook.com', 'kim@divegalaxsea.com']
    #attachments["logo_original.png"] = File.read("#{Rails.root}/public/images/logo_original.png")
    #attachments["SSI-NEW.png"] = File.read("#{Rails.root}/public/images/SSI-NEW.png")

    mail(to: @recipients,
         from: @senders,
         subject: 'DiveGalaxsea email Conformation'
        )
  end
end
