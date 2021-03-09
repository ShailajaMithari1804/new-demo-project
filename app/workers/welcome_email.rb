require 'sidekiq'
require 'sidekiq-scheduler'

class WelcomeEmail
  include Sidekiq::Worker

  def run
    @user = user.last

    mail to: @user.email
  end
end