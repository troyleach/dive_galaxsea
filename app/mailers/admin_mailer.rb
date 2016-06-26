class AdminMailer < ApplicationMailer
  default from: "troyleach@outlook.com"

  def admin_email(user)
    @user = user
    @url = ENV["DIVEGALAXSEA_HOST"]
    @users_email = @user.email
    @recipients = ['kim@divegalaxsea.com', 'troyleach@outlook.com']
    #@recipients = ['troyleach@outlook.com']
    #attachments["logo_original.png"] = File.read("#{Rails.root}/public/images/logo_original.png")
    #attachments["SSI-NEW.png"] = File.read("#{Rails.root}/public/images/SSI-NEW.png")

    mail(from: @users_email,
         to: @recipients,
         subject: "NEW CLIENT #{@user.first_name} #{@user.last_name}"
        )
  end

  def confirmation_email(user)
    @user = user
    @url = ENV["DIVEGALAXSEA_HOST"]
    @recipients = "#{@user.first_name} #{@user.last_name} <#{@user.email}>"
    @senders = ['kim@divegalaxsea.com']
    @cc = ['troyleach@outlook.com']
    #attachments["logo_original.png"] = File.read("#{Rails.root}/public/images/logo_original.png")
    #attachments["SSI-NEW.png"] = File.read("#{Rails.root}/public/images/SSI-NEW.png")

    mail(to: @recipients,
         from: @senders,
         cc: @cc,
         subject: 'Dive Galaxsea email Confirmation'
        )
  end
end
