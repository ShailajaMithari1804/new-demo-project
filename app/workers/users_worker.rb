require 'sidekiq'
require 'sidekiq-scheduler'

class UsersWorker
  include Sidekiq::Worker

  def perform
    p "welcome user"
  end

end
