require 'sidekiq'
require 'sidekiq-scheduler'

class WelcomeEmail
  include Sidekiq::Worker

  def perform
    UserMailer.welcome_email().deliver
  end
end
