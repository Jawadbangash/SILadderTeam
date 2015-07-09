class Email < ApplicationMailer

  default :from => 'test@ladderdigital.com'

  def send_signup_email#(user)
    #@user = user
    mail( :to => 'zenador15@gmail.com',
    :subject => 'It Works!!!' )
  end
end

