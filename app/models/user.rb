class User < ApplicationRecord
	
  has_one_attached :profile_image  
  validates_presence_of :name  #name can't be blank
  validates_presence_of :email #email can't be blank
  validates :name, length: {minimum: 2} 
end

