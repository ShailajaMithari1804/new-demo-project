class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email
    @user = User.last
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: "Hello #{@user.name} Welcome to My Awesome Site")
  end
end
