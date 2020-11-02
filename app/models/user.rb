class User < ApplicationRecord
   
  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end

end