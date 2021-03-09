require 'sidekiq'
require 'sidekiq-scheduler'

class UsersWorker
  include Sidekiq::Worker

  # def perform(name, sec)
  #    p "Hey #{name}, going to  slip #{sec}"

  #    sleep(sec)
  #    p "It was quite long nap."
  # end

  def perform
     p "welcome user"
  end

end
