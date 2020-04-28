class CustomerMailer < ApplicationMailer

  def periodic_notification(user, message)
    @user = user
    @message = message
  end
end
